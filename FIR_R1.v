/*
Copyright by Henry Ko and Nicola Nicolici
Developed for the Digital Systems Design course (COE3DQ4)
Department of Electrical and Computer Engineering
McMaster University
Ontario, Canada
*/

`timescale 1ns/100ps
`default_nettype none

//`include "define_state.h"

// This is the top module
// It connects the SRAM and VGA together
// It will first write RGB data of an image with 8x8 rectangles of size 40x30 pixels into the SRAM
// The VGA will then read the SRAM and display the image
module FIR (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                   // 50 MHz clock

		/////// Top level module
		input logic enable_U,
		input logic double_enable_U,
		input logic enable_V,
		input logic read_U_0,
		input logic read_V_0,
		input logic resetn, 
		input logic line_start,
		input logic line_end,
		input logic common_case,
		//input logic FIR_enable,
		input logic [15:0] SRAM_read_data,
		input logic cycle,
		input logic common_U,
		//output int U,
		//output int V,
		output logic signed [31:0] FIR_BUFF_U,
		output logic signed [31:0] FIR_BUFF_V,
		output logic signed [31:0] even_U,
		output logic signed [31:0] even_V
		
);

//Shift Register to hold surrounding values
logic signed [31:0] U_SReg [5:0];
logic signed [31:0] V_SReg [5:0];
logic signed [31:0] current_sum;
logic signed [31:0] current_product;
logic signed [63:0] current_product_long;
logic signed [31:0] constant;
logic signed [31:0] coeff;

logic [7:0] U_in_buff;
logic [7:0] U_in_buff2 [1:0];
logic [7:0] V_in_buff;
//Accumulator value
logic signed [31:0] FIR_accum;
logic signed [31:0] FIR_accum_before;

logic [1:0] sel_mul_in;
/* logic [8:0] j; //Column number 0->319 //Incremented in steps of 1
logic [16:0] i; //Row number 0->239*320 //Incremented in steps of 320
 */
//logic line_start; // Work as a disable
//logic line_end;
/* logic U_Reg_full;
logic V_Reg_full; */
logic U_V; //Determine which matrix to interpolate //U = 0 V = 1
logic end_of_memory; //Determine end of values to read



//Buffers to save outputs while next value is being calculated
/* always_ff @ (posedge CLOCK_50_I or negedge resetn) begin 
	if (~resetn) begin
		FIR_BUFF_U <= 32'd0;
		FIR_BUFF_V <= 32'd0;
	end else begin
		if (sel_mul_in == 2'b11) begin //At end of FIR calculations
			if (~U_V) begin //In U' mode
				FIR_BUFF_U <= {8'(FIR_accum_before[31]) , FIR_accum_before[31:8]}; //8 << (FIR_accum + current_product + 32'd128); //Save accumulator value // Left shift to divide by 256
			end else begin //In V' mode
				FIR_BUFF_V <= {8'(FIR_accum_before[31]) , FIR_accum_before[31:8]};//8 << (FIR_accum + current_product + 32'd128); //Save accumulator value // Left shift to divide by 256
			end
			$write("\t U buff %d\n",FIR_BUFF_U);
			$write("\t V buff %d\n",FIR_BUFF_V);
			
		end 
	end
end 
 */


//Multiplexer determining the multiplication coefficient
always_comb begin 
	//If U_V == 0: use values from U
	//If U_V == 1: use values from V
	case (sel_mul_in)
		2'b01: begin
				coeff = 32'd21;
				current_sum = (~U_V)? (U_SReg[0] + U_SReg[5]) : (V_SReg[0] + V_SReg[5]) ;		
				
			end
		2'b10: begin
				coeff = 32'd52;
				current_sum = (~U_V)? (U_SReg[1] + U_SReg[4]) : (V_SReg[1] + V_SReg[4]) ;
			end
		2'b11: begin 
				coeff = 32'd159;
				current_sum = (~U_V)? (U_SReg[2] + U_SReg[3]) : (V_SReg[2] + V_SReg[3]) ;
			end
	default: begin
			coeff = 32'd21;
			current_sum = 32'd0;
		end
	endcase
end

assign current_product_long = current_sum * coeff;// + constant;
assign current_product = current_product_long[31:0];

//Accumulator to store partial values throughout calculation cycle
always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (~resetn) begin
		FIR_accum <= 32'd128;
		sel_mul_in <= 2'b01;
		U_V <= 1'b0;
		FIR_BUFF_U <= 32'd0;
		FIR_BUFF_V <= 32'd0;
	end else begin
			$write("\t sel_mul_in %d \n", sel_mul_in);
			$write("\t U_V %d\n",U_V);	
			
			$write("\t U buff %d\n",FIR_BUFF_U);
			$write("\t V buff %d\n",FIR_BUFF_V);
			//$write("\t accumulator %d\n",FIR_accum);
			//$write("\t product %d\n", current_product);
			
							$write("\n\n\t U [5] %d \t\t V [5] %d\n", U_SReg[5], V_SReg[5]);
							$write("\t U [4] %d \t\t V [4] %d\n",U_SReg[4], V_SReg[4]);
							$write("\t U [3] %d \t\t V [3] %d\n",U_SReg[3], V_SReg[3]);
							$write("\t U [2] %d \t\t V [2] %d\n",U_SReg[2], V_SReg[2]);
							$write("\t U [1] %d \t\t V [1] %d\n",U_SReg[1], V_SReg[1]);
							$write("\t U [0] %d \t\t V [0] %d\n\n",U_SReg[0], V_SReg[0]);	


							/* $write("\t V [5] %d\n", V_SReg[5]);
							$write("\t V [4] %d\n", V_SReg[4]);
							$write("\t V [3] %d\n", V_SReg[3]);
							$write("\t V [2] %d\n", V_SReg[2]);
							$write("\t V [1] %d\n", V_SReg[1]);
							$write("\t V [0] %d\n\n\n",V_SReg[0]);	 */		
			
		case (sel_mul_in) 
			2'b01: begin
				FIR_accum <= current_product + 32'd128; // 159*((j-5)+(j+5)) 
				if (~line_start) sel_mul_in <= 2'b10;

			end
			2'b10: begin
				FIR_accum <=  FIR_accum - current_product;// -56*((j-3)+(j+3))
				if (~line_start) sel_mul_in <= 2'b11;
			end
			2'b11: begin
				FIR_accum <= FIR_accum + current_product;// + 32'd128; // 21*((j-1)+(j+1)) //+ 128
				//FIR_accum <= 32'd128;
				if (~line_start) begin
					sel_mul_in <= 2'b01;
					U_V <= ~U_V;						
				
				
					if (~U_V) begin //In U' mode 
						FIR_BUFF_U <= ({{8{(FIR_accum_before[31])}} , FIR_accum_before[31:8]}); //8 << (FIR_accum + current_product + 32'd128); //Save accumulator value // Left shift to divide by 256
					end else begin //In V' mode
						FIR_BUFF_V <= ({{8{(FIR_accum_before[31])}} , FIR_accum_before[31:8]});//8 << (FIR_accum + current_product + 32'd128); //Save accumulator value // Left shift to divide by 256
					end
					
				end
			end
			default: begin 
				FIR_BUFF_U <= 32'd0;
				FIR_BUFF_V <= 32'd0;			
				FIR_accum <= 32'd0;
				sel_mul_in <= 2'b01;
				U_V <= 1'b0;
			end
		endcase
	end
end
assign FIR_accum_before = FIR_accum + current_product;// + 32'd128;

//Sel_mul_in is modulo 3 counter going from 01 to 11

/* always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (~resetn) begin
		sel_mul_in <= 2'b01;
		U_V <= 1'b0; // Start off with loading U registers
	end else begin
		if ( sel_mul_in == 2'b11) begin
			sel_mul_in <= 2'b01; // Reset to 01
			U_V <= ~U_V;
		end else begin
			if (~line_start) //Do not increment at start of a line
				sel_mul_in <= sel_mul_in + 2'b01; 
				$write("\t sel_mul_in %d \n", sel_mul_in);
				$write("\t U_V %d\n",U_V);
		end	
	end	
end */

//Shift registers holding surrounding values for interpolation
always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (~resetn) begin
		//Clear shift register used to calculate U'
		U_SReg[0] <= 32'd0;// Fill register with zeros
		U_SReg[1] <= 32'd0;
		U_SReg[2] <= 32'd0;
		U_SReg[3] <= 32'd0;
		U_SReg[4] <= 32'd0;
		U_SReg[5] <= 32'd0;
		//U_SReg <= 0; //Fill register with zeros
		//U_Reg_full <= 1'b0; //Empty U register
		//Clear shift register used to calculate V'
		//V_SReg <= '0; 
		V_SReg[0] <= 32'd0;
		V_SReg[1] <= 32'd0;
		V_SReg[2] <= 32'd0;
		V_SReg[3] <= 32'd0;
		V_SReg[4] <= 32'd0;
		V_SReg[5] <= 32'd0;
		
		U_in_buff2[1] <= 8'b0;
		U_in_buff2[0] <= 8'b0;
		//V_Reg_full <= 1'b0; //Empty V register
	end else begin
		///*		
		if (double_enable_U) begin
			$write("\n\n\t U Read %h\n", SRAM_read_data);	
			$write("Loading U buffers");
			U_in_buff2[1] <= SRAM_read_data[15:8];
			U_in_buff2[0] <= SRAM_read_data[7:0];
			$write("\n\n Buffer_1 \t %d \t %h\n", SRAM_read_data[15:8],SRAM_read_data[15:8]);
			$write("\n\n Buffer_2 \t %d \t %h\n", SRAM_read_data[7:0],SRAM_read_data[7:0]);
			
		end 
		//*/		
	
		if(line_start) begin //Do when starting a line
			
			//Parallel load border values to first 3 register elements
			if (read_U_0) begin
				//$write("\n\n\t U Read %h\n", SRAM_read_data);
				U_SReg[0] <= {24'd0,SRAM_read_data[7:0]};
				U_SReg[1] <= {24'd0,SRAM_read_data[15:8]};
				U_SReg[2] <= {24'd0,SRAM_read_data[15:8]};
				U_SReg[3] <= {24'd0,SRAM_read_data[15:8]};
			end 
			if (read_V_0) begin
				$write("\n\n\t V Read %h\n", SRAM_read_data);
				V_SReg[0] <= {24'd0,SRAM_read_data[7:0]};
				V_SReg[1] <= {24'd0,SRAM_read_data[15:8]};
				V_SReg[2] <= {24'd0,SRAM_read_data[15:8]};
				V_SReg[3] <= {24'd0,SRAM_read_data[15:8]};
			end
			if (enable_U) begin //Add remaining data to shift registers
			$write("\n\n\t U Read %h\n", SRAM_read_data);
				U_SReg[0] <= {24'd0,SRAM_read_data[15:8]}; //Add next value to U Shift Register
				U_SReg[1] <= {24'd0,SRAM_read_data[7:0]};
				U_SReg[2] <= U_SReg[0];
				U_SReg[3] <= U_SReg[1];
				U_SReg[4] <= U_SReg[2];
				U_SReg[5] <= U_SReg[3];
			end else if (enable_V) begin
			$write("\n\n\t U Read %h\n", SRAM_read_data);
				V_SReg[0] <= {24'd0,SRAM_read_data[15:8]}; //Add next value to V Shift Register
				V_SReg[1] <= {24'd0,SRAM_read_data[7:0]};
				V_SReg[2] <= V_SReg[0];
				V_SReg[3] <= V_SReg[1];
				V_SReg[4] <= V_SReg[2];
				V_SReg[5] <= V_SReg[3];
			end
			
		end  else if (line_end) begin // End of a line
			if (enable_U) begin //Funnel back final value to shift registers
				U_SReg[0] <= U_SReg[0]; //Keep adding end value to U Shift Register
				U_SReg[1] <= U_SReg[0];
				U_SReg[2] <= U_SReg[1];
				U_SReg[3] <= U_SReg[2];
				U_SReg[4] <= U_SReg[3];
				U_SReg[5] <= U_SReg[4];
			end else if (enable_V) begin
				V_SReg[0] <= U_SReg[0]; //Keep adding end value to V Shift Register
				V_SReg[1] <= V_SReg[0];
				V_SReg[2] <= V_SReg[1];
				V_SReg[3] <= V_SReg[2];
				V_SReg[4] <= V_SReg[3];
				V_SReg[5] <= V_SReg[4];
			end				

		
		end else begin //Common case
			if (enable_U) begin //Add to shift registers
/* 				$write("\n\n\t U Read %h\n", SRAM_read_data);
					
				$write("*******************************************************************\n\n");
				$write("U in buff %h \n\n", U_in_buff);
				$write("SRAM %h \n\n", SRAM_read_data);
				$write("*******************************************************************\n\n");	 */			
				if ( common_U ) begin
					if (~cycle) begin
						U_SReg[0] <= {24'd0,SRAM_read_data[15:8]}; //Add next value to U Shift Register
						U_in_buff <= SRAM_read_data[7:0];
						
						$write("U in buff %h \n\n", U_in_buff2[1]);
						$write("U in buff %h \n\n", U_in_buff2[0]);
					end else begin 
						U_SReg[0] <= {24'd0, U_in_buff};
						
					end
				end else begin
					if (cycle) begin
					
						//U_SReg[0] <= {24'd0,SRAM_read_data[15:8]}; //Add next value to U Shift Register
						U_in_buff <= SRAM_read_data[7:0];
						U_SReg[0] <= {24'd0, U_in_buff2[1]};
					end else begin 
						//U_SReg[0] <= {24'd0, U_in_buff};
						U_SReg[0] <= {24'd0, U_in_buff2[0]};
					end				
				end
				
				

				
				U_SReg[1] <= U_SReg[0];
				U_SReg[2] <= U_SReg[1];
				U_SReg[3] <= U_SReg[2];
				U_SReg[4] <= U_SReg[3];
				U_SReg[5] <= U_SReg[4];
			end else if (enable_V) begin
			$write("\n\n\t V Read %h\n", SRAM_read_data);
				if (~cycle) begin
					V_SReg[0] <= {24'd0,SRAM_read_data[15:8]}; //Add next value to V Shift Register
					V_in_buff <= SRAM_read_data[7:0];
				end else begin
					V_SReg[0] <= {24'd0, V_in_buff};
				end
				
				V_SReg[1] <= V_SReg[0];
				V_SReg[2] <= V_SReg[1];
				V_SReg[3] <= V_SReg[2];
				V_SReg[4] <= V_SReg[3];
				V_SReg[5] <= V_SReg[4];
			end		
		
		end
		
		
	end
end

assign even_U = U_SReg[4];
assign even_V = V_SReg[3];


endmodule
