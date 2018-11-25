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
		input  logic   [15:0] 	SRAM_read_data,
		output logic            SRAM_we_n,
		
		output logic M2_done,
		input  logic M2_start

);


M2_state_type state;
 
logic common_case;

logic [5:0] SC, CB, C_END;
logic [4:0] RB;
logic [17:0] Y_address, U_address, V_address, Base_address;


logic [31:0] RAM0_write_data[1:0];
logic [31:0] RAM0_read_data[1:0];
logic [6:0]  RAM0_address[1:0];
logic        RAM0_write_enable[1:0];

logic [31:0] RAM1_write_data;
logic [31:0] RAM1_read_data[1:0];
logic [6:0]  RAM1_address;
logic 		 RAM1_write_enable;

logic [31:0] RAM2_read_data[1:0];
logic [6:0]  RAM2_address[1:0];


//Fetch S'
logic [31:0] FS_write_data;
logic [6:0]  FS_write_address;
logic  		 FS_write_enable;
logic  		 FS_done;
logic		 FS_memory_end;
logic  		 FS_start;
logic [17:0] FS_SRAM_address;
logic [15:0] FS_SRAM_read_data;

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
logic 		 MM_CS_RAM1_write_enable;

logic [31:0] MM_CS_RAM2_read_data [1:0];
logic [6:0]  MM_CS_RAM2_address	  [1:0];

logic [31:0] MM_CS_RAM0_write_data;
logic [6:0]  MM_CS_RAM0_address;
logic 		 MM_CS_RAM0_write_enable;

//Write S
logic 		 WS_done, WS_start;
logic [31:0] WS_DPRAM0_read_data;
logic [6:0]	 WS_DPRAM0_read_address;
logic 		 WS_DPRAM0_write_enable;
logic [17:0] WS_SRAM_address;
logic [15:0] WS_SRAM_write_data;
logic 		 WS_SRAM_we_n;


always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (Resetn == 1'b0) begin
		state 		<= S_M2_IDLE;	
		FS_start 	<= 1'b0;
		MM_CT_start <= 1'b0;
		MM_CS_start <= 1'b0;
		WS_start 	<= 1'b0;
		M2_done 	<= 1'b0;
	end else begin

		case (state)
		S_M2_IDLE: begin
			if (M2_start) begin
				state <= S_M2_START;		
							
			end
		end
		
		S_M2_START: begin
			FS_start <= 1'b1;
			state <= S_FS;			
		end
		
		S_FS: begin
			FS_start <= 1'b0;
			if (FS_done) begin
				MM_CT_start <= 1'b1;
				state <= S_CT;
			end
		end
		
		S_CT: begin
			
									
			if (MM_CT_done) begin
				FS_start 	<= 1'b1;
				MM_CT_start <= 1'b0;
				MM_CS_start <= 1'b1;
				state		<= S_CS;
			end	else begin
				FS_start 	<= 1'b0;
				MM_CT_start <= 1'b0;
				WS_start 	<= 1'b0;
			end
			
		end
		
		S_CS: begin
						
			if (MM_CS_done) begin
				MM_CS_start <= 1'b0;				
				WS_start	<= 1'b1;
				
				if (FS_memory_end) begin
					state 	<= S_WS;
				end else begin
					MM_CT_start	<= 1'b1;
					state 	<= S_CT;
				end
				
			end else begin
				MM_CS_start <= 1'b0;	
				FS_start	<= 1'b0;
				MM_CT_start <= 1'b0;
				WS_start 	<= 1'b0;
			end
		
		end
		
		
		S_WS: begin
			
			WS_start <= 1'b0;
			if (WS_done) begin
				M2_done <= 1'b1;
				state 	<= S_M2_IDLE;
			end
		
		end
		

		
		default: state <= S_M2_IDLE;
		endcase
	end
end


//Multiplex memory access
always_comb begin

	case (state)	
	S_FS: begin
		
		//SRAM ACCESS
		SRAM_address			= FS_SRAM_address;
		SRAM_write_data			= 16'd0;
		SRAM_we_n				= 1'd1;
		
		//DPRAM ACCESS
		RAM0_write_data[1]		= FS_write_data;
		RAM0_address[1] 		= FS_write_address;
		RAM0_write_enable[1]	= FS_write_enable;
		
		RAM0_write_data[0]	 	= 32'd0;		
		RAM0_address[0]		 	= 7'd0;
		RAM0_write_enable[0] 	= 1'd0;
		
		RAM1_write_data		 	= 32'd0;
		RAM1_address		 	= 7'd0;
		RAM1_write_enable	 	= 1'd0;
		
		RAM2_address[0]		 	= 7'd0;
		RAM2_address[1]		 	= 7'd0;
		
		//FS ACCESS
		FS_SRAM_read_data	 	= SRAM_read_data;
		
		//CT ACCESS
		MM_CT_RAM0_read_data 	= 32'd0;
		MM_CT_RAM2_read_data[0] = 32'd0;
		MM_CT_RAM2_read_data[1] = 32'd0;
		
		//CS ACCESS
		MM_CS_RAM1_read_data 	= 32'd0;
		MM_CS_RAM2_read_data[0] = 32'd0;
		MM_CS_RAM2_read_data[1] = 32'd0;
		
		//WS ACCESS
		WS_DPRAM0_read_data		= 32'd0;
		
	end
	
	S_CT: begin
	
		//SRAM ACCESS
		SRAM_address			= WS_SRAM_address;
		SRAM_write_data			= WS_SRAM_write_data;
		SRAM_we_n				= WS_SRAM_we_n;
		
		//DPRAM ACCESS
		RAM0_write_data[1]		= 32'd0;
		RAM0_address[1] 		= MM_CT_RAM0_address;
		RAM0_write_enable[1]	= 1'd0;
		
		RAM0_write_data[0]	 	= 32'd0;		
		RAM0_address[0]		 	= WS_DPRAM0_read_address;
		RAM0_write_enable[0] 	= 1'd0;
		
		RAM1_write_data		 	= MM_CT_RAM1_write_data;
		RAM1_address		 	= MM_CT_RAM1_address;
		RAM1_write_enable	 	= MM_CT_RAM1_write_enable;
		
		RAM2_address[0]		 	= MM_CT_RAM2_address[0];
		RAM2_address[1]		 	= MM_CT_RAM2_address[1];
		
		//FS ACCESS
		FS_SRAM_read_data	 	= 16'd0;
		
		//CT ACCESS
		MM_CT_RAM0_read_data 	= RAM0_read_data[1];
		MM_CT_RAM2_read_data[0] = RAM2_read_data[0];
		MM_CT_RAM2_read_data[1] = RAM2_read_data[1];
		
		//CS ACCESS
		MM_CS_RAM1_read_data 	= 32'd0;
		MM_CS_RAM2_read_data[0] = 32'd0;
		MM_CS_RAM2_read_data[1] = 32'd0;
		
		//WS ACCESS
		WS_DPRAM0_read_data		= RAM0_read_data[0];	
	
	end
	
	S_CS: begin
	
		//SRAM ACCESS
		SRAM_address			= FS_SRAM_address;
		SRAM_write_data			= 16'd0;
		SRAM_we_n				= 1'd1;
		
		//DPRAM ACCESS
		RAM0_write_data[1]		= FS_write_data;
		RAM0_address[1] 		= FS_write_address;
		RAM0_write_enable[1]	= FS_write_enable;
		
		RAM0_write_data[0]	 	= MM_CS_RAM0_write_data;		
		RAM0_address[0]		 	= MM_CS_RAM0_address;
		RAM0_write_enable[0] 	= MM_CS_RAM0_write_enable;
		
		RAM1_write_data		 	= 32'd0;
		RAM1_address		 	= MM_CS_RAM1_address;
		RAM1_write_enable	 	= 1'd0;
		
		RAM2_address[0]		 	= MM_CS_RAM2_address[0];
		RAM2_address[1]		 	= MM_CS_RAM2_address[1];
		
		//FS ACCESS
		FS_SRAM_read_data	 	= SRAM_read_data;
		
		//CT ACCESS
		MM_CT_RAM0_read_data 	= 32'd0;
		MM_CT_RAM2_read_data[0] = 32'd0;
		MM_CT_RAM2_read_data[1] = 32'd0;
		
		//CS ACCESS
		MM_CS_RAM1_read_data 	= RAM1_read_data[0];
		MM_CS_RAM2_read_data[0] = RAM2_read_data[0];
		MM_CS_RAM2_read_data[1] = RAM2_read_data[1];
		
		//WS ACCESS
		WS_DPRAM0_read_data		= 32'd0;	
	
	end
	
	S_WS: begin
	
		//SRAM ACCESS
		SRAM_address			= WS_SRAM_address;
		SRAM_write_data			= WS_SRAM_write_data;
		SRAM_we_n				= WS_SRAM_we_n;
		
		//DPRAM ACCESS
		RAM0_write_data[1]		= 32'd0;
		RAM0_address[1] 		= 7'd0;
		RAM0_write_enable[1]	= 1'd0;
		
		RAM0_write_data[0]	 	= 32'd0;		
		RAM0_address[0]		 	= WS_DPRAM0_read_address;
		RAM0_write_enable[0] 	= 1'd0;
		
		RAM1_write_data		 	= 32'd0;
		RAM1_address		 	= 7'd0;
		RAM1_write_enable	 	= 1'd0;
		
		RAM2_address[0]		 	= 7'd0;
		RAM2_address[1]		 	= 7'd0;
		
		//FS ACCESS
		FS_SRAM_read_data	 	= 16'd0;
		
		//CT ACCESS
		MM_CT_RAM0_read_data 	= 32'd0;
		MM_CT_RAM2_read_data[0] = 32'd0;
		MM_CT_RAM2_read_data[1] = 32'd0;
		
		//CS ACCESS
		MM_CS_RAM1_read_data 	= 32'd0;
		MM_CS_RAM2_read_data[0] = 32'd0;
		MM_CS_RAM2_read_data[1] = 32'd0;
		
		//WS ACCESS
		WS_DPRAM0_read_data		= RAM0_read_data[0];	
	
	end
	
	default: begin
	
		//SRAM ACCESS
		SRAM_address			= 18'd0;
		SRAM_write_data			= 16'd0;
		SRAM_we_n				= 1'd1;
		
		//DPRAM ACCESS
		RAM0_write_data[1]		= 32'd0;
		RAM0_address[1] 		= 7'd0;
		RAM0_write_enable[1]	= 1'd0;
		
		RAM0_write_data[0]	 	= 32'd0;		
		RAM0_address[0]		 	= 7'd0;
		RAM0_write_enable[0] 	= 1'd0;
		
		RAM1_write_data		 	= 32'd0;
		RAM1_address		 	= 7'd0;
		RAM1_write_enable	 	= 1'd0;
		
		RAM2_address[0]		 	= 7'd0;
		RAM2_address[1]		 	= 7'd0;
		
		//FS ACCESS
		FS_SRAM_read_data	 	= 16'd0;
		
		//CT ACCESS
		MM_CT_RAM0_read_data 	= 32'd0;
		MM_CT_RAM2_read_data[0] = 32'd0;
		MM_CT_RAM2_read_data[1] = 32'd0;
		
		//CS ACCESS
		MM_CS_RAM1_read_data 	= 32'd0;
		MM_CS_RAM2_read_data[0] = 32'd0;
		MM_CS_RAM2_read_data[1] = 32'd0;
		
		//WS ACCESS
		WS_DPRAM0_read_data		= 32'd0;		
	
	end
	endcase
	
end

WS WS_unit (
	
	.CLOCK_50_I(CLOCK_50_I),
	.Resetn(Resetn),
	
	.SRAM_address(WS_SRAM_address),
	.SRAM_we_n(WS_SRAM_we_n),
	.SRAM_write_data(WS_SRAM_write_data),
	
	.WS_done(WS_done),
	.WS_start(WS_start),
	
	.S_read_data(WS_DPRAM0_read_data),
	.S_read_address(WS_DPRAM0_read_address),
	.S_write_enable(WS_DPRAM0_write_enable)

);


FS FS_unit (
	.CLOCK_50_I(CLOCK_50_I),
	.Resetn(Resetn),
	
	.SRAM_address(FS_SRAM_address),
	.SRAM_read_data(FS_SRAM_read_data),
	
	.FS_done(FS_done),
	.FS_memory_end(FS_memory_end),
	.FS_start(FS_start),
	
	.FS_write_data(FS_write_data),
	.FS_write_address(FS_write_address),
	.FS_write_enable(FS_write_enable)

);
	
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
	.clock 	( CLOCK_50_I ),
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

