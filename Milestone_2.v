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
 
logic resetn;
logic common_case;

logic [5:0] SC, CB, C_END;
logic [4:0] RB;
logic [17:0] Y_address, U_address, V_address, Base_address;

logic [6:0]  read_address   [2:0];
logic [6:0]  write_address  [2:0];
logic [31:0] write_data_b   [2:0];
logic 		 write_enable_b [2:0];
logic [31:0] read_data_a    [2:0];
logic [31:0] read_data_b    [2:0];

logic [31:0] FS_write_data;
logic [6:0]  FS_write_address;
logic  		 FS_write_enable;
logic  		 FS_done;
logic  		 FS_start;


always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (resetn == 1'b0) begin
		state <= S_M2_IDLE;				
	end else begin

		case (state)
		S_M2_IDLE	: begin
			if (M2_start) begin
				state <= S_M2_START;		
							
			end
		end
		
		S_M2_START: begin
			
			//state <= S_FS;
		end
		

		
		default: state <= S_M2_IDLE;
		endcase
	end
end

//Determine SRAM access
always_comb begin

end

assign write_data_b[0] 		= FS_write_data;
assign write_enable_b[0] 	= FS_write_enable;
assign write_address[0] 	= FS_write_address; //OR CT

assign read_address[0] = CT
assign write_enable_b[1] = CT
assign write_address[1] = CT or CS



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

dual_port_RAM0 dual_port_RAM_inst0 (
	.address_a ( read_address[0] ),
	.address_b ( write_address[0] ),
	.clock ( CLOCK_50_I ),
	.data_a ( 32'd0 ),
	.data_b ( write_data_b[0] ),
	.wren_a ( 1'b0 ),
	.wren_b ( write_enable_b[0] ),
	.q_a ( read_data_a[0] ),
	.q_b ( read_data_b[0] )
);
	
dual_port_RAM1 dual_port_RAM_inst1 (
	.address_a ( read_address[1] ),
	.address_b ( write_address[1] ),
	.clock ( CLOCK_50_I ),
	.data_a ( 32'd0 ),
	.data_b ( write_data_b[1] ),
	.wren_a ( 1'b0 ),
	.wren_b ( write_enable_b[1] ),
	.q_a ( read_data_a[1] ),
	.q_b ( read_data_b[1] )
);

dual_port_RAM2 dual_port_RAM_inst2 (
	.address_a ( read_address[2] ),
	.address_b ( write_address[2] ),
	.clock ( CLOCK_50_I ),
	.data_a ( 32'd0 ),
	.data_b ( write_data_b[2] ),
	.wren_a ( 1'b0 ),
	.wren_b ( write_enable_b[2] ),
	.q_a ( read_data_a[2] ),
	.q_b ( read_data_b[2] )
);	

endmodule

