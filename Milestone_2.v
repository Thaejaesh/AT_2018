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

	
logic [31:0] FS_write_data;
logic [6:0]  FS_write_address;
logic  		 FS_write_enable;
logic  		 FS_done;
logic  		 FS_start;


logic 


always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (Resetn == 1'b0) begin
		state <= S_M2_IDLE;	
		SRAM_we_n <= 1'b1;
		FS_start <= 1'b0;
		MM_start <= 1'b0;
	end else begin

		case (state)
		S_M2_IDLE	: begin
			SRAM_we_n <= 1'b1;
			SRAM_write_data <= 18'd0;
			if (M2_start) begin
				state <= S_M2_START;		
							
			end
		end
		
		S_M2_START: begin
			
			state <= S_FS;
		end
		
		S_FS: begin
			
			FS_start <= 1'b1;
 			if (FS_done) begin
				FS_start <= 1'b0;
			end 
			
			MM_start <= 1'b1;
		end
		

		
		default: state <= S_M2_IDLE;
		endcase
	end
end

//Determine SRAM access
always_comb begin

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
assign
	RAM0_address[1]  	 = FS_write_address,
	RAM0_write_data[1]	 = FS_write_data,
	RAM0_write_enable[1] = FS_write_enable;

MATRIX_MULT MM_unit(
	.CLOCK_50_I(CLOCK_50_I),
	.Resetn(Resetn),

	.MM_start(MM_start),
	.MM_done(MM_done),
	
	.read_data_R0(RAM0_read_data),
	.write_data_R0(RAM0_read_data),
	.rw_address_R0(RAM0_address),
	.write_enable_R0(RAM0_write_enable),

	.read_data_R1(RAM1_read_data),
	.write_data_R1(RAM1_read_data),
	.rw_address_R1(RAM1_address),
	.write_enable_R1(RAM1_write_enable),
	
	.read_data_R2(RAM2_read_data),
	.read_address_R2(RAM2_address)
	

)

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

