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

		input logic resetn, 
		input logic line_start,
		input logic line_end,
		input logic common_case,
		
		input logic enable_U,
		input logic enable_V,
		input logic load_U_buffer,
		input logic load_V_buffer,
		
		input logic read_U_0,
		input logic read_V_0,
		
		input logic clear_SReg,

		//input logic FIR_enable,
		input logic [15:0] SRAM_read_data,
		input logic cycle,

		
		output logic  [31:0] FIR_BUFF_U,
		output logic  [31:0] FIR_BUFF_V,
		output logic  [31:0] even_U,
		output logic  [31:0] even_V
		
);

//Shift Register to hold surrounding values
logic  [7:0] U_SReg [5:0];
logic  [7:0] V_SReg [5:0];
logic  [31:0] current_sum;
logic  [31:0] current_product;
logic  [63:0] current_product_long;
logic  [31:0] constant;
logic  [31:0] coeff;

logic [7:0] U_in_buff;
logic [7:0] U_in_buffer [1:0];
logic [7:0] V_in_buffer [1:0];
logic [7:0] V_in_buff;
//Accumulator value
logic  [31:0] FIR_accum;
logic  [31:0] FIR_accum_before;

logic [1:0] sel_mul_in;

logic U_V; //Determine which matrix to interpolate //U = 0 V = 1
logic end_of_memory; //Determine end of values to read

//Even values to send for RGB calculations
assign even_U = {24'd0,U_SReg[4]};
assign even_V = {24'd0,V_SReg[3]};

//Multiplexer determining the multiplication coefficient
always_comb begin 
	//If U_V == 0: use values from U
	//If U_V == 1: use values from V
	case (sel_mul_in)
		2'b01: begin
				coeff = 32'd21;
				current_sum = (~U_V)? ({24'd0,U_SReg[0]} + {24'd0,U_SReg[5]}) : ({24'd0,V_SReg[0]} + {24'd0,V_SReg[5]}) ;		
				//////$write("\n\n\n\n Calibrate FIR \n\n\n\n");
			end
		2'b10: begin
				coeff = 32'd52;
				current_sum = (~U_V)? ({24'd0,U_SReg[1]} + {24'd0,U_SReg[4]}) : ({24'd0,V_SReg[1]} + {24'd0,V_SReg[4]}) ;
			end
		2'b11: begin 
				coeff = 32'd159;
				current_sum = (~U_V)? ({24'd0,U_SReg[2]} + {24'd0,U_SReg[3]}) : ({24'd0,V_SReg[2]} + {24'd0,V_SReg[3]}) ;
				//current_sum = (~U_V)? ({24'd0,U_SReg[4]} + {24'd0,U_SReg[3]}) : ({24'd0,V_SReg[4]} + {24'd0,V_SReg[3]}) ;
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
			//////$write("\t sel_mul_in %d \n", sel_mul_in);
			//////$write("\t U_V %d\n",U_V);	
			
			//////$write("\t U buff %d\n",FIR_BUFF_U);
			//////$write("\t V buff %d\n",FIR_BUFF_V);
			//////$write("\t accumulator %d\n",FIR_accum);
			//////$write("\t product %d\n", current_product);
			
			/* ////$write("\n\n\t U [5] %d \t\t V [5] %d\n", 	U_SReg[5], V_SReg[5]);
			////$write("\t U [4] %d \t\t V [4] %d\n",		U_SReg[4], V_SReg[4]);
			////$write("\t U [3] %d \t\t V [3] %d\n",		U_SReg[3], V_SReg[3]);
			////$write("\t U [2] %d \t\t V [2] %d\n",		U_SReg[2], V_SReg[2]);
			////$write("\t U [1] %d \t\t V [1] %d\n",		U_SReg[1], V_SReg[1]);
			////$write("\t U [0] %d \t\t V [0] %d\n\n",		U_SReg[0], V_SReg[0]);	 */

	
			
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
						//////$write("FIR_BUFF_U");
					end else begin //In V' mode
						FIR_BUFF_V <= ({{8{(FIR_accum_before[31])}} , FIR_accum_before[31:8]});//8 << (FIR_accum + current_product + 32'd128); //Save accumulator value // Left shift to divide by 256
						//////$write("FIR_BUFF_V");
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


//Shift registers holding surrounding values for interpolation
always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (~resetn) begin
		//Clear shift register used to calculate U'
		U_SReg[0] <= 8'd0;// Fill register with zeros
		U_SReg[1] <= 8'd0;
		U_SReg[2] <= 8'd0;
		U_SReg[3] <= 8'd0;
		U_SReg[4] <= 8'd0;
		U_SReg[5] <= 8'd0;
		//U_SReg <= 0; //Fill register with zeros
		//U_Reg_full <= 1'b0; //Empty U register
		//Clear shift register used to calculate V'
		//V_SReg <= '0; 
		V_SReg[0] <= 8'd0;
		V_SReg[1] <= 8'd0;
		V_SReg[2] <= 8'd0;
		V_SReg[3] <= 8'd0;
		V_SReg[4] <= 8'd0;
		V_SReg[5] <= 8'd0;
		
		U_in_buffer[1] <= 8'b0;
		U_in_buffer[0] <= 8'b0;
		V_in_buffer[1] <= 8'b0;
		V_in_buffer[0] <= 8'b0;
		//V_Reg_full <= 1'b0; //Empty V register
	end else begin
		
		if (load_U_buffer) begin
			U_in_buffer[1] <= SRAM_read_data[15:8];
			U_in_buffer[0] <= SRAM_read_data[7:0];
		end 
		
		if (load_V_buffer) begin
			V_in_buffer[1] <= SRAM_read_data[15:8];
			V_in_buffer[0] <= SRAM_read_data[7:0];
		end
		
	
		if(line_start) begin //Do when starting a line

			
			//Parallel load border values to first 3 register elements
			if (read_U_0) begin
				//////$write("\n\n\t U Read %h\n", SRAM_read_data);
				U_SReg[0] <= SRAM_read_data[7:0];
				U_SReg[1] <= SRAM_read_data[15:8];
				U_SReg[2] <= SRAM_read_data[15:8];
				U_SReg[3] <= SRAM_read_data[15:8];
			end 
			if (read_V_0) begin
				//////$write("\n\n\t V Read %h\n", SRAM_read_data);
				V_SReg[0] <= SRAM_read_data[7:0];
				V_SReg[1] <= SRAM_read_data[15:8];
				V_SReg[2] <= SRAM_read_data[15:8];
				V_SReg[3] <= SRAM_read_data[15:8];
			end
			if (enable_U) begin //Add remaining data to shift registers
			//////$write("\n\n\t U Read %h\n", SRAM_read_data);
				U_SReg[0] <= SRAM_read_data[7:0]; //Add next value to U Shift Register
				U_SReg[1] <= SRAM_read_data[15:8];
				U_SReg[2] <= U_SReg[0];
				U_SReg[3] <= U_SReg[1];
				U_SReg[4] <= U_SReg[2];
				U_SReg[5] <= U_SReg[3];
			end else if (enable_V) begin
			//////$write("\n\n\t U Read %h\n", SRAM_read_data);
				V_SReg[0] <= SRAM_read_data[7:0]; //Add next value to V Shift Register
				V_SReg[1] <= SRAM_read_data[15:8];
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
			end
			if (enable_V) begin
				V_SReg[0] <= V_SReg[0]; //Keep adding end value to V Shift Register
				V_SReg[1] <= V_SReg[0];
				V_SReg[2] <= V_SReg[1];
				V_SReg[3] <= V_SReg[2];
				V_SReg[4] <= V_SReg[3];
				V_SReg[5] <= V_SReg[4];
			end				

		
		end else begin //Common case
			if (enable_U) begin //Add to shift registers	

				if (~cycle) begin				
					U_SReg[0] <= U_in_buffer[0];
				end else begin
					U_SReg[0] <= U_in_buffer[1];				
				end
							
				U_SReg[1] <= U_SReg[0];
				U_SReg[2] <= U_SReg[1];
				U_SReg[3] <= U_SReg[2];
				U_SReg[4] <= U_SReg[3];
				U_SReg[5] <= U_SReg[4];
			end

			if (enable_V) begin
				if (~cycle) begin
					V_SReg[0] <=  V_in_buffer[1];
				end else begin
					V_SReg[0] <= V_in_buffer[0];
				end
				
				V_SReg[1] <= V_SReg[0];
				V_SReg[2] <= V_SReg[1];
				V_SReg[3] <= V_SReg[2];
				V_SReg[4] <= V_SReg[3];
				V_SReg[5] <= V_SReg[4];
			end		
		end		
	
		if(clear_SReg) begin
		
		U_SReg[0] <= 8'd0;// Fill register with zeros
		U_SReg[1] <= 8'd0;
		U_SReg[2] <= 8'd0;
		U_SReg[3] <= 8'd0;
		U_SReg[4] <= 8'd0;
		U_SReg[5] <= 8'd0;	

		V_SReg[0] <= 8'd0;
		V_SReg[1] <= 8'd0;
		V_SReg[2] <= 8'd0;
		V_SReg[3] <= 8'd0;
		V_SReg[4] <= 8'd0;
		V_SReg[5] <= 8'd0;
		
		U_in_buffer[1] <= 8'b0;
		U_in_buffer[0] <= 8'b0;
		V_in_buffer[1] <= 8'b0;
		V_in_buffer[0] <= 8'b0;		
		
		end
	end
end


endmodule
