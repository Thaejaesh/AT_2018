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


M2_state_type state;
 
logic common_case;

logic [5:0] SC, CB, C_END;
logic [4:0] RB;
logic [17:0] Y_address, U_address, V_address, Base_address;

logic [6:0]  RAM0_address[1:0], RAM1_address, RAM2_address[1:0];
logic [31:0] RAM0_write_data[1:0], RAM1_write_data;
logic        RAM0_write_enable[1:0], RAM1_write_enable;
logic [31:0] RAM0_read_data[1:0], RAM1_read_data[1:0], RAM2_read_data[1:0];

//Fetch S'
logic [31:0] FS_write_data;
logic [6:0]  FS_write_address;
logic  		 FS_write_enable;
logic  		 FS_done;
logic  		 FS_start;

//Compute T
logic 		 MM_CT_done, MM_CT_start; 
logic [31:0] MM_CT_RAM0_read_data;
logic [6:0]  MM_CT_RAM0_address;
logic 		 MM_CT_RAM0_write_enable;

logic [31:0] MM_CT_RAM2_read_data [1:0];
logic [6:0]  MM_CT_RAM2_address	  [1:0];

logic [31:0] MM_CT_RAM1_write_data;
logic [6:0]  MM_CT_RAM1_address;	
logic 		 MM_CT_RAM1_write_enable;

//Compute S
logic 		 MM_CS_done, MM_CS_start; 
logic [31:0] MM_CS_RAM1_read_data;
logic [6:0]	 MM_CS_RAM1_address;
logic 		 MM_CT_RAM1_write_enable;

logic [31:0] MM_CS_RAM2_read_data [1:0];
logic [6:0]  MM_CS_RAM2_address	  [1:0];

logic [31:0] MM_CS_RAM0_write_data;
logic [6:0]  MM_CS_RAM0_address;
logic 		 MM_CS_RAM0_write_enable;

//Write S
logic 		 WS_done, WS_start;


always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (Resetn == 1'b0) begin
		state 		<= S_M2_IDLE;	
		SRAM_we_n 	<= 1'b1;
		FS_start 	<= 1'b0;
		MM_CT_start <= 1'b0;
		MM_CS_start <= 1'b0;
		WS_start 	<= 1'b0;
	end else begin

		case (state)
		S_M2_IDLE: begin
			SRAM_we_n 		<= 1'b1;
			SRAM_write_data <= 18'd0;
			if (M2_start) begin
				state <= S_M2_START;		
							
			end
		end
		
		S_M2_START: begin
			FS_start <= 1'b1;
			state <= S_FS;			
		end
		
		S_FS: begin
			
			if (FS_done) begin
				FS_start 	<= 1'b0;
				MM_CT_start <= 1'b1;
				state <= S_CT;
			end
		end
		
		S_CT: begin
			
						
			if (MM_CT_done) begin
				FS_start 	<= 1'b1;
				MM_CT_start <= 1'b0;
				MM_CS_start <= 1'b1;
			end
			
			if (MM_CS_done) begin
				MM_CT_start <= 1'b1;
				WS_start 	<= 1'b1;
			end
			
			if (WS_done) begin
				WS_start <= 1'b0;
			
			end
			
			
		end
		

		
		default: state <= S_M2_IDLE;
		endcase
	end
end



FS FS_unit (
	.CLOCK_50_I(CLOCK_50_I),
	.Resetn(Resetn),
	
	.SRAM_address(SRAM_address),
	.SRAM_read_data(SRAM_read_data),
	
	.FS_done(FS_done),
	.FS_start(FS_start),
	
	.FS_write_data(FS_write_data),
	.FS_write_address(FS_write_address),
	.FS_write_enable(FS_write_enable)

);

//FS assignments
/* assign
	RAM0_address[1]  	 = FS_write_address,
	RAM0_write_data[1]	 = FS_write_data,
	RAM0_write_enable[1] = FS_write_enable; */
	
always_comb begin

	//T
	MM_CT_RAM0_read_data = RAM1_read_data[1];
	RAM1_address	  = MM_CT_RAM0_address;
	
	//C
	RAM2_address[0] = MM_CT_RAM2_address[0];
	RAM2_address[1] = MM_CT_RAM2_address[1];
	//C
	MM_CT_RAM2_read_data[0] = RAM2_read_data[0];
	MM_CT_RAM2_read_data[1] = RAM2_read_data[1];
	

	
end


	
MATRIX_MULTIPLIER MM_unit_CT(
	.CLOCK_50_I(CLOCK_50_I),
	.Resetn(Resetn),

	.MM_start(MM_CT_start),
	.MM_done(MM_CT_done),
	
	.T_S(1'b0),
	
	//[1]
	.A_read_data(MM_CT_RAM0_read_data), 
	.A_read_address(MM_CT_RAM0_address),
	.A_write_enable(MM_CT_RAM0_write_enable),
	
	.C_read_data(MM_CT_RAM2_read_data),
	.C_read_address(MM_CT_RAM2_address),
	
	
	.P_write_data(MM_CT_RAM1_write_data),
	.P_write_address(MM_CT_RAM1_address),
	.P_write_enable(MM_CT_RAM1_write_enable)
	

);

MATRIX_MULTIPLIER MM_unit_CS(
	.CLOCK_50_I(CLOCK_50_I),
	.Resetn(Resetn),

	.MM_start(MM_CS_start),
	.MM_done(MM_CS_done),
	
	.T_S(1'b1),
	
	//[1]
	.A_read_data(MM_CS_RAM1_read_data), 
	.A_read_address(MM_CS_RAM1_address),
	.A_write_enable(MM_CS_RAM1_write_enable),
	
	.C_read_data(MM_CS_RAM2_read_data),
	.C_read_address(MM_CS_RAM2_address),
	
	
	.P_write_data(MM_CS_RAM0_write_data),
	.P_write_address(MM_CS_RAM0_address),
	.P_write_enable(MM_CS_RAM0_write_enable)
	

);



//DPRAM for S and S' values
dual_port_RAM0 dual_port_RAM_inst0 (
	.address_a ( RAM0_address[0] ),  //S
	.address_b ( RAM0_address[1] ),  //S'
	.clock ( CLOCK_50_I ),
	.data_a ( RAM0_write_data[0] ),   //S
	.data_b ( RAM0_write_data[1] ),   //S'
	.wren_a ( RAM0_write_enable[0] ), //S
	.wren_b ( RAM0_write_enable[1] ), //S'
	.q_a ( RAM0_read_data[0] ), 	  //S
	.q_b ( RAM0_read_data[1] ) 		  //S'
);
	
//DPRAM for T values	
dual_port_RAM1 dual_port_RAM_inst1 (
	.address_a ( RAM1_address ),
	.address_b ( 7'd0 ),
	.clock ( CLOCK_50_I ),
	.data_a ( RAM1_write_data ),
	.data_b ( 32'd0 ),
	.wren_a ( RAM1_write_enable ),
	.wren_b ( 1'b0 ),
	.q_a ( RAM1_read_data[0] ),
	.q_b ( RAM1_read_data[1] )
);

//DPRAM for C values
dual_port_RAM2 dual_port_RAM_inst2 (
	.address_a ( RAM2_address[0] ),												
	.address_b ( RAM2_address[1] ),
	.clock ( CLOCK_50_I ),
	.data_a ( 32'd0 ),
	.data_b ( 32'd0 ),
	.wren_a ( 1'b0 ),
	.wren_b ( 1'b0 ),
	.q_a ( RAM2_read_data[0] ),
	.q_b ( RAM2_read_data[1] )
);	 

endmodule

