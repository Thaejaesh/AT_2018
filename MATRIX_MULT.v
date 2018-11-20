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
		
		output logic [31:0] CS_write_data,
		output logic [6:0]  CS_write_address,
		output logic 		CS_write_enable,
		
		
		output logic [31:0] CT_write_data,
		output logic [6:0]  CT_write_address,
		output logic 		CT_write_enable

);


MATRIX_MULT_state_type state;


always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (~Resetn) begin
		state <= S_M2_IDLE;				
		
		SRAM_we_n <= 1'b1;	
		SRAM_write_data <= 16'd0;
		
		common_case <= 1'b0;
		
		FS_done <= 1'b0;
		
		Y_address <= 18'd0;
		U_address <= 18'd38400;
		V_address <= 18'd57600;
	
		Base_address <= 18'd76800;
		SC <= 6'd0;
		CB <= 6'd0;
		RB <= 5'd0;
		C_END <= 6'd39;
		
		SRAM_address <= 18'd0;
	end else begin

		case (state)
		S_M2_IDLE	: begin
			if (M2_start) begin
				state <= S_M2_START;
				SRAM_we_n <= 1'b1;
				SRAM_write_data <= 16'd0;
				
				common_case <= 1'b0;
				
				M2_done <= 1'b0;
				
				SRAM_address <= 18'd76800;
				Y_address <= 18'd0;
				U_address <= 18'd38400;
				V_address <= 18'd57600;	
					
				Base_address <= 18'd76800;
				C_END <= 6'd39;
				SC <= 6'd1;
				CB <= 6'd0;
				RB <= 5'd0;				
							
			end
		end
		
		S_M2_START: begin
			
			state <= S_FS;
		end
		
		S_FS: begin
			
			//Address = 320*Row_Address + Col_Address
			
			SRAM_address <= {2'd0, RB, SC[5:3], 8'd0} + {4'd0, RB, SC[5:3], 6'd0} + {9'd0, CB, SC[2:0]} + Base_address;
			
			if (SC == 6'd63) begin //Counter Logic to determine Read/Write Addresses
				
				if (CB == C_END) begin //Change C_END depending on whether in Y or U/V
					CB <= 6'd0;
					if (RB == 5'd29) begin
						RB <= 5'd0;
						C_END <= 6'd19;
						
						if (Base_address == 18'd76800) begin
							Base_address <= 18'd153600;
						end else if (Base_address == 18'd153600) begin
							Base_address <= 18'd192000;
						end
						
					end else begin
						RB <= RB + 5'd1;
						
					end
				end else begin
					CB <= CB + 6'd1;
				end
				
				state <= S_CT; // Go to Compute T when all 64 values have been loaded in
				
				SC <= 6'd0;
			end else begin
				SC <= SC + 6'd1;
			end
		end
		
		S_CT: begin
		
		end
		
		S_CS: begin
		
		end
		
		S_WS: begin
		
		end
		
		
		default: state <= S_M2_IDLE;
		endcase
	end
end



endmodule

