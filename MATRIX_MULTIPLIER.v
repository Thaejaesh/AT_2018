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
module MATRIX_MULTIPLIER (
		/////// board clocks                      ////////////
		input  logic CLOCK_50_I,                  // 50 MHz clock		
		input  logic Resetn, 

		
		input  logic MM_start,
		output logic MM_done,
		
		input  logic T_S,
		
		input  logic [31:0] A_read_data,
		output logic [6:0]  A_read_address,
		output logic 		A_write_enable, //Set to zero
		
		input  logic [31:0] C_read_data		[1:0],
		output logic [6:0]  C_read_address  [1:0],
		
		output logic [31:0] P_write_data,
		output logic [6:0]  P_write_address, 
		output logic 		P_write_enable

);


MATRIX_MULT_state_type state;

logic [6:0]  god_counter; 
logic [6:0]  w_counter; 
logic [5:0]  product_counter;
//logic 		 count_enable;
logic 		 first_run;
logic 		 last_run;
logic 		 C_T_S;		//Determine if calculating T or S

logic [31:0] mult_in_T_S;
logic [31:0] mult_in_C	   [3:0];
logic [63:0] mult_out_long [3:0];
logic [31:0] mult_out 	   [3:0];
logic [31:0] product 	   [3:0];
logic [31:0] product_out   [3:0];

logic [1:0]  lead_out_counter;
logic [4:0]  write_pre_address;


always_comb begin 
	
	A_read_address = { (~T_S), god_counter[6:4] , god_counter[2:0] };
	
	C_read_address[0] = {2'd0, god_counter[2:0] , god_counter[3] , 1'b0};
	C_read_address[1] = {2'd0, god_counter[2:0] , god_counter[3] , 1'b1};
end
	
always_comb begin
	mult_in_T_S  = A_read_data;
	
	mult_in_C[0] = { {16{C_read_data[0][31]}} , C_read_data[0][31:16]};
	mult_in_C[1] = { {16{C_read_data[0][15]}} , C_read_data[0][15:0]};
	mult_in_C[2] = { {16{C_read_data[1][31]}} , C_read_data[1][31:16]};
	mult_in_C[3] = { {16{C_read_data[1][15]}} , C_read_data[1][15:0]};

	mult_out_long[0] = mult_in_C[0] * mult_in_T_S;
	mult_out_long[1] = mult_in_C[1] * mult_in_T_S;
	mult_out_long[2] = mult_in_C[2] * mult_in_T_S;
	mult_out_long[3] = mult_in_C[3] * mult_in_T_S;

	mult_out[0] = mult_out_long[0][31:0];
	mult_out[1] = mult_out_long[1][31:0];
	mult_out[2] = mult_out_long[2][31:0];
	mult_out[3] = mult_out_long[3][31:0];
end	


always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	
	if (~Resetn) begin
		product[0]	 	<= 32'd0;
		product[1]  	<= 32'd0;
		product[2]  	<= 32'd0;
		product[3]  	<= 32'd0;
		product_out[0]	<= 32'd0;
		product_out[1]  <= 32'd0;
		product_out[2]  <= 32'd0;
		product_out[3]  <= 32'd0;	
		product_counter <=  6'd0;
		P_write_data	<= 32'd0;
		P_write_address <=  6'd0;
		P_write_enable 	<=  1'b0;
	end else begin
	
		if (god_counter[2:0] == 3'd1) begin
			product[0] <= mult_out[0];
			product[1] <= mult_out[1];
			product[2] <= mult_out[2];
			product[3] <= mult_out[3];
						
		end else begin
			
			product[0] <= product[0] + mult_out[0];
			product[1] <= product[1] + mult_out[1];
			product[2] <= product[2] + mult_out[2];
			product[3] <= product[3] + mult_out[3];
			
		end
		
		if (w_counter[2:0] == 3'd6) begin

			product_out[0] <= product[0] + mult_out[0];
			product_out[1] <= product[1] + mult_out[1];
			product_out[2] <= product[2] + mult_out[2];
			product_out[3] <= product[3] + mult_out[3];		
		
		end
		
		
		if (~first_run) begin
			
			if ( w_counter[2:0] == 3'd0) begin
				if (~MM_done) P_write_enable <= 1'b1;
			end else if ( w_counter[2:0] == 3'd1) begin
				
				P_write_data 	<= { {8{product_out[0][31]}} , product_out[0][31:8] }; //Divide by 256 and sign extend
				
				P_write_address <= {product_counter[2:0] , product_counter[5:3]};
				product_counter <= product_counter + 6'd1;
			
			end else if ( w_counter[2:0] == 3'd2) begin
				
				P_write_data 	<= { {8{product_out[1][31]}} , product_out[1][31:8] }; //Divide by 256 and sign extend
				
				P_write_address <= {product_counter[2:0] , product_counter[5:3]};
				product_counter <= product_counter + 6'd1;
			
			end else if ( w_counter[2:0] == 3'd3) begin
				
				P_write_data 	<= { {8{product_out[2][31]}} , product_out[2][31:8] }; //Divide by 256 and sign extend
				
				P_write_address <= {product_counter[2:0] , product_counter[5:3]};
				product_counter <= product_counter + 6'd1;			
			
			end else if ( w_counter[2:0] == 3'd4) begin
				
				P_write_data 	<= { {8{product_out[3][31]}} , product_out[3][31:8] }; //Divide by 256 and sign extend
				
				P_write_address <= {product_counter[2:0] , product_counter[5:3]};
				product_counter <= product_counter + 6'd1;
			
			end else if ( w_counter[2:0] == 3'd5) begin
				P_write_enable  <= 1'b0;			
			end
		
		end
	
	end
end

always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (~Resetn) begin
		
		MM_done 		<= 1'b0;
		god_counter 	<= 7'd0;
		w_counter	 	<= 7'd0;
		first_run 	 	<= 1'b1;

		
		state <= S_MM_START;				
	end else begin

		case (state)
		
		S_MM_START: begin
			god_counter  <= 7'd0;
			w_counter 	 <= 7'd0;
			first_run 	 <= 1'b1;
			state <= S_MM_IDLE;
		end
		
		S_MM_IDLE: begin
			MM_done <= 1'b0;
			first_run 	 <= 1'b1;
			if (MM_start) begin
				state <= S_MM_LI_0;
				w_counter <= 7'd126;
			end
		end
	
		S_MM_LI_0: begin
			
			god_counter <= god_counter + 7'd1;
			w_counter   <= w_counter   + 7'd1;
			state <= S_MM_LI_1;
		end
		
		
		S_MM_LI_1: begin
		
			god_counter <= god_counter + 7'd1;
			w_counter   <= w_counter   + 7'd1;
			state <= S_MM_CC;
		end
		
		S_MM_CC: begin
			
			w_counter <= w_counter + 7'd1; //Used for calculating write positions
			god_counter <= god_counter + 7'd1;
			
			if (w_counter[2:0] == 3'd7 && first_run) begin
				first_run <= 1'b0;
			end
			
			if (god_counter == 7'd127) begin
				state <= S_MM_LO_0;
			end			
		end
		
		
		S_MM_LO_0: begin
			
			w_counter <= w_counter + 7'd1;		
			state <= S_MM_LO_1;
		end
		
		S_MM_LO_1: begin
			w_counter <= w_counter + 7'd1;
			state <= S_MM_LO_2;
		end
		
		S_MM_LO_2: begin
			
			w_counter <= w_counter + 7'd1;
			
			if (w_counter == 7'd6) begin
				MM_done <= 1'b1;
				state <= S_MM_IDLE;
			end
		end
		
		default: begin
			state <= S_MM_IDLE;
		end
		
		endcase
	end
end






endmodule

