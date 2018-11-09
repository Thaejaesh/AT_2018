/*
Copyright by Henry Ko and Nicola Nicolici
Developed for the Digital Systems Design course (COE3DQ4)
Department of Electrical and Computer Engineering
McMaster University
Ontario, Canada
*/

`timescale 1ns/100ps
`default_nettype none

`include "define_state.h"

//Module responsible for coordinating the FIR and RGB Converter
module Milestone_1 (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                  // 50 MHz clock
		
		input  logic            Resetn, 
		output logic   [17:0]   SRAM_address,
		output logic   [15:0]   SRAM_write_data,
		output logic            SRAM_we_n,
		input  logic   [15:0] 	SRAM_read_data,
		
		output logic M1_done,
		input  logic M1_start

);


M1_state_type state;

///////FIR 
logic resetn;
logic enable_U;
logic enable_V;
logic read_U_0;
logic read_V_0;
logic line_start;
logic line_end;
//output logic FIR_enable;
logic cycle;
logic common_case;
logic common_U;

////////RGB Converter
logic signed [31:0] U_RGB;
logic signed [31:0] V_RGB;
logic signed [31:0] Y_RGB;
logic enable_RGB;


//For FIR 
logic [17:0] Y_address, Y_compare_address;
logic [17:0] U_address;
logic [17:0] V_address;
logic signed [31:0] even_U;
logic signed [31:0] even_V;
logic signed [31:0] FIR_BUFF_U; 
logic signed [31:0] FIR_BUFF_V;

//For RGB Conversion
//logic enable_RGB;
logic [17:0] RGB_address;
logic signed [31:0] Y_buff;
//logic signed [31:0] R, G, B;
logic unsigned [7:0] R,G,B;
logic unsigned [7:0] R2,G2,B2;
logic unsigned [7:0] B_out_buffer;


//Finite Impulse Response (FIR) unit
FIR FIR_unit (
	.CLOCK_50_I(CLOCK_50_I),
	.resetn(resetn),
	.enable_U(enable_U),
	.enable_V(enable_V),
	.read_U_0(read_U_0),
	.read_V_0(read_V_0),
	
	.cycle(cycle),
	.common_U(common_U),
	
	.FIR_BUFF_U(FIR_BUFF_U),
	.FIR_BUFF_V(FIR_BUFF_V),
	.even_U(even_U),
	.even_V(even_V),
	
	.line_end(line_end),
	.line_start(line_start),
	.SRAM_read_data(SRAM_read_data)

);

//RGB Conversion unit
RGB_Converter RGB_unit(
	//To RGB Converter
	.CLOCK_50_I(CLOCK_50_I),
	.resetn(resetn),
	.enable_RGB(enable_RGB),
	.U_in_RGB(U_RGB),
	.V_in_RGB(V_RGB),
	.Y_in_RGB(Y_RGB),
	
	//From RGB Converter
	.R_buff(R),
	.G_buff(G),
	.B_buff(B),
	
	.R_buffer(R2),
	.G_buffer(G2),
	.B_buffer(B2)

);



always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (resetn == 1'b0) begin
		state <= S_M1_IDLE;				
		
		SRAM_we_n <= 1'b1;
		SRAM_write_data <= 16'd0;
		
		line_start <= 1'b1;
		line_end <= 1'b0;
		
		cycle <= 1'b0;
		common_case <= 1'b0;
		common_U <= 1'b0;
		
		M1_done <= 1'b0;
		
		Y_address <= 18'd0;
		Y_compare_address <= 18'd0;
		U_address <= 18'd38400;
		V_address <= 18'd57600;
		RGB_address <= 18'd146944;
		
		B_out_buffer <= 8'b0;
		
		SRAM_address <= 18'd38400;//Start by reading first U value U0/1
	end else begin
		$write("\n\n\n\nState %s\n", state);
		$write("\t Y Location %d\n", Y_address);
		$write("\t Write enable   %d\n", SRAM_we_n);
		$write("\t Write data %h\n", SRAM_write_data); 
		$write("\t SRAM Read  %h\n\n", SRAM_read_data);
		$write("\t SRAM address %d\n\n", SRAM_address);
		$write("\t cycle %d\n\n", cycle);
		$write("\t common_case %d\n\n", common_case);
		
		
		case (state)
		S_M1_IDLE	: begin
			if (M1_start) begin
				state <= S_M1_START;
				SRAM_we_n <= 1'b1;
				SRAM_write_data <= 16'd0;
				
				line_start <= 1'b1;
				line_end <= 1'b0;
				
				cycle <= 1'b0;
				common_case <= 1'b0;
				common_U <= 1'b0;
				
				M1_done <= 1'b0;
				
				SRAM_address <= 18'd38400;
				Y_address <= 18'd0;
				Y_compare_address <= 18'd0;
				U_address <= 18'd38400;
				V_address <= 18'd57600;
				RGB_address <= 18'd146944;				
			end
		end
		S_M1_START: begin
			SRAM_we_n = 1'b1; //Disable writing to SRAM
			
			SRAM_address <= V_address; //Set address to first V value V0/1
			U_address <= U_address + 18'd1;
			V_address <= V_address + 18'd1;
			state <= S_START_LINE_0;
			
		end
		S_START_LINE_0: begin
			SRAM_address <= U_address; //U2/3
			U_address <= U_address + 18'd1;
			state <= S_START_LINE_1;
		end
		S_START_LINE_1: begin
			SRAM_address <= V_address;//V2/3
			V_address <= V_address + 18'd1;
			read_U_0 <= 1'b1; //Load U0 three times into U_SReg in the next clock cycle and U1 once
			state <= S_START_LINE_2;
		end
		S_START_LINE_2: begin
			//Do not send address to read from for delay3
			read_U_0 <= 1'b0;
			read_V_0 <= 1'b1; // Load V0 three times into V_SReg in the next clock cycle and V1 once
			state <= S_START_LINE_3;
		end
		S_START_LINE_3: begin
			//Do not send address to read from for delay4
			
			enable_U <= 1'b1; // Load U2/3 into U_SReg in the next clock cycle
			read_V_0 <= 1'b0;
			state <= S_START_LINE_4;
		end
		S_START_LINE_4: begin
			SRAM_address <= U_address; //U4/5
			U_address <= U_address;
			
			enable_U <= 1'b0;
			enable_V <= 1'b1;// Load V2/3 into V_SReg in the next clock cycle
			
			
			state <= S_START_LINE_5;
		end
		S_START_LINE_5: begin
			
			SRAM_address <= Y_address; //Y0/1
			Y_address <= Y_address + 18'd1;
			enable_V <= 1'b0;
			
			state <= S_START_LINE_6;
		end
		S_START_LINE_6: begin
			SRAM_address <= V_address; // V4/5
			V_address <= V_address + 18'd1;
			
			line_start <= 1'b0; // Signal to begin FIR calculations
			state <= S_START_LINE_7;
		end
		S_START_LINE_7: begin	
			//SRAM_address <= V_address; // V4/5
			//V_address <= V_address + 18'd1;
			enable_U <= 1'b1; // Read U4/5 next cycle, Load U4 into SReg and buffer U5
			common_U <= 1'b1;
			state <= S_START_LINE_8;
		end
		S_START_LINE_8: begin	
			//SRAM_address <= Y_address;
			//Y_address <= Y_address + 18'd1;
			//enable_U <= 1'b1; // Read U4/5 next cycle, Load U4 into SReg and buffer U5
			enable_U <= 1'b0;
			common_U <= 1'b0;
			//enable_V <= 1'b0;				
			state <= S_START_LINE_9;
		
		end
		S_START_LINE_9: begin
			//enable_U <= 1'b0;
			Y_RGB <= {24'd0,SRAM_read_data[15:8]};
			Y_buff <= {24'd0,SRAM_read_data[7:0]};
			U_RGB <= even_U;
			V_RGB <= even_V;
			enable_RGB <= 1'b1;
			SRAM_we_n <= 1'b1; //Don't write on first RUN_0 of the line	
			state <= S_RUN_0;
			$write("#########################################################################\n\n");		
		end

		////////////////////////////////////////////////////////////
		
		S_RUN_0: begin
			if (common_case)
				enable_V <= 1'b0;
			if(~cycle) begin
				//enable_V <= 1'b1;
			end else begin
				SRAM_address <= U_address;
				U_address <= U_address + 18'd1;
			end
			
			SRAM_we_n <= 1'b1;
			state <= S_RUN_1;
			$write("\t R %h  \t %h \n",  R, R2);
			$write("\t G %h  \t %h \n",  G, G2);
			$write("\t B %h  \t %h \n",  B, B2);			
		end
		
		S_RUN_1: begin
			
			//enable_V <= 1'b0;
			//if(~cycle) begin
				
				
			//end else begin
			SRAM_address <= Y_address;
			Y_address <= Y_address + 18'd1;
			//end	
			//enable_V <= 1'b0;
			state <= S_RUN_2;
		end
		
		S_RUN_2: begin
			
			
			
			//SRAM_we_n <= 1'b0; //enable writing for next cycle
			//SRAM_address <= RGB_address;
			//RGB_address <= RGB_address + 18'd1;
			//SRAM_write_data <= {R,G};
			
			if (~cycle) begin
				
			end else begin
				SRAM_address <= V_address;
				V_address <= V_address + 18'd1;
				$write("\n\t V_address %h \t SRAM_address %h \t\n", V_address, SRAM_address);
			end			
		
			Y_RGB <= Y_buff;
			U_RGB <= FIR_BUFF_U;
			V_RGB <= FIR_BUFF_V;
			state <= S_RUN_3;
		end
		
		S_RUN_3: begin
			//SRAM_we_n <= 1'b1;
			enable_U <= 1'b1;
			$write("\n\t V_address %h \t SRAM_address %h \t\n", V_address, SRAM_address);
			SRAM_we_n <= 1'b0; //enable writing for next cycle
			SRAM_address <= RGB_address;
			RGB_address <= RGB_address + 18'd1;
			SRAM_write_data <= {R,G};
			B_out_buffer <= B;
			//SRAM_write_data <= (~cycle)?{R,G}:{(R - 8'd1),(G - 8'd1)};
			$write("\t R %h  \t %h \n",  R, R);
			$write("\t G %h  \t %h \n",  G, G);
			$write("\t B %h  \t %h \n",  B, B);
			state <= S_RUN_4;
		end
		
		S_RUN_4: begin
			SRAM_we_n <= 1'b0;
			enable_U <= 1'b0;
			//enable_U <= 1'b1;
			SRAM_address <= RGB_address;
			RGB_address <= RGB_address + 18'd1;
			SRAM_write_data <= {B,R2};
			//SRAM_write_data <= (cycle && common_case)?{B,R}:{B, R2};
/* 			
			if (~cycle) begin
				if (~common_case) begin
					SRAM_write_data <= {B,R};
				end else begin
					SRAM_write_data <= {B,B2};
				end
			end else begin
				if (common_case) begin
					SRAM_write_data <= {B,B2};
				end
			end */
			
			state <= S_RUN_5;
			$write("\t R %h  \t %h \n",  R, R2);
			$write("\t G %h  \t %h \n",  G, G2);
			$write("\t B %h  \t %h \n",  B, B2);			
		end
		
		S_RUN_5: begin
			//enable_U <= 1'b0;
			if (common_case) begin
				enable_V <= 1'b1;
			end else begin
				common_case <= 1'b1;
			end
			SRAM_address <= RGB_address;
			SRAM_write_data <= {G,B};
/* 			if (~cycle) begin
				if (~common_case) begin
					SRAM_write_data <= {G,B};
				end else begin
					SRAM_write_data <= {G2,B2};
				end
			end else begin
				if (common_case) begin
					SRAM_write_data <= {G,B};
				end
			end */			
			
			//SRAM_write_data <= (cycle)?{G,B}:{G2,B2};
			
			RGB_address <= RGB_address + 18'd1;	
			Y_RGB <= {24'd0,SRAM_read_data[15:8]};
			Y_buff <= {24'd0, SRAM_read_data[7:0]};
			U_RGB <= even_U;
			V_RGB <= even_V;
			$write("\t R %h  \t %h \n",  R, R2);
			$write("\t G %h  \t %h \n",  G, G2);
			$write("\t B %h  \t %h \n",  B, B2);			
			
			if ( Y_address - Y_compare_address == 18'd157 ) begin 
				state <= S_END_LINE_0;
				
				line_end <= 1'b1;
			end else begin
				state <= S_RUN_0;
			end
			
			cycle <= ~cycle;
			$write("#########################################################################\n\n");		
			$write("#########################################################################\n\n");		
			$write("#########################################################################\n\n");		
		end
		
		////////////////////////////////////////////////////////////
		
		//End line cases are similar to common cases but not reading
		S_END_LINE_0: begin
			enable_V <= 1'b1;
			SRAM_we_n <= 1'b1;
			state <= S_END_LINE_1;
		end
		
		S_END_LINE_1: begin
			SRAM_address <= Y_address; 
			Y_address <= Y_address + 18'd1;
			enable_V <= 1'b0;
			
			state <= S_END_LINE_2;
		end
		
		S_END_LINE_2: begin
			
			//SRAM_we_n <= 1'b0; //Enable writing for next cycle
			//SRAM_write_data <= {R, G};
		
			Y_RGB <= Y_buff;
			U_RGB <= FIR_BUFF_U;
			V_RGB <= FIR_BUFF_V;
			
			
			state <= S_END_LINE_3;
		end
		
		S_END_LINE_3: begin
			
			SRAM_we_n <= 1'b0; // Disable writing
			SRAM_write_data <= {R, G};
			enable_U <= 1'b1;
			state <= S_END_LINE_4;
		
		end
		
		S_END_LINE_4: begin
			enable_U <= 1'b0;
			
			SRAM_we_n <= 1'b0; //Enable writing
			SRAM_address <= RGB_address;
			RGB_address <= RGB_address + 18'd1;
			SRAM_write_data <= {B, R};
			state <= S_END_LINE_5;
		end
		
		S_END_LINE_5: begin
		
			SRAM_we_n <= 1'b0; //Enable writing
			SRAM_address <= RGB_address;
			RGB_address <= RGB_address + 18'd1;
			SRAM_write_data <= {G, B};
			
			if ( Y_address == 18'd38399) begin
				state <= S_M1_IDLE;
				M1_done <= 1'b1;
			end else if ( Y_address - Y_compare_address == 18'd159 ) begin
				Y_compare_address <= Y_compare_address + 18'd160;
				state <= S_M1_START;
			end else begin
				state <= S_END_LINE_0;
			end
		
		
		end
		
		default: state <= S_M1_IDLE;
		endcase
	end
end



endmodule

