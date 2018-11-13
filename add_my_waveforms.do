

# add waves to waveform
add wave Clock_50
add wave -divider {some label for my divider}
add wave uut/SRAM_we_n
add wave -decimal uut/SRAM_write_data
add wave -decimal uut/SRAM_read_data
add wave -hexadecimal uut/SRAM_address
add wave uut/M1_unit/state
add wave uut/M1_unit/FIR_unit/sel_mul_in
add wave uut/M1_unit/RGB_unit/sel_rgb_mul

add wave -hexadecimal uut/M1_unit/FIR_unit/U_SReg
add wave -hexadecimal uut/M1_unit/FIR_unit/V_SReg



