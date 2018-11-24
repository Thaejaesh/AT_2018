

# add waves to waveform
add wave Clock_50
add wave -divider {some label for my divider}
add wave uut/SRAM_we_n
add wave uut/state

add wave uut/M2_unit/state
add wave -divider 
add wave -divider 
add wave uut/M2_unit/FS_start
add wave uut/M2_unit/FS_done
add wave uut/M2_unit/MM_CT_start
add wave uut/M2_unit/MM_CT_done


add wave uut/M2_unit/FS_unit/state
add wave -unsigned uut/M2_unit/FS_unit/write_address
add wave -unsigned uut/M2_unit/FS_unit/FS_write_address
add wave -hexadecimal uut/M2_unit/FS_unit/FS_write_data
add wave -unsigned uut/M2_unit/FS_unit/CB
add wave -unsigned uut/M2_unit/FS_unit/RB


add wave -divider 
add wave -divider 


add wave -unsigned uut/M2_unit/FS_unit/Base_address
add wave -unsigned uut/M2_unit/FS_unit/read_address


add wave -hexadecimal uut/M2_unit/SRAM_read_data
add wave -hexadecimal uut/M2_unit/RAM1_read_data
add wave -hexadecimal uut/M2_unit/RAM1_address


add wave -hexadecimal uut/M2_unit/MM_unit_CT/P_write_data
add wave -unsigned uut/M2_unit/MM_unit_CT/P_write_address
add wave  uut/M2_unit/MM_unit_CT/P_write_enable
add wave -unsigned uut/M2_unit/MM_unit_CT/god_counter
add wave -unsigned uut/M2_unit/MM_unit_CT/w_counter


add wave -unsigned uut/M2_unit/MM_unit_CT/mult_in_C
add wave -unsigned uut/M2_unit/MM_unit_CT/mult_in_T_S
add wave -unsigned uut/M2_unit/MM_unit_CT/A_read_data

#add wave uut/M1_unit/state
#add wave uut/M1_unit/cycle

add wave -unsigned uut/SRAM_address
add wave -hexadecimal uut/SRAM_write_data
add wave -hexadecimal uut/SRAM_read_data



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