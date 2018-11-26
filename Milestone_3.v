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
		
		output logic 			M3_memory_end,
		
			
		output logic   [31:0] 	RAM3_write_data,
		output logic   [31:0] 	RAM3_read_data[1:0],
		input  logic   [6:0]  	RAM3_address_in,		
		output logic   [6:0]    RAM3_address,
		output logic        	RAM3_write_enable,
			
		output logic 			M3_done,
		input  logic 			M3_start	

);


M3_state_type state;
 
logic common_case;

logic [12:0] BC;
logic [17:0] Base_address;

logic		 first_run;

logic [2:0]  Num_write_cycles;
logic [4:0]  Num_shifted;
logic  		 Decode_enable;
logic [47:0] M3_SReg;
logic [47:0] Barrel_SReg;
logic [5:0]  SReg_end;

logic [5:0]  ZZ_position, next_ZZ;
logic [5:0]  position;
logic [3:0]  diagonal_index;
logic		 Q_matrix;
logic [2:0]  Q_shift;

logic [15:0] WIDTH;
logic [15:0] HEIGHT;
logic [15:0] SRAM_buffer;


//SRAM
logic [17:0] read_address;
//DPRAM
/* logic [31:0] RAM3_write_data;
logic [31:0] RAM3_read_data[1:0];
logic [6:0]  RAM3_address;
logic        RAM3_write_enable; */

assign SRAM_we_n = 1'b1;
assign SRAM_write_data = 16'd0;

//Determine diagonal_index
assign diagonal_index = {1'b0, ZZ_position[5:3]} + {1'b0, ZZ_position[2:0]};


//Determine number of shifts for Q matrix point multiplication
always_comb begin

	case(Q_matrix) 
	
		1'b0: begin
			
			case(diagonal_index) 
				
				4'd0:  begin
					Q_shift = 3'd3;
				end
				
				4'd1:  begin
					Q_shift = 3'd2;
				end
				
				4'd2:  begin
					Q_shift = 3'd3;
				end
				
				4'd3:  begin
					Q_shift = 3'd3;
				end
				
				4'd4:  begin
					Q_shift = 3'd4;
				end
				
				4'd5:  begin
					Q_shift = 3'd4;
				end
				
				4'd6:  begin
					Q_shift = 3'd5;
				end
				
				4'd7:  begin
					Q_shift = 3'd5;
				end
				
				4'd8:  begin
					Q_shift = 3'd6;
				end
				
				4'd9:  begin
					Q_shift = 3'd6;
				end
				
				4'd10:  begin
					Q_shift = 3'd6;
				end
				
				4'd11:  begin
					Q_shift = 3'd6;
				end
				
				4'd12:  begin
					Q_shift = 3'd6;
				end
				
				4'd13:  begin
					Q_shift = 3'd6;
				end
				
				4'd14:  begin
					Q_shift = 3'd6;
				end
				
				default: begin 
					Q_shift = 3'd0;
				end
			
			endcase
		
		end
		
		
		
		1'b1: begin
		
			case(diagonal_index) 
			
				4'd0:  begin
					Q_shift = 3'd3;
				end
				
				4'd1:  begin
					Q_shift = 3'd1;
				end
				
				4'd2:  begin
					Q_shift = 3'd1;
				end
				
				4'd3:  begin
					Q_shift = 3'd1;
				end
				
				4'd4:  begin
					Q_shift = 3'd2;
				end
				
				4'd5:  begin
					Q_shift = 3'd2;
				end
				
				4'd6:  begin
					Q_shift = 3'd3;
				end
				
				4'd7:  begin
					Q_shift = 3'd3;
				end
				
				4'd8:  begin
					Q_shift = 3'd4;
				end
				
				4'd9:  begin
					Q_shift = 3'd4;
				end
				
				4'd10:  begin
					Q_shift = 3'd4;
				end
				
				4'd11:  begin
					Q_shift = 3'd5;
				end
				
				4'd12:  begin
					Q_shift = 3'd5;
				end
				
				4'd13:  begin
					Q_shift = 3'd5;
				end
				
				4'd14:  begin
					Q_shift = 3'd5;
				end
				
				default: begin 
					Q_shift = 3'd0;
				end	
			endcase
		
		end

	endcase
end


//Determine write data

always_ff @ (posedge CLOCK_50_I or negedge Resetn) begin
	if (Resetn == 1'b0) begin
		first_run 		<= 1'b1;
		Q_matrix		<= 1'b0;
		ZZ_position 	<= 6'd0;
		position		<= 6'd0;
		Num_write_cycles<= 3'd0;
		Num_shifted 	<= 5'd0;
		Decode_enable	<= 1'b0;
		SReg_end		<= 6'd0;
		BC				<= 13'd0;
		read_address	<= 18'd76800;
		M3_done 		<= 1'b0;
		M3_memory_end   <= 1'b0;
		RAM3_write_enable<= 1'b0;
		RAM3_write_data <= 32'd0;
		RAM3_address	<= 7'd0;
		SRAM_address	<= 18'd76800;
		WIDTH			<= 16'd0;
		HEIGHT			<= 16'd0;
		M3_SReg			<= 48'd0;
		SRAM_buffer 	<= 16'd0;
		state 			<= S_M3_START;
	end else begin

		case (state)
		S_M3_START: begin
			first_run 		<= 1'b1;
			Q_matrix		<= 1'b0;
			ZZ_position 	<= 6'd0;
			position		<= 6'd0;
			Num_write_cycles<= 3'd0;
			Num_shifted 	<= 5'd0;
			Decode_enable	<= 1'b0;
			SReg_end		<= 6'd0;
			BC				<= 13'd0;
			M3_memory_end	<= 1'b0;
			read_address	<= 18'd76800;
			M3_done 		<= 1'b0;
			RAM3_write_enable <= 1'b0;
			RAM3_write_data <= 32'd0;
			SRAM_address	<= 18'd76800;
			M3_SReg			<= 48'd0;
			SRAM_buffer 	<= 16'd0;
			state 			<= S_M3_IDLE;			
		end
		
		S_M3_IDLE: begin
			M3_done <= 1'b0;
			
			if (M3_done) begin
				BC <= BC + 13'd1;
				if ( BC == 13'd2399) begin
					M3_memory_end <= 1'b1;
				end
			end
			
			
			
			if (M3_start) begin
				if (first_run) begin
					state 	  <= S_M3_LI_H1;
					first_run <= 1'b0;
				end else begin
					if (SReg_end >= 6'd16) begin // Once half of the buffer has been depleted
						Decode_enable <= 1'b0; 
					end				
					state     <= S_M3_CC;					
				end
			end 
			
			/* else begin
				if (SReg_end >= 6'd16) begin
				
				Decode_enable <= 1'b1;
				SRAM_address <= SRAM_address + 18'd1;
				SReg_end 	 <= SReg_end - 6'd16;
				case (SReg_end)
					6'd16: begin
						M3_SReg <= {M3_SReg[47:16], SRAM_read_data};
					end
					6'd17: begin
						M3_SReg <= {M3_SReg[47:17], SRAM_read_data, 1'd0};
					end
					6'd18: begin
						M3_SReg <= {M3_SReg[47:18], SRAM_read_data, 2'd0};
					end
					6'd19: begin
						M3_SReg <= {M3_SReg[47:19], SRAM_read_data, 3'd0};
					end
					6'd20: begin
						M3_SReg <= {M3_SReg[47:20], SRAM_read_data, 4'd0};
					end
					6'd21: begin
						M3_SReg <= {M3_SReg[47:21], SRAM_read_data, 5'd0};
					end
					6'd22: begin
						M3_SReg <= {M3_SReg[47:22], SRAM_read_data, 6'd0};
					end	
					6'd23: begin
						M3_SReg <= {M3_SReg[47:23], SRAM_read_data, 7'd0};
					end						
					6'd24: begin
						M3_SReg <= {M3_SReg[47:24], SRAM_read_data, 8'd0};
					end
					6'd25: begin
						M3_SReg <= {M3_SReg[47:25], SRAM_read_data, 9'd0};
					end
					6'd26: begin
						M3_SReg <= {M3_SReg[47:26], SRAM_read_data, 10'd0};
					end
					6'd27: begin
						M3_SReg <= {M3_SReg[47:27], SRAM_read_data, 11'd0};
					end
					6'd28: begin
						M3_SReg <= {M3_SReg[47:28], SRAM_read_data, 12'd0};
					end
					6'd29: begin
						M3_SReg <= {M3_SReg[47:29], SRAM_read_data, 13'd0};
					end
					6'd30: begin
						M3_SReg <= {M3_SReg[47:30], SRAM_read_data, 14'd0};
					end
					6'd31: begin
						M3_SReg <= {M3_SReg[47:31], SRAM_read_data, 15'd0};
					end
					6'd32: begin
						M3_SReg <= {M3_SReg[47:32], SRAM_read_data, 16'd0};
					end
					6'd33: begin
						M3_SReg <= {M3_SReg[47:33], SRAM_read_data, 17'd0};
					end
					6'd34: begin
						M3_SReg <= {M3_SReg[47:34], SRAM_read_data, 18'd0};
					end
					6'd35: begin
						M3_SReg <= {M3_SReg[47:35], SRAM_read_data, 19'd0};
					end
					6'd36: begin
						M3_SReg <= {M3_SReg[47:36], SRAM_read_data, 20'd0};
					end
					6'd37: begin
						M3_SReg <= {M3_SReg[47:37], SRAM_read_data, 21'd0};
					end	
					6'd38: begin
						M3_SReg <= {M3_SReg[47:38], SRAM_read_data, 22'd0};					
					end
					6'd39: begin
						M3_SReg <= {M3_SReg[47:39], SRAM_read_data, 23'd0};					
					end
					6'd40: begin
						M3_SReg <= {M3_SReg[47:40], SRAM_read_data, 24'd0};
					end
					6'd41: begin
						M3_SReg <= {M3_SReg[47:41], SRAM_read_data, 25'd0};
					end
					6'd42: begin
						M3_SReg <= {M3_SReg[47:42], SRAM_read_data, 26'd0};
					end
					6'd43: begin
						M3_SReg <= {M3_SReg[47:43], SRAM_read_data, 27'd0};
					end
					6'd44: begin
						M3_SReg <= {M3_SReg[47:44], SRAM_read_data, 28'd0};
					end
					6'd45: begin
						M3_SReg <= {M3_SReg[47:45], SRAM_read_data, 29'd0};
					end
					6'd46: begin
						M3_SReg <= {M3_SReg[47:46], SRAM_read_data, 30'd0};
					end
					6'd47: begin
						M3_SReg <= {M3_SReg[47], SRAM_read_data, 31'd0};
					end
				
				endcase				
				
				end 
			end */
			
		end
		
		/////////////////////////////////////////////////////
		S_M3_LI_H1: begin
			//SRAM_address <= read_address;
			//read_address <= read_address + 18'd1;
			//SRAM_address   <= SRAM_address + 18'd1;
			state 		 <= S_M3_LI_H2;
		end
		
		S_M3_LI_H2: begin
			//SRAM_address <= read_address;
			//read_address <= read_address + 18'd1;		
			SRAM_address   <= SRAM_address + 18'd1;
			state <= S_M3_LI_H3;
		end
		
		S_M3_LI_H3: begin
			//SRAM_address <= read_address;
			//read_address <= read_address + 18'd1;			
			SRAM_address   <= SRAM_address + 18'd1;
			state	  <= S_M3_READ_DEAD;
		end
		
		S_M3_READ_DEAD: begin
			//SRAM_address <= read_address;
			//read_address <= read_address + 18'd1;			
			SRAM_address   <= SRAM_address + 18'd1;
			if (SRAM_read_data == 16'hDEAD)
				state <= S_M3_READ_BEEF;
		end
		
		S_M3_READ_BEEF: begin
			
			if (SRAM_read_data == 16'hBEEF)
				state <= S_M3_READ_WIDTH;
		end
		
		S_M3_READ_WIDTH: begin
			
			Q_matrix <= SRAM_read_data[15];
			//SHOULD ALWAYS BE 320 FOR OUR IMPLEMENTATION
			WIDTH	 <=	{1'b0, SRAM_read_data[14:0]};	
			state 	 <= S_M3_READ_HEIGHT;
		end
		
		S_M3_READ_HEIGHT: begin
			//SHOULD ALWAYS BE 240 FOR OUR IMPLEMENTATION
			HEIGHT	 <= SRAM_read_data;
			state	 <= S_M3_LI_1;
		end
		
		
		/////////////////////////////////////////////////////
		S_M3_LI_1: begin
			//SRAM_address <= read_address;
			//read_address <= read_address + 18'd1;
			SRAM_address   <= SRAM_address + 18'd1;
			state		 <= S_M3_LI_2;
		end
		
		S_M3_LI_2: begin
			//SRAM_address <= read_address;
			//read_address <= read_address + 18'd1;
			SRAM_address   <= SRAM_address + 18'd1;
			state 		 <= S_M3_LI_3;
		end		
		
		S_M3_LI_3: begin
			//SRAM_address <= read_address;
			//read_address <= read_address + 18'd1;
			SRAM_address   <= SRAM_address + 18'd1;
			state		 <= S_M3_LI_4;
		end
		
		S_M3_LI_4: begin
			SRAM_address   <= SRAM_address + 18'd1;
			M3_SReg[47:32]<= SRAM_read_data;
			SReg_end	  <= 6'd32;
			state		  <= S_M3_LI_5;
		end	
		
		S_M3_LI_5: begin
			M3_SReg[31:16] <= SRAM_read_data;
			SReg_end	   <= 6'd16;
			state 		   <= S_M3_LI_6;
		end
		
		S_M3_LI_6: begin
			M3_SReg[15:0] <= SRAM_read_data;
			SReg_end	   <= 6'd0;
			Decode_enable  <= 1'b1;
			state 		   <= S_M3_CC;
		end
		
		S_M3_CC: begin
			
			//if (SReg_end >= 6'd16) begin // Once half of the buffer has been depleted
			//	Decode_enable <= 1'b0;
			//end
			
			//if (Decode_enable) begin
				
				RAM3_write_enable <= 1'b1;
				
				case(M3_SReg[47:46]) 
					
					2'b00: begin
						
						RAM3_address <= ZZ_position;
						ZZ_position	 <= next_ZZ;
						
						//RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , Q_shift};
						M3_SReg			<= { M3_SReg[42:0] , 5'd0};
						SReg_end		<= SReg_end + 6'd5;
						
						case ( Q_shift ) 
							3'd1: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 1'd0};
							end
							
							3'd2: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 2'd0};
							end
							
							3'd3: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 3'd0};
							end
							
							3'd4: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 4'd0};
							end
							
							3'd5: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 5'd0};
							end
							
							3'd6: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 6'd0};
							end
													
						endcase
						
						state 			 <= S_M3_3_bit;
					end
					
					2'b01: begin
						
						//state <= S_M3_3_bit;
						RAM3_address <= ZZ_position;
						ZZ_position	 <= next_ZZ;
						
						//RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , Q_shift};
						M3_SReg			<= { M3_SReg[42:0] , 5'd0};
						SReg_end		<= SReg_end + 6'd5;
						
						case ( Q_shift ) 
							3'd1: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 1'd0};
							end
							
							3'd2: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 2'd0};
							end
							
							3'd3: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 3'd0};
							end
							
							3'd4: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 4'd0};
							end
							
							3'd5: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 5'd0};
							end
							
							3'd6: begin
								RAM3_write_data <= { {29{M3_SReg[45]}} , M3_SReg[45:43] , 6'd0};
							end
													
						endcase						
						
					end
					
					2'b10: begin
						case(M3_SReg[45])
							
							1'b0: begin
								
								//state  <= S_M3_6_bit;
								
								RAM3_address <= ZZ_position;
								ZZ_position  <= next_ZZ;
								
								//RAM3_write_data <= { {26{M3_SReg[44]}}, M3_SReg[44:39], Q_shift};
								M3_SReg 		<= { M3_SReg[38:0], 9'd0 };
								SReg_end		<= SReg_end + 6'd9;		

								case ( Q_shift ) 
									3'd1: begin
										RAM3_write_data <= { {26{M3_SReg[44]}}, M3_SReg[44:39], 1'd0};
									end
									
									3'd2: begin
										RAM3_write_data <= { {26{M3_SReg[44]}}, M3_SReg[44:39], 2'd0};
									end
									
									3'd3: begin
										RAM3_write_data <= { {26{M3_SReg[44]}}, M3_SReg[44:39], 3'd0};
									end
									
									3'd4: begin
										RAM3_write_data <= { {26{M3_SReg[44]}}, M3_SReg[44:39], 4'd0};
									end
									
									3'd5: begin
										RAM3_write_data <= { {26{M3_SReg[44]}}, M3_SReg[44:39], 5'd0};
									end
									
									3'd6: begin
										RAM3_write_data <= { {26{M3_SReg[44]}}, M3_SReg[44:39], 6'd0};
									end
															
								endcase								
								
							end
							
							1'b1: begin
								
								case(M3_SReg[44])
									
									1'b1: begin
										
										//state <= S_M3_9_bit;
										RAM3_address <= ZZ_position;
										ZZ_position  <= next_ZZ;
										
										//RAM3_write_data <= { {23{M3_SReg[43]}} , M3_SReg[43:35] , Q_shift };
										M3_SReg			<= { M3_SReg[34:0], 13'd0};
										SReg_end 		<= SReg_end + 6'd13;
										
										case ( Q_shift ) 
											3'd1: begin
												RAM3_write_data <= { {23{M3_SReg[43]}} , M3_SReg[43:35] , 1'd0 };
											end
											
											3'd2: begin
												RAM3_write_data <= { {23{M3_SReg[43]}} , M3_SReg[43:35] , 2'd0 };
											end
											
											3'd3: begin
												RAM3_write_data <= { {23{M3_SReg[43]}} , M3_SReg[43:35] , 3'd0 };
											end
											
											3'd4: begin
												RAM3_write_data <= { {23{M3_SReg[43]}} , M3_SReg[43:35] , 4'd0 };
											end
											
											3'd5: begin
												RAM3_write_data <= { {23{M3_SReg[43]}} , M3_SReg[43:35] , 5'd0 };
											end
											
											3'd6: begin
												RAM3_write_data <= { {23{M3_SReg[43]}} , M3_SReg[43:35] , 6'd0 };
											end
																	
										endcase										
										
									end 
									
									1'b0: begin
										
										RAM3_address 	 <= ZZ_position;
										ZZ_position		 <= next_ZZ;
										
										RAM3_write_data	 <= 32'd0;
										M3_SReg			 <= { M3_SReg[43:0] , 4'd0};
										SReg_end 		 <= SReg_end + 6'd4;
										
										state			 <= S_M3_ZEROS_TO_END;
									end
								
								endcase
								
							end
						
						endcase
					end
					
					
					2'b11: begin
							
						if (M3_SReg[45:43] == 3'd0) begin
							Num_write_cycles <= 3'd6;
						end else begin
							Num_write_cycles <= M3_SReg[45:43] - 3'd2;
						end
						
						
						RAM3_address <= ZZ_position;
						ZZ_position  <= next_ZZ;
						RAM3_write_data <= 32'd0;
						M3_SReg 		<= { M3_SReg[42:0] , 5'd0};
						SReg_end 		<= SReg_end + 6'd5;
						
						if (M3_SReg[45:43] != 3'd1) begin
							state <= S_M3_WRITE_ZEROS;
						end
					end
					
				endcase			
			
				if (ZZ_position == 6'd63) begin
					M3_done <= 1'b1;
					state   <= S_M3_IDLE;
				end
				
			//end //else begin //Decode_enable == 0
				//Decode_enable <= 1'b1;
				//SRAM_address <= SRAM_address + 18'd1;
				//SReg_end 	 <= SReg_end - 6'd16;
				case (SReg_end)
					6'd16: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:16], SRAM_read_data};
					end
					6'd17: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:17], SRAM_read_data, 1'd0};
					end
					6'd18: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:18], SRAM_read_data, 2'd0};
					end
					6'd19: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:19], SRAM_read_data, 3'd0};
					end
					6'd20: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:20], SRAM_read_data, 4'd0};
					end
					6'd21: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:21], SRAM_read_data, 5'd0};
					end
					6'd22: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:22], SRAM_read_data, 6'd0};
					end	
					6'd23: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:23], SRAM_read_data, 7'd0};
					end						
					6'd24: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:24], SRAM_read_data, 8'd0};
					end
					6'd25: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:25], SRAM_read_data, 9'd0};
					end
					6'd26: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:26], SRAM_read_data, 10'd0};
					end
					6'd27: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:27], SRAM_read_data, 11'd0};
					end
					6'd28: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:28], SRAM_read_data, 12'd0};
					end
					6'd29: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:29], SRAM_read_data, 13'd0};
					end
					6'd30: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:30], SRAM_read_data, 14'd0};
					end
					6'd31: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:31], SRAM_read_data, 15'd0};
					end
					6'd32: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:32], SRAM_read_data, 16'd0};
					end
					6'd33: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:33], SRAM_read_data, 17'd0};
					end
					6'd34: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:34], SRAM_read_data, 18'd0};
					end
					6'd35: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:35], SRAM_read_data, 19'd0};
					end
					6'd36: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:36], SRAM_read_data, 20'd0};
					end
					6'd37: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:37], SRAM_read_data, 21'd0};
					end	
					6'd38: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:38], SRAM_read_data, 22'd0};					
					end
					6'd39: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:39], SRAM_read_data, 23'd0};					
					end
					6'd40: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:40], SRAM_read_data, 24'd0};
					end
					6'd41: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:41], SRAM_read_data, 25'd0};
					end
					6'd42: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:42], SRAM_read_data, 26'd0};
					end
					6'd43: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:43], SRAM_read_data, 27'd0};
					end
					6'd44: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:44], SRAM_read_data, 28'd0};
					end
					6'd45: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:45], SRAM_read_data, 29'd0};
					end
					6'd46: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:46], SRAM_read_data, 30'd0};
					end
					6'd47: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47], SRAM_read_data, 31'd0};
					end
				
				endcase		
			
		end
		
		S_M3_3_bit: begin //Write second 3bit value from 00 opcode
			
			RAM3_address <= ZZ_position;
			ZZ_position	 <= next_ZZ;
			
			if (SReg_end >= 6'd16) begin // Once half of the buffer has been depleted
				Decode_enable <= 1'b0;
			end			
			
			//RAM3_write_data <= { {29{M3_SReg[47]}} , M3_SReg[47:45] , Q_shift};
			M3_SReg			<= { M3_SReg[44:0] , 3'd0};
			SReg_end		<= SReg_end + 6'd3;
			
			case ( Q_shift ) 
				3'd1: begin
					RAM3_write_data <= { {29{M3_SReg[47]}} , M3_SReg[47:45] , 1'd0};
				end
				
				3'd2: begin
					RAM3_write_data <= { {29{M3_SReg[47]}} , M3_SReg[47:45] , 2'd0};
				end
				
				3'd3: begin
					RAM3_write_data <= { {29{M3_SReg[47]}} , M3_SReg[47:45] , 3'd0};
				end
				
				3'd4: begin
					RAM3_write_data <= { {29{M3_SReg[47]}} , M3_SReg[47:45] , 4'd0};
				end
				
				3'd5: begin	
					RAM3_write_data <= { {29{M3_SReg[47]}} , M3_SReg[47:45] , 5'd0};
				end
				
				3'd6: begin
					RAM3_write_data <= { {29{M3_SReg[47]}} , M3_SReg[47:45] , 6'd0};
				end
										
			endcase			
			
			if (ZZ_position == 6'd63) begin
				M3_done <= 1'b1;
				state   <= S_M3_IDLE;
			end else begin
				state <= S_M3_CC;
			end
		end
	
		S_M3_WRITE_ZEROS: begin
			
			RAM3_address 	<= ZZ_position;
			ZZ_position 	<= next_ZZ;
			
			RAM3_write_data <= 32'd0;
			
			//if (SReg_end >= 6'd16) begin // Once half of the buffer has been depleted
				//Decode_enable <= 1'b0;
			//end
			
				case (SReg_end)
					6'd16: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:16], SRAM_read_data};
					end
					6'd17: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:17], SRAM_read_data, 1'd0};
					end
					6'd18: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:18], SRAM_read_data, 2'd0};
					end
					6'd19: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:19], SRAM_read_data, 3'd0};
					end
					6'd20: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:20], SRAM_read_data, 4'd0};
					end
					6'd21: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:21], SRAM_read_data, 5'd0};
					end
					6'd22: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:22], SRAM_read_data, 6'd0};
					end	
					6'd23: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:23], SRAM_read_data, 7'd0};
					end						
					6'd24: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:24], SRAM_read_data, 8'd0};
					end
					6'd25: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:25], SRAM_read_data, 9'd0};
					end
					6'd26: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:26], SRAM_read_data, 10'd0};
					end
					6'd27: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:27], SRAM_read_data, 11'd0};
					end
					6'd28: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:28], SRAM_read_data, 12'd0};
					end
					6'd29: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:29], SRAM_read_data, 13'd0};
					end
					6'd30: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:30], SRAM_read_data, 14'd0};
					end
					6'd31: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:31], SRAM_read_data, 15'd0};
					end
					6'd32: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:32], SRAM_read_data, 16'd0};
					end
					6'd33: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:33], SRAM_read_data, 17'd0};
					end
					6'd34: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:34], SRAM_read_data, 18'd0};
					end
					6'd35: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:35], SRAM_read_data, 19'd0};
					end
					6'd36: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:36], SRAM_read_data, 20'd0};
					end
					6'd37: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:37], SRAM_read_data, 21'd0};
					end	
					6'd38: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:38], SRAM_read_data, 22'd0};					
					end
					6'd39: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:39], SRAM_read_data, 23'd0};					
					end
					6'd40: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:40], SRAM_read_data, 24'd0};
					end
					6'd41: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:41], SRAM_read_data, 25'd0};
					end
					6'd42: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:42], SRAM_read_data, 26'd0};
					end
					6'd43: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:43], SRAM_read_data, 27'd0};
					end
					6'd44: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:44], SRAM_read_data, 28'd0};
					end
					6'd45: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:45], SRAM_read_data, 29'd0};
					end
					6'd46: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:46], SRAM_read_data, 30'd0};
					end
					6'd47: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47], SRAM_read_data, 31'd0};
					end
				
				endcase			

			
			if (Num_write_cycles == 3'd0 ) begin
				if (ZZ_position == 6'd63) begin
					M3_done <= 1'b1;
					state   <= S_M3_IDLE;
				end else begin
					state <= S_M3_CC;
				end
			end	else begin
				Num_write_cycles <= Num_write_cycles - 3'd1;
			end
		end		
		
		S_M3_ZEROS_TO_END: begin

			RAM3_address 	 <= ZZ_position;
			ZZ_position		 <= next_ZZ;
			
			RAM3_write_data	 <= 32'd0;		

			//if (SReg_end >= 6'd16) begin // Once half of the buffer has been depleted
				//Decode_enable <= 1'b0;
			//end
			
			if (ZZ_position == 6'd63) begin
				M3_done <= 1'b1;
				state   <= S_M3_IDLE;
			end //else begin
				//state <= S_M3_CC;
			//end		
			
			case (SReg_end)
					6'd16: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:16], SRAM_read_data};
					end
					6'd17: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:17], SRAM_read_data, 1'd0};
					end
					6'd18: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:18], SRAM_read_data, 2'd0};
					end
					6'd19: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:19], SRAM_read_data, 3'd0};
					end
					6'd20: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:20], SRAM_read_data, 4'd0};
					end
					6'd21: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:21], SRAM_read_data, 5'd0};
					end
					6'd22: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:22], SRAM_read_data, 6'd0};
					end	
					6'd23: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:23], SRAM_read_data, 7'd0};
					end						
					6'd24: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:24], SRAM_read_data, 8'd0};
					end
					6'd25: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:25], SRAM_read_data, 9'd0};
					end
					6'd26: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:26], SRAM_read_data, 10'd0};
					end
					6'd27: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;
						M3_SReg <= {M3_SReg[47:27], SRAM_read_data, 11'd0};
					end
					6'd28: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:28], SRAM_read_data, 12'd0};
					end
					6'd29: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:29], SRAM_read_data, 13'd0};
					end
					6'd30: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:30], SRAM_read_data, 14'd0};
					end
					6'd31: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:31], SRAM_read_data, 15'd0};
					end
					6'd32: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:32], SRAM_read_data, 16'd0};
					end
					6'd33: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:33], SRAM_read_data, 17'd0};
					end
					6'd34: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:34], SRAM_read_data, 18'd0};
					end
					6'd35: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:35], SRAM_read_data, 19'd0};
					end
					6'd36: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:36], SRAM_read_data, 20'd0};
					end
					6'd37: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:37], SRAM_read_data, 21'd0};
					end	
					6'd38: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:38], SRAM_read_data, 22'd0};					
					end
					6'd39: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:39], SRAM_read_data, 23'd0};					
					end
					6'd40: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:40], SRAM_read_data, 24'd0};
					end
					6'd41: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:41], SRAM_read_data, 25'd0};
					end
					6'd42: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:42], SRAM_read_data, 26'd0};
					end
					6'd43: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:43], SRAM_read_data, 27'd0};
					end
					6'd44: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:44], SRAM_read_data, 28'd0};
					end
					6'd45: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:45], SRAM_read_data, 29'd0};
					end
					6'd46: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47:46], SRAM_read_data, 30'd0};
					end
					6'd47: begin
						SRAM_address <= SRAM_address + 18'd1;
						SReg_end 	 <= SReg_end - 6'd16;					
						M3_SReg <= {M3_SReg[47], SRAM_read_data, 31'd0};
					end
				
				endcase
					
		end
		
		
		default: state <= S_M3_IDLE;
		endcase
	end
end




//DPRAM for S and S' values
dual_port_RAM3 dual_port_RAM_inst3 (
	.address_a ( RAM3_address_in ),  //S
	.address_b ( RAM3_address ),  //S'
	.clock 	( CLOCK_50_I ),
	.data_a ( 32'd0 ),   //S
	.data_b ( RAM3_write_data ),   //S'
	.wren_a ( 1'b0 ), //S
	.wren_b ( RAM3_write_enable ), //S'
	.q_a ( RAM3_read_data[0] ), 	  //S
	.q_b ( RAM3_read_data[1] ) 		  //S'
);
	
//Next Zig-Zag position
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
	 

endmodule

