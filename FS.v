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

//Module responsible for fetch S' values and writing to DPRAM0
module FS (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                  // 50 MHz clock
		/////// M2 FSM
		input  logic            Resetn, 
		output logic 			FS_done,
		input  logic 			FS_start,		
		
		/////// SRAM
		output logic   [17:0]   SRAM_address,
		//output logic 			SRAM_we_n,
		input  logic   [15:0] 	SRAM_read_data,
		
		//////TO DPRAM0
		output logic   [31:0] 	FS_write_data,
		output logic   [6:0] 	FS_write_address,
		output logic   			FS_write_enable

);

FS_state_type state;
 
logic [5:0] SC, CB, C_END;
logic [4:0] RB;
logic [17:0] Y_address, U_address, V_address, Base_address, read_address;

logic [6:0] write_address;//read_address, write_address;


always_comb begin
	if (Base_address == 18'd76800) begin
		//For Y: address = 320*RA + CA = (256 + 64)*RA + CA
		read_address = {2'd0, RB, SC[5:3], 8'd0} + {4'd0, RB, SC[5:3], 6'd0} + {9'd0, CB, SC[2:0]} + Base_address;
	end else begin
		//For U and V: address = 160 + CA = (128 + 32)*RA + CA
		read_address = {3'd0, RB, SC[5:3], 7'd0} + {5'd0, RB, SC[5:3], 5'd0} + {9'd0, CB, SC[2:0]} + Base_address;
	end
end
assign FS_write_address = {0'b1,write_address};//Concatenating with a leading zero means writing in top half of memory //+ 7'd64; //64 to write to bottom half of the memory
assign FS_write_data = {16'd0, SRAM_read_data}; // Pad 8 bit input with zeros to get an equivalent 32 bit value

//Determine FS_write_address
always_comb begin
	
	case (state) 
		
		S_FS_COMMON_CASE: begin
			write_address = SC - 6'd3;
		end
		
		S_FS_LO_1: begin
			write_address = SC - 6'd2;
		end
		
		S_FS_LO_2: begin
			write_address = SC - 6'd1;
		end
		
		S_FS_LO_3: begin
			write_address = SC - 6'd0;
		end
		
		
		default: begin
			FS_write_address = 6'd0;
		end
	endcase
	
end

always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (~Resetn) begin
		state <= S_FS_START;				
		
		//SRAM_we_n <= 1'b1;	
		
		FS_done <= 1'b0;
		FS_write_enable <= 1'b0;
		SRAM_address <= 18'd76800;				
		Base_address <= 18'd76800;
		SC <= 6'd0;
		CB <= 6'd0;
		RB <= 5'd0;
		C_END <= 6'd39;
		
		SRAM_address <= 18'd0;
	end else begin

		case (state)
		
		S_FS_START: begin

			//SRAM_we_n <= 1'b1;
			FS_done <= 1'b0;
			
			SRAM_address <= 18'd76800;				
			Base_address <= 18'd76800;
			C_END <= 6'd39;
			SC <= 6'd0;
			CB <= 6'd0;
			RB <= 5'd0;			
			
			state <= S_FS_IDLE;
		end		
		
		S_FS_IDLE: begin
			if (FS_start) begin
				FS_done <= 1'b0;
				state <= S_FS_LI_1;				
			end
		end
		
		S_FS_LI_1: begin
			
			SRAM_address <= read_address;
			SC <= SC + 6'd1;
			state <= S_FS_LI_2;
		end
		
		S_FS_LI_2: begin
		
			SRAM_address <= read_address;
			SC <= SC + 6'd1;
			state <= S_FS_LI_3;
		end
		
		S_FS_LI_3: begin
			
			SRAM_address <= read_address;
			SC <= SC + 6'd1;
			
			FS_write_enable <= 1'b1;
			
			state <= S_FS_COMMON_CASE;
		end
		
		S_FS_COMMON_CASE: begin
			
			//Address = 320*Row_Address + Col_Address
			
			SRAM_address <= read_address;
			
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
				
				state <= S_FS_LO_1;
				
				SC <= 6'd0;
			end else begin
				SC <= SC + 6'd1;
			end
		end
		
		S_FS_LO_1: begin
			state <= S_FS_LO_2;
		end
		
		S_FS_LO_2: begin
			state <= S_FS_LO_3;
		end
		
		S_FS_LO_3: begin
			FS_write_enable <= 1'b0;
			FS_done <= 1'b1;
			state <= S_FS_IDLE;
		end
				
		
		default: state <= S_M2_IDLE;
		endcase
	end
end



endmodule

