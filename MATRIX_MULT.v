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
		
		output logic [31:0] CS_write_data,
		output logic [6:0]  CS_write_address,
		output logic 		CS_write_enable,
		
		
		output logic [31:0] CT_write_data,
		output logic [6:0]  CT_write_address,
		output logic 		CT_write_enable

);


MATRIX_MULT_state_type state;

//logic [8:0]  god_counter;
// | A | BBB | CCC | DDD |
// D <= position across row 
// C <= position down column S'/T
// B <= position down column Ct/C
// A <= CS or CT
logic [8:0]  god_counter; 
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
		
		god_counter <= 10'd0;
	
	end else begin
		
		if (count_enable) begin
			god_counter <= god_counter + 10'd1;
		end
	end

end

assign A_counter = { 1'd1, god_counter[7:5] , god_counter[2:0] };
assign C_counter = { 2'd0, god_counter[2:0] , god_counter[4:3] };
assign R_counter = { 1'b1, god_counter[7:3] };
assign C_T_S 	 = god_counter[8]; 

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
			
			state <= S_MM_CS;
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

