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

//Module responsible for calculating matrix T and S 
module MATRIX_MULT (
		/////// board clocks                      ////////////
		input  logic CLOCK_50_I,                  // 50 MHz clock		
		input  logic Resetn, 

		input  logic CT_start,
		output logic CT_done,
		
		input  logic CS_start,
		output logic CS_done,
		
		input  logic MM_start,
		output logic MM_done,
		
		input  logic [31:0] read_data_R0 	[1:0],
		output logic [31:0] write_data_R0 	[1:0],
		output logic [6:0]  rw_address_R0 	[1:0],
		output logic 		write_enable_R0 [1:0],
		
		input  logic [31:0] read_data_R1	[1:0],		
		output logic [31:0] write_data_R1 	[1:0],
		output logic [6:0]  rw_address_R1 	[1:0],
		output logic 		write_enable_R1 [1:0],
		
		input  logic [31:0] read_data_R2 	[1:0],
		output logic [6:0]  read_address_R2 [1:0]
		//No writing to R2 //Contains C values

);


MATRIX_MULT_state_type state;

logic [7:0]  god_counter; 
logic 		 count_enable;

logic [6:0]  A_counter; //S'/T
logic [6:0]  C_counter; //C/Ct
logic [6:0]  R_counter; //Result counter T/S
logic 		 C_T_S;		//Determine if calculating T or S

logic [31:0] mult_in_C	   [1:0];
logic [31:0] mult_in_T_S   [1:0];
logic [63:0] mult_out_long [3:0];
logic [31:0] mult_out 	   [3:0];

assign 
	mult_out_long[0] = mult_in_C[0] * mult_in_T_S[0],
	mult_out_long[1] = mult_in_C[0] * mult_in_T_S[1],
	mult_out_long[2] = mult_in_C[1] * mult_in_T_S[0],
	mult_out_long[3] = mult_in_C[1] * mult_in_T_S[1];

assign
	mult_out[0] = mult_out_long[0][31:0],
	mult_out[1] = mult_out_long[1][31:0],
	mult_out[2] = mult_out_long[2][31:0],
	mult_out[3] = mult_out_long[3][31:0];

always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (~Resetn) begin
		
		god_counter <= 9'd0;
	
	end else begin
		
		if (count_enable) begin
			god_counter <= god_counter + 9'd1;
		end
	end

end

//Locations to read/write to memory locations from/to
assign A_counter = { god_counter[7], god_counter[6:4] , god_counter[1:0] }; //read from either top half or bottom half depending on state
assign C_counter = { 2'd0, god_counter[1:0] , god_counter[3:2] }; //reading from first quarter of the memory
assign R_counter = { 1'b1, god_counter[6:2] };
assign C_T_S 	 = god_counter[7]; 


assign read_address_R2[0] = {1'b0, god_counter[1:0] , 1'b0, god_counter[3:2]};
assign read_address_R2[1] = {1'b0, god_counter[1:0] , 1'b1, god_counter[3:2]};



always_comb begin
	if (~C_T_S) begin
		rw_address_R0[0]   = { god_counter[7] , god_counter[6:4], god_counter[1:0], 1'b0};
		rw_address_R0[1]   = { god_counter[7] , god_counter[6:4], god_counter[1:0], 1'b1);
		write_enable_R0[0] = 1'b0;
		write_enable_R0[1] = 1'b0;
		
		rw_address_R1[0]   = { 
		rw_address_R1[1]   = {  
	end else begin
		
		
	
	end
end

//CT 
/*
*Reading from:
*	R2: top quarter
*	R0: top half
*
*Writing to:
*	R1: bottom half
*/
//CS 
/*
*Reading from:
*	R2: top quarter
*	R1: bottom half
*
*Writing to:
*	R0: bottom half
*/


always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (~Resetn) begin
	
		count_enable <= 1'b0;
		state <= S_MM_IDLE;				
	end else begin

		case (state)
		
		S_MM_START: begin
			count_enable <= 1'b0;
			state <= S_MM_IDLE;
		end
		
		S_MM_IDLE: begin
			
			
			count_enable <= 1'b1;
			
			if (C_T_S) begin
				state <= S_MM_CS;
			end
		end
		
		S_MM_CS: begin 
			
			
			
		end		
		
		S_MM_CT: begin
		
		
		end
		
		default: state <= S_MM_IDLE;
		endcase
	end
end



endmodule

