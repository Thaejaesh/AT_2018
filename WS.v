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
		output logic   [15:0] 	SRAM_write_data,
		 
		
		output logic 			WS_done,
		input  logic 			WS_start,
		
		input  logic   [31:0] 	S_read_data,
		output logic   [6:0]  	S_read_address,
		output logic 		  	S_write_enable

);


WS_state_type state;
 

logic [5:0]  SC, WC; //SC 0 -> 63
logic [5:0]  CB, C_END;
logic [4:0]  RB;
logic [17:0] Base_address;
logic [17:0] write_address;

logic [7:0]  clipped_read_data;
logic [7:0]  clipped_buffer;

logic		 first_run;

assign S_write_enable = 0;
assign S_read_address = {1'b0, SC};

always_comb begin
	
	if (Base_address == 18'd0) begin
		//For Y: address = 160*RA + CA = (128 + 32)*RA + CA
		write_address = {3'd0, RB, WC[5:3], 7'd0} + {5'd0, RB, WC[5:3], 5'd0} + {10'd0, CB, WC[2:1]} + Base_address;
	end else begin
		//For U and V: address = 80*RA + CA = (64 + 16)*RA + CA
		write_address = {4'd0, RB, WC[5:3], 6'd0} + {6'd0, RB, WC[5:3], 4'd0} + {10'd0, CB, WC[2:1]} + Base_address;
	end
	
end

//Only shifting by 8 bits
//Already 8 shifted before writing to DPRAM
assign clipped_read_data = ( $signed(S_read_data[23:8]) > $signed(16'd255) )? 8'hFF : ( ($signed(S_read_data[23:8]) < $signed(16'd0) )? 8'h00: S_read_data[15:8] );	


always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (Resetn == 1'b0) begin
					
		
		SRAM_we_n 		<= 1'b1;	
		SRAM_write_data <= 16'd0;
		
		WS_done 		<= 1'b0;
		
		SRAM_address 	<= 18'd0;
		Base_address 	<= 18'd0;
	
		SC		  	 	<= 6'd0;
		WC			 	<= 6'd0;
		CB 			 	<= 6'd0;
		RB 			 	<= 5'd0;
		C_END 		 	<= 6'd39;
		
		first_run 	 	<= 1'b1;
		clipped_buffer  <= 8'd0;
		state 			<= S_WS_START;	
	end else begin

		case (state)
		S_WS_START	: begin
			
			SRAM_we_n		<= 1'b1;
			SRAM_write_data <= 16'd0;

			WS_done			<= 1'b0;
			
			SRAM_address	<= 18'd0;
			Base_address 	<= 18'd0;

			SC 			 	<= 6'd0;
			WC			 	<= 6'd0;
			CB			 	<= 6'd0;
			RB			 	<= 5'd0;
			C_END		 	<= 6'd39;
			
			first_run 	 	<= 1'b1;
			clipped_buffer  <= 8'd0;
			state		 	<= S_WS_IDLE;
		end
		
		S_WS_IDLE: begin
			WS_done 	 <= 1'b0;
			SC 		 	 <= 6'd0;
			WC 			 <= 6'd0;
			first_run 	 <= 1'b1;
			SRAM_we_n 	 <= 1'b1;
			if (WS_start) begin
				state <= S_WS_LI_1;
			end
		end
		
		S_WS_LI_1: begin
			
			SRAM_address <= write_address;
			SC <= SC + 6'd1;
			state <= S_WS_LI_2;
		end
		
		S_WS_LI_2: begin
			
			SRAM_address <= write_address;
			SC <= SC + 6'd1;
			WC <= WC + 6'd1;
			clipped_buffer <= clipped_read_data;
			state <= S_WS_COMMON_CASE;
		end

		S_WS_COMMON_CASE: begin
			
			
			WC <= WC + 6'd1;
			

			if (WC[0] == 1'd0) begin
				
				if (~first_run) SRAM_we_n <= 1'b0;
				clipped_buffer <= clipped_read_data;
				
			end else begin
				SRAM_we_n <= 1'b1;
				if (first_run) begin
					first_run <= 1'b0;
					SRAM_address <= write_address;
					SRAM_write_data <= {clipped_buffer, clipped_read_data};					
				end else begin
					SRAM_address <= write_address;
					SRAM_write_data <= {clipped_buffer, clipped_read_data};
				end
			end
			
			if (SC == 6'd63) begin
				state <= S_WS_LO_1;
				WC 	  <= WC;
				SRAM_we_n <= 1'b0;
				SC	  <= 6'd0;
			end else begin
				SC 	  <= SC + 6'd1;
			end
		
		end
		
		S_WS_LO_1: begin
			WC <= WC + 6'd1;
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {clipped_buffer, clipped_read_data};
			clipped_buffer <= clipped_read_data;
			SRAM_address <= write_address;
			state <= S_WS_LO_2;
		end
		
		
		S_WS_LO_2: begin
			
			SRAM_we_n <= 1'b1;
			
			
			WS_done   <= 1'b1;			
			
			if (CB == C_END) begin
				CB 			<= 6'd0;
				if (RB == 5'd29) begin
					RB 		<= 5'd0;
					C_END 	<= 6'd19;
					
					if (Base_address == 18'd0) begin	
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
			
			state 	  <= S_WS_IDLE;
			
		end
		

		
		default: state <= S_WS_IDLE;
		endcase
	end
end



endmodule

