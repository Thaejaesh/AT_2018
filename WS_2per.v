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
		input  logic WS_start,
		
		input logic	[31:0]	s_read_data,
		output logic[6:0]	s_read_address,
		output logic		s_write_enable

);


WS_state_type state;
 

logic [4:0]  SC; //SC 0 -> 31 //Add 0 & 1 to read two values
logic [5:0]  CB, C_END;
logic [4:0]  RB;
logic [17:0] Y_address, U_address, V_address, Base_address;

logic [17:0] write_address;
logic [7:0]  write_data_b;
logic 		 write_enable_b;
logic [7:0]  read_data_a;
logic [7:0]  read_data_b;

assign s_write_enable = 0;

always_comb begin
	if (Base_address == 18'd0) begin
		//For Y: address = 160*RA + CA = (128 + 32)*RA + CA
		write_address = {3'd0, RB, 1'd0, SC[4:3], 7'd0} + {5'd0, RB, 1'd0, SC[4:3], 5'd0} + {9'd0, CB, SC[2:0]} + Base_address;
	end else begin
		//For U and V: address = 80*RA + CA = (64 + 16)*RA + CA
		write_address = {4'd0, RB, 1'd0, SC[4:3], 6'd0} + {6'd0, RB, 1'd0, SC[4:3], 4'd0} + {9'd0, CB, SC[2:0]} + Base_address;
	end
end 

always_comb begin

	case(state)
	
		S_WS_COMMON_CASE: begin
			s_read_address = {2'd0, SC} - 7'd2;
		end
		
		S_WS_LO_1: begin
			s_read_address = {2'd0, SC} - 7'd1;
		end
		
		S_WS_LO_2: begin
			s_read_address = {2'd0, SC} - 7'd0;
		end
		
		default: begin
			s_read_address = 6'd0;
		end
	endcase
end

always_comb begin
	read_data_a = ($signed(s_read_data[23:16]) > $signed(8'd255))? 8'd255 : (($signed(s_read_data[23:16]) < $signed(8'd0))? 8'd0: s_read_data[23:16]);
	read_data_b = ($signed(s_read_data[7:0]) > $signed(8'd255))? 8'd255 : (($signed(s_read_data[7:0]) < $signed(8'd0))? 8'd0: s_read_data[7:0]);
end

assign SRAM_write_data = {read_data_a, read_data_b};
 
always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (Resetn == 1'b0) begin
		state <= S_WS_IDLE;
		
		SRAM_we_n <= 1'b1;
		SRAM_write_data <= 16'd0;
		
		WS_done <= 1'b0;
		
		SRAM_address <= 18'd0;
		
		Base_address <= 18'd0;

		Y_address <= 18'd0;
		U_address <= 18'd38400;
		V_address <= 18'd57600;
	
		SC <= 6'd0;
		CB <= 6'd0;
		RB <= 5'd0;
		C_END <= 6'd19;
		
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

			SC <= 6'd0;
			CB <= 6'd0;
			RB <= 5'd0;
			C_END <= 6'd19;			
			
			state <= S_WS_IDLE;
		end
		
		S_WS_IDLE: begin
			if (WS_start) begin
				WS_done <= 1'b0;
				state <= S_WS_LI_1;
			end
		end
		
		S_WS_LI_1: begin
			
			SRAM_address <= write_address;
			SC <= SC + 5'd1;
			state <= S_WS_LI_2;
		end
		
		S_WS_LI_2: begin
			
			SRAM_address <=write_address;
			SC <= SC + 5'd1;
			SRAM_we_n= 1'b0;
			
			state <= S_WS_COMMON_CASE;
		end
		S_WS_COMMON_CASE: begin
			
			//Address = 160*Row_Address + Col_Address
			
			SRAM_address <= write_address;
			
			if(SC == 5'd31) begin
			
				if (CB == C_END) begin
					CB <= 6'd0;
					if(RB == 5'd29) begin
						RB <= 5'd0;
						C_END <=6'd9;
						
						if(Base_address == 18'd0) begin
							Base_address <= 18'd38400;
						end else if (Base_address == 18'd38400) begin
							Base_address <= 18'd57600;
						end
						
					end else begin
						RB <= RB + 5'd1;
					end
				end else begin
					CB <= CB + 6'd1;
				end
				
				state <= S_WS_LO_1;
				
				SC <= 5'd0;
			end else begin
				SC <= SC + 5'd1;
			end
			
		end
		S_WS_LO_1: begin
			
			state <= S_WS_LO_2;
		end
		
		S_WS_LO_2: begin
			
			SRAM_we_n <= 1'b1;
			WS_done <= 1'b1;
			state <= S_WS_IDLE;
		end
		
		default: state <= S_WS_IDLE;
		endcase
	end
end

endmodule