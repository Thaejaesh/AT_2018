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

/* 		input  logic CT_start,
		output logic CT_done,
		
		input  logic CS_start,
		output logic CS_done, */
		
		input  logic MM_start,
		output logic MM_done,
		
		input  logic [31:0] read_data_R0 	[1:0],
		output logic [31:0] write_data_R0 	[1:0],
		output logic [6:0]  rw_address_R0 	[1:0],
		output logic 		write_enable_R0 [1:0],
		
		input  logic [31:0] read_data_R1	[1:0],		
		output logic [31:0] write_data_R1,
		output logic [6:0]  rw_address_R1,
		output logic 		write_enable_R1,
		
		input  logic [31:0] read_data_R2 	[1:0],
		output logic [6:0]  read_address_R2 [1:0]
		//No writing to R2 //Contains C values

);


MATRIX_MULT_state_type state;

logic [7:0]  god_counter; 
logic 		 count_enable;
logic 		 first_run;

logic [6:0]  A_counter; //S'/T
logic [6:0]  C_counter; //C/Ct
logic [6:0]  R_counter; //Result counter T/S
logic 		 C_T_S;		//Determine if calculating T or S

logic [31:0] mult_in_T_S;
logic [31:0] mult_in_C	   [3:0];
logic [63:0] mult_out_long [3:0];
logic [31:0] mult_out 	   [3:0];
logic [31:0] product 	   [3:0];
logic [31:0] product_out   [3:0];


/* 
logic 		 current_product_RAM, non_current_product_RAM;
logic [31:0] current_read_data, non_current_read_data;
logic [31:0] current_write_data, non_current_write_data;
logic [6:0]  current_read_address, non_current_read_address;
logic 		 current_write_enable, non_current_write_enable;


assign 
	current_product_RAM 		= ~C_T_S, //T is in RAM1
	non_current_product_RAM 	= C_T_S, //S is in RAM0
	////
	non_current_write_data 		= 32'd0,
	non_current_read_address	= (C_T_S)? 7'd0 : A_counter,
	non_current_write_enable 	= 1'b0;
	

	
always_comb begin
	if (~C_T_S) begin //When calculating T
		read_data_R1    = current_read_data;
		write_data_R1   = current_write_data;
		rw_address_R1   = current_read_address;
		write_enable_R1 = current_write_enable;
		
		
		read_data_R0    = non_current_read_data;
		write_data_R0   = non_current_write_data;
		rw_address_R0   = non_current_read_address;
		write_enable_R0 = non_current_write_enable;
		
	end else begin //When calculating S
	
		read_data_R0    = current_read_data;
		write_data_R0   = current_write_data;
		rw_address_R0   = current_read_address;
		write_enable_R0 = current_write_enable;
		
		
		read_data_R1    = non_current_read_data;
		write_data_R1   = non_current_write_data;
		rw_address_R1   = non_current_read_address;
		write_enable_R1 = non_current_write_enable;	
	
	end
end
 */

//Locations to read/write to memory locations from/to
assign A_counter = { ~god_counter[7], god_counter[6:4] , god_counter[2:0] }; //read from either top half or bottom half depending on state
assign C_counter = { 2'd0, god_counter[2:0] , god_counter[3] }; //reading from first quarter of the memory
assign R_counter = { 1'b1, god_counter[6:2] };
assign C_T_S 	 = god_counter[7]; 


always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (~Resetn) begin
		
		MM_done 		<= 1'b0;
		god_counter 	<= 8'd0;
		count_enable 	<= 1'b0;
		first_run 	 	<= 1'b1;
		
		product[0]	 	<= 32'd0;
		product[1]  	<= 32'd0;
		product[2]  	<= 32'd0;
		product[3]  	<= 32'd0;
		
		state <= S_MM_IDLE;				
	end else begin

		
		case (state)
		
		S_MM_START: begin
			god_counter  <= 8'd0;
			count_enable <= 1'b0;
			first_run 	 <= 1'b1;
			state <= S_MM_IDLE;
		end
		
		S_MM_IDLE: begin
			
			if (MM_start) begin
				//count_enable <= 1'b1;
				state <= S_CT_LI_0;
			end

		end
		
		S_CT_LI_0: begin
			god_counter <= god_counter + 8'd1;
			state <= S_CT_LI_1;
		end
		
		S_CT_LI_1: begin
			god_counter <= god_counter + 8'd1;
			state <= S_MM_CT;
		end
		
		S_MM_CT: begin
			
			if ( count_enable ) begin
				god_counter <= god_counter + 8'd1;
			end
			
			if (first_run) begin
				first_run <= 1'b0;
			end 
			
			if (god_counter[2:0] == 3'd0) begin
				product[0] <= (mult_out[0]);
				product[1] <= (mult_out[1]);
				product[2] <= (mult_out[2]);
				product[3] <= (mult_out[3]);	

			end else begin
				product[0] <= (product[0] + mult_out[0]);
				product[1] <= (product[1] + mult_out[1]);
				product[2] <= (product[2] + mult_out[2]);
				product[3] <= (product[3] + mult_out[3]);
				
				product_out[0] <= product[0] + mult_out[0];
				product_out[1] <= product[1] + mult_out[1];
				product_out[2] <= product[2] + mult_out[2];
				product_out[3] <= product[3] + mult_out[3];				
			end
			
			if(C_T_S) begin
				MM_done <= 1'b1;
			end
			
			state <= S_MM_CS;
		
		end
		
		S_MM_CS: begin 
			
			
			if (C_T_S) begin
				state <= S_MM_CT;
			end			
		end		
		
		default: begin
			state <= S_MM_IDLE;
		end
		
		endcase
	end
end

//Get C values
assign read_address_R2[0] = {2'd0, god_counter[2:0] , god_counter[3] , 1'b0};
assign read_address_R2[1] = {2'd0, god_counter[2:0] , god_counter[3] , 1'b1};

//Read from T or S'
assign mult_in_T_S  = (C_T_S)? read_data_R1[0] : read_data_R0[0] ;

always_comb begin 
	
	mult_in_C[0] = {16'd0, read_data_R2[0][31:16]};
	mult_in_C[1] = {16'd0, read_data_R2[0][15:0]};
	mult_in_C[2] = {16'd0, read_data_R2[1][31:16]};
	mult_in_C[3] = {16'd0, read_data_R2[1][15:0]};

	mult_out_long[0] = mult_in_C[0] * mult_in_T_S;
	mult_out_long[1] = mult_in_C[1] * mult_in_T_S;
	mult_out_long[2] = mult_in_C[2] * mult_in_T_S;
	mult_out_long[3] = mult_in_C[3] * mult_in_T_S;


	mult_out[0] = mult_out_long[0][31:0];
	mult_out[1] = mult_out_long[1][31:0];
	mult_out[2] = mult_out_long[2][31:0];
	mult_out[3] = mult_out_long[3][31:0];


end	
/* always_comb begin
	
	product[0] = (god_counter[2:0] == 3'b0) ? mult_out[0] : (product[0] + mult_out[0]);
	product[1] = (god_counter[2:0] == 3'b0) ? mult_out[1] : (product[1] + mult_out[1]);
	product[2] = (god_counter[2:0] == 3'b0) ? mult_out[2] : (product[2] + mult_out[2]);
	product[3] = (god_counter[2:0] == 3'b0) ? mult_out[3] : (product[3] + mult_out[3]);

end */


endmodule

