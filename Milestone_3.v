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
module Milestone_3 (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                  // 50 MHz clock
		
		input  logic            Resetn, 
		output logic   [17:0]   SRAM_address,
		output logic   [15:0]   SRAM_write_data,
		input  logic   [15:0] 	SRAM_read_data,
		output logic            SRAM_we_n,
		
		output logic M3_done,
		input  logic M3_start

);


M3_state_type state;
 
logic common_case;

logic [5:0]  SC, CB, C_END;
logic [4:0]  RB;
logic [17:0] Base_address;

logic [31:0] RAM3_write_data[1:0];
logic [31:0] RAM3_read_data[1:0];
logic [6:0]  RAM3_address[1:0];
logic        RAM3_write_enable[1:0];

logic [5:0]  ZZ_position, next_ZZ;



always_comb begin

	next_ZZ = 6'd0;
	
	case(ZZ_position) 
	
		6'd0: 	next_ZZ = 6'd1;
		
		6'd1: 	next_ZZ = 6'd8;
			
		6'd8: 	next_ZZ = 6'd16;
		
		6'd16:	next_ZZ = 6'd9;
		
		6'd9: 	next_ZZ = 6'd2;
		
		6'd2: 	next_ZZ = 6'd3;
		
		6'd3: 	next_ZZ = 6'd10;
		
		6'd10: 	next_ZZ = 6'd17;
		
		6'd17: 	next_ZZ = 6'd24;
		
		6'd24: 	next_ZZ = 6'd32;
		
		6'd32: 	next_ZZ = 6'd25;
		
		6'd25: 	next_ZZ = 6'd18;
		
		6'd18: 	next_ZZ = 6'd11;
		
		6'd11: 	next_ZZ = 6'd4;
		
		6'd4: 	next_ZZ = 6'd5;
		
		6'd5: 	next_ZZ = 6'd12;
		
		6'd12: 	next_ZZ = 6'd19;
		
		6'd19: 	next_ZZ = 6'd26;
		
		6'd26: 	next_ZZ = 6'd33;
		
		6'd33: 	next_ZZ = 6'd40;
		
		6'd40: 	next_ZZ = 6'd48;
		
		6'd48: 	next_ZZ = 6'd41;
		
		6'd41: 	next_ZZ = 6'd34;
		
		6'd34: 	next_ZZ = 6'd27;
		
		6'd27: 	next_ZZ = 6'd20;
		
		6'd20: 	next_ZZ = 6'd13;
		
		6'd13: 	next_ZZ = 6'd6;
		
		6'd6: 	next_ZZ = 6'd7;
		
		6'd7: 	next_ZZ = 6'd14;
		
		6'd14: 	next_ZZ = 6'd21;
		
		6'd21: 	next_ZZ = 6'd28;
		
		6'd28: 	next_ZZ = 6'd35;
		
		6'd35: 	next_ZZ = 6'd42;
		
		6'd42: 	next_ZZ = 6'd49;
		
		6'd49: 	next_ZZ = 6'd56;
		
		6'd56: 	next_ZZ = 6'd57;
		
		6'd57: 	next_ZZ = 6'd50;
		
		6'd50: 	next_ZZ = 6'd43;
		
		6'd43: 	next_ZZ = 6'd36;
		
		6'd36: 	next_ZZ = 6'd29;
		
		6'd29: 	next_ZZ = 6'd22;
		
		6'd22: 	next_ZZ = 6'd15;
		
		6'd15: 	next_ZZ = 6'd23;
		
		6'd23: 	next_ZZ = 6'd30;
		
		6'd30: 	next_ZZ = 6'd37;
		
		6'd37: 	next_ZZ = 6'd44;
		
		6'd44: 	next_ZZ = 6'd51;
		
		6'd51: 	next_ZZ = 6'd58;
		
		6'd58: 	next_ZZ = 6'd59;
		
		6'd59: 	next_ZZ = 6'd52;
		
		6'd52: 	next_ZZ = 6'd45;
		
		6'd45: 	next_ZZ = 6'd38;
		
		6'd38: 	next_ZZ = 6'd31;
		
		6'd31: 	next_ZZ = 6'd39;
		
		6'd39: 	next_ZZ = 6'd46;
		
		6'd46: 	next_ZZ = 6'd53;
		
		6'd53: 	next_ZZ = 6'd60;
		
		6'd60: 	next_ZZ = 6'd61;
		
		6'd61: 	next_ZZ = 6'd54;
		
		6'd54: 	next_ZZ = 6'd47;
		
		6'd47: 	next_ZZ = 6'd55;
		
		6'd55: 	next_ZZ = 6'd62;
		
		6'd62: 	next_ZZ = 6'd63;
		
		default: next_ZZ = 6'd0;
	endcase
end



always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (Resetn == 1'b0) begin
		state 		<= S_M3_IDLE;	
		FS_start 	<= 1'b0;
		MM_CT_start <= 1'b0;
		MM_CS_start <= 1'b0;
		WS_start 	<= 1'b0;
		M2_done 	<= 1'b0;
	end else begin

		case (state)
		S_M2_IDLE: begin
			if (M3_start) begin
				state <= S_M2_START;		
							
			end
		end
		
		S_M3_START: begin
			FS_start <= 1'b1;
			state <= S_FS;			
		end
		
		default: state <= S_M2_IDLE;
		endcase
	end
end


//Multiplex memory access
always_comb begin

	case (state)	
	
	
	endcase

end


//DPRAM for S and S' values
dual_port_RAM0 dual_port_RAM_inst3 (
	.address_a ( RAM3_address[0] ),  //S
	.address_b ( RAM3_address[1] ),  //S'
	.clock 	( CLOCK_50_I ),
	.data_a ( RAM3_write_data[0] ),   //S
	.data_b ( RAM3_write_data[1] ),   //S'
	.wren_a ( RAM3_write_enable[0] ), //S
	.wren_b ( RAM3_write_enable[1] ), //S'
	.q_a ( RAM3_read_data[0] ), 	  //S
	.q_b ( RAM3_read_data[1] ) 		  //S'
);
	
	 

endmodule

