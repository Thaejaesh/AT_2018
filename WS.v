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
module WS (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                  // 50 MHz clock
		
		input  logic            Resetn, 
		output logic   [17:0]   SRAM_address,
		output logic 			SRAM_we_n,
		output  logic   [15:0] 	SRAM_write_data,
		 
		
		output logic WS_done,
		input  logic WS_start

);


WS_state_type state;
 

logic [4:0]  SC; //SC 0 -> 31 //Add 0 & 1 to read two values
logic [5:0]  CB, C_END;
logic [4:0]  RB;
logic [17:0] Y_address, U_address, V_address, Base_address;

logic [8:0]  read_address;
logic [17:0] write_address;
logic [7:0]  write_data_b;
logic 		 write_enable_b;
logic [7:0]  read_data_a;
logic [7:0]  read_data_b;


always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (resetn == 1'b0) begin
		state <= S_M2_IDLE;				
		
		SRAM_we_n <= 1'b1;	
		SRAM_write_data <= 16'd0;
		
		WS_done <= 1'b0;
		
		SRAM_address <= 18'd0;
		
		Base_address <= 18'd0;
		
		Y_address <= 18'd0;
		U_address <= 18'd38400;
		V_address <= 18'd57600;
	
	end else begin

		case (state)
		S_WS_START	: begin
			
			SRAM_we_n <= 1'b1;
			SRAM_write_data <= 16'd0;

			WS_done <= 1'b0;
			
			SRAM_address <= 18'd0;
			
			Base_address <= 18'd0;
			
			Y_address <= 18'd0;
			U_address <= 18'd38400;
			V_address <= 18'd57600;							
			
			state <= S_WS_IDLE;
		end
		
		S_WS_IDLE: begin
			if (WS_start) begin
				WS_done <= 1'b0;
				state <= S_WS_LI_1;
			end
		end
		
		S_WS_LI_1: begin
			
			state <= S_WS_LI_2;
		end
		
		S_WS_LI_2: begin
			
			state <= S_WS_COMMON_CASE;
		end


		
		
		default: state <= S_WS_IDLE;
		endcase
	end
end



endmodule

