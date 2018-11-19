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
module Milestone_2 (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                  // 50 MHz clock
		
		input  logic            Resetn, 
		output logic   [17:0]   SRAM_address,
		output logic   [15:0]   SRAM_write_data,
		output logic            SRAM_we_n,
		input  logic   [15:0] 	SRAM_read_data,
		
		output logic M2_done,
		input  logic M2_start

);

parameter DP_RAM_BASE = 2048;
parameter Y_pre_address = 76800;
parameter U_pre_address = 153600;
parameter V_pre_address = 192000;

M2_state_type state;
 
logic resetn;
logic common_case;

logic [5:0] SC, CB, C_END;
logic [4:0] RB;
logic [17:0] Y_address, U_address, V_address, Base_address;

logic [8:0] read_address, write_address;
logic [7:0] write_data_b [2:0];
logic write_enable_b [2:0];
logic [7:0] read_data_a [2:0];
logic [7:0] read_data_b [2:0];

dual_port_RAM0 dual_port_RAM_inst0 (
	.address_a ( read_address ),
	.address_b ( write_address ),
	.clock ( CLOCK_50_I ),
	.data_a ( 8'h00 ),
	.data_b ( write_data_b[0] ),
	.wren_a ( 1'b0 ),
	.wren_b ( write_enable_b[0] ),
	.q_a ( read_data_a[0] ),
	.q_b ( read_data_b[0] )
	);
	
dual_port_RAM1 dual_port_RAM_inst1 (
	.address_a ( read_address ),
	.address_b ( write_address ),
	.clock ( CLOCK_50_I ),
	.data_a ( 8'h00 ),
	.data_b ( write_data_b[1] ),
	.wren_a ( 1'b0 ),
	.wren_b ( write_enable_b[1] ),
	.q_a ( read_data_a[1] ),
	.q_b ( read_data_b[1] )
	);

dual_port_RAM2 dual_port_RAM_inst2 (
	.address_a ( read_address ),
	.address_b ( write_address ),
	.clock ( CLOCK_50_I ),
	.data_a ( 8'h00 ),
	.data_b ( write_data_b[2] ),
	.wren_a ( 1'b0 ),
	.wren_b ( write_enable_b[2] ),
	.q_a ( read_data_a[2] ),
	.q_b ( read_data_b[2] )
	);	

always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (resetn == 1'b0) begin
		state <= S_M2_IDLE;				
		
		SRAM_we_n <= 1'b1;	
		SRAM_write_data <= 16'd0;
		
		common_case <= 1'b0;
		
		M2_done <= 1'b0;
		
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
				
				SRAM_address <= 18'd0;
				Y_address <= 18'd0;
				U_address <= 18'd38400;
				V_address <= 18'd57600;	
					
				Base_address <= 18'd76800;
				C_END <= 6'd39;
				SC <= 6'd0;
				CB <= 6'd0;
				RB <= 5'd0;				
							
			end
		end
		
		S_M2_START: begin
			state <= S_FS;
		end
		
		S_FS: begin
			
			
			
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

