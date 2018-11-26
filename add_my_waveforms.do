

# add waves to waveform
add wave Clock_50
add wave -divider {some label for my divider}
add wave uut/SRAM_we_n
add wave uut/state

add wave 				uut/M2_unit/state
add wave 				uut/M2_unit/M3_unit/state
add wave 				uut/M2_unit/M3_unit/M3_done
add wave				uut/M2_unit/M3_unit/Decode_enable
add wave 				uut/M2_unit/M3_unit/M3_SReg
add wave -binary 		uut/M2_unit/M3_unit/SRAM_read_data
add wave -hexadecimal	uut/M2_unit/M3_unit/SRAM_read_data
add wave -unsigned		uut/M2_unit/M3_unit/Num_write_cycles
add wave -unsigned		uut/M2_unit/M3_unit/SReg_end
add wave -unsigned		uut/M2_unit/M3_unit/Q_shift

add wave 				uut/M2_unit/M3_unit/M3_memory_end
add wave -decimal		uut/M2_unit/M3_unit/BC
add wave 				uut/M2_unit/M3_unit/Q_matrix
add wave -decimal		uut/M2_unit/M3_unit/WIDTH
add wave -decimal		uut/M2_unit/M3_unit/HEIGHT
add wave 				uut/M2_unit/M3_unit/first_run
add wave -unsigned		uut/M2_unit/M3_unit/ZZ_position
add wave -unsigned		uut/M2_unit/M3_unit/next_ZZ
add wave -decimal		uut/M2_unit/M3_unit/diagonal_index

add wave -divider
add wave -divider {SRAM Access}

add wave -hexadecimal 	uut/M2_unit/SRAM_read_data
add wave  				uut/M2_unit/SRAM_we_n
add wave -unsigned 		uut/SRAM_address
add wave -hexadecimal 	uut/SRAM_write_data
add wave -hexadecimal 	uut/SRAM_read_data


add wave -divider {DPRAM Access}

add wave -hexadecimal 	uut/M2_unit/RAM0_read_data
add wave -hexadecimal 	uut/M2_unit/RAM0_write_data
add wave -unsigned 	  	uut/M2_unit/RAM0_address
add wave 			  	uut/M2_unit/RAM0_write_enable
add wave -divider

add wave -hexadecimal 	uut/M2_unit/RAM1_read_data
add wave -hexadecimal 	uut/M2_unit/RAM1_write_data
add wave -unsigned 		uut/M2_unit/RAM1_address
add wave 			  	uut/M2_unit/RAM1_write_enable

add wave -divider
add wave -hexadecimal 	uut/M2_unit/RAM2_read_data
add wave -unsigned	  	uut/M2_unit/RAM2_address
#add wave 			  	uut/M2_unit/RAM2_write_enable


add wave -hexadecimal	uut/M2_unit/M3_unit/read_address
add wave -unsigned		uut/M2_unit/M3_unit/RAM3_address
add wave -unsigned		uut/M2_unit/M3_unit/RAM3_address_in
add wave -decimal 		uut/M2_unit/M3_unit/RAM3_write_data
add wave -decimal		uut/M2_unit/M3_unit/RAM3_read_data
add wave 				uut/M2_unit/M3_unit/RAM3_write_enable

#add wave -divider {SRAM Access}

#add wave -hexadecimal 	uut/M2_unit/M3_unit/SRAM_read_data
#add wave  				uut/M2_unit/M3_unit/SRAM_we_n
#add wave -unsigned 		uut/SRAM_address
#add wave -hexadecimal 	uut/SRAM_write_data
#add wave -hexadecimal 	uut/SRAM_read_data



add wave uut/M2_unit/state
add wave -divider 
add wave -divider {Module Conditions}

#add wave uut/M2_unit/FS_memory_end
#add wave uut/M2_unit/FS_start
#add wave uut/M2_unit/FS_done

add wave -divider 
add wave uut/M2_unit/MM_CT_start
add wave uut/M2_unit/MM_CT_done
add wave -divider 
add wave uut/M2_unit/MM_CS_start
add wave uut/M2_unit/MM_CS_done
add wave -divider 
add wave uut/M2_unit/WS_start
add wave uut/M2_unit/WS_done

#add wave -divider {FS}

#add wave 					uut/M2_unit/FS_unit/state
#add wave -unsigned 		uut/M2_unit/FS_unit/write_address
#add wave -unsigned 		uut/M2_unit/FS_unit/FS_write_address
#add wave -hexadecimal 		uut/M2_unit/FS_unit/FS_write_data
#add wave -unsigned 		uut/M2_unit/FS_unit/CB
#add wave -unsigned 		uut/M2_unit/FS_unit/RB

#add wave -unsigned 		uut/M2_unit/FS_unit/Base_address
#add wave -unsigned 		uut/M2_unit/FS_unit/read_address

add wave -divider {CT}
			
add wave -hexadecimal 	uut/M2_unit/MM_unit_CT/P_write_data
add wave -hexadecimal 	uut/M2_unit/MM_unit_CT/product_out
add wave -hexadecimal 	uut/M2_unit/MM_unit_CT/product

add wave -unsigned 		uut/M2_unit/MM_unit_CT/P_write_address
add wave  				uut/M2_unit/MM_unit_CT/P_write_enable
add wave -unsigned 		uut/M2_unit/MM_unit_CT/god_counter
add wave -unsigned 		uut/M2_unit/MM_unit_CT/w_counter


add wave -decimal		uut/M2_unit/MM_unit_CT/mult_in_C
add wave -decimal 		uut/M2_unit/MM_unit_CT/mult_in_T_S
add wave -hexadecimal	uut/M2_unit/MM_unit_CT/A_read_data
add wave -hexadecimal	uut/M2_unit/MM_unit_CT/A_read_address


add wave -divider {CS}

add wave -hexadecimal 	uut/M2_unit/MM_unit_CS/P_write_data
add wave -unsigned 		uut/M2_unit/MM_unit_CS/P_write_address
add wave  				uut/M2_unit/MM_unit_CS/P_write_enable
add wave -unsigned 		uut/M2_unit/MM_unit_CS/god_counter
#add wave -unsigned 		uut/M2_unit/MM_unit_CS/w_counter


add wave -unsigned		uut/M2_unit/MM_unit_CS/mult_in_C
add wave -unsigned 		uut/M2_unit/MM_unit_CS/mult_in_T_S
add wave -unsigned 		uut/M2_unit/MM_unit_CS/A_read_data

add wave -divider {WS}

add wave 				uut/M2_unit/WS_unit/state
add wave -unsigned 		uut/M2_unit/WS_unit/SRAM_address
add wave -unsigned 		uut/M2_unit/WS_unit/write_address
add wave -unsigned 		uut/M2_unit/WS_unit/SRAM_write_data
add wave -unsigned 		uut/M2_unit/WS_unit/write_address
add wave				uut/M2_unit/WS_unit/WS_done
add wave				uut/M2_unit/WS_unit/WS_memory_end
add wave -unsigned 		uut/M2_unit/WS_unit/SC
add wave -unsigned 		uut/M2_unit/WS_unit/WC
add wave -unsigned 		uut/M2_unit/WS_unit/CB
add wave -unsigned 		uut/M2_unit/WS_unit/RB

add wave -unsigned 		uut/M2_unit/WS_unit/Base_address
add wave -hexadecimal	uut/M2_unit/WS_unit/S_read_data
add wave -unsigned 		uut/M2_unit/WS_unit/S_read_address
#add wave -hexadecimal 	uut/M2_unit/WS_unit/clipped_read_data
#add wave -hexadecimal	uut/M2_unit/WS_unit/clipped_buffer




#add wave uut/M1_unit/state
#add wave uut/M1_unit/cycle




#add wave uut/M1_unit/read_end_Y

#add wave uut/M1_unit/enable_U
#add wave uut/M1_unit/enable_V
#add wave uut/M1_unit/load_U_buffer
#add wave uut/M1_unit/load_V_buffer

#add wave uut/M1_unit/FIR_unit/sel_mul_in
#add wave uut/M1_unit/FIR_unit/U_V
#add wave uut/M1_unit/RGB_unit/sel_rgb_mul

#add wave -hexadecimal uut/M1_unit/FIR_unit/U_SReg
#add wave -hexadecimal uut/M1_unit/FIR_unit/V_SReg
#add wave -hexadecimal uut/M1_unit/FIR_unit/V_in_buffer

#add wave -unsigned uut/M1_unit/Y_RGB
#add wave -unsigned uut/M1_unit/Y_buff
#add wave -unsigned uut/M1_unit/U_RGB
#add wave -unsigned uut/M1_unit/V_RGB

#add wave -unsigned uut/M1_unit/FIR_BUFF_U
#add wave -unsigned uut/M1_unit/FIR_BUFF_V
#add wave -unsigned uut/M1_unit/even_U
#add wave -unsigned uut/M1_unit/even_V


#add wave -hexadecimal uut/M1_unit/R
#add wave -hexadecimal uut/M1_unit/G
#add wave -hexadecimal uut/M1_unit/B

#add wave -unsigned uut/M1_unit/RGB_unit/Y_in_RGB
#add wave -unsigned uut/M1_unit/RGB_unit/U_in_RGB
#add wave -unsigned uut/M1_unit/RGB_unit/V_in_RGB

#add wave -hexadecimal SRAM_ARRAY[uut.SRAM_address]


