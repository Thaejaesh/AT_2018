

# add waves to waveform
add wave Clock_50
add wave -divider {some label for my divider}
add wave uut/SRAM_we_n
add wave uut/M1_unit/state
add wave uut/M1_unit/cycle

add wave -unsigned uut/SRAM_address
add wave -hexadecimal uut/SRAM_write_data
add wave -hexadecimal uut/SRAM_read_data

add wave uut/M1_unit/enable_U
add wave uut/M1_unit/enable_V
add wave uut/M1_unit/load_U_buffer
add wave uut/M1_unit/load_V_buffer

add wave uut/M1_unit/FIR_unit/sel_mul_in
add wave uut/M1_unit/FIR_unit/U_V
add wave uut/M1_unit/RGB_unit/sel_rgb_mul

add wave -hexadecimal uut/M1_unit/FIR_unit/U_SReg
add wave -hexadecimal uut/M1_unit/FIR_unit/V_SReg

add wave -unsigned uut/M1_unit/Y_RGB
add wave -unsigned uut/M1_unit/Y_buff
add wave -unsigned uut/M1_unit/U_RGB
add wave -unsigned uut/M1_unit/V_RGB

add wave -unsigned uut/M1_unit/FIR_BUFF_U
add wave -unsigned uut/M1_unit/FIR_BUFF_V
add wave -unsigned uut/M1_unit/even_U
add wave -unsigned uut/M1_unit/even_V


add wave -hexadecimal uut/M1_unit/R
add wave -hexadecimal uut/M1_unit/G
add wave -hexadecimal uut/M1_unit/B

add wave -unsigned uut/M1_unit/RGB_unit/Y_in_RGB
add wave -unsigned uut/M1_unit/RGB_unit/U_in_RGB
add wave -unsigned uut/M1_unit/RGB_unit/V_in_RGB

#add wave -hexadecimal SRAM_ARRAY[uut.SRAM_address]