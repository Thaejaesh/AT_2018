onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_project_v2/Clock_50
add wave -noupdate -divider {some label for my divider}
add wave -noupdate /tb_project_v2/uut/SRAM_we_n
add wave -noupdate /tb_project_v2/uut/state
add wave -noupdate /tb_project_v2/uut/M2_unit/state
add wave -noupdate /tb_project_v2/uut/M2_unit/FS_start
add wave -noupdate /tb_project_v2/uut/M2_unit/FS_done
add wave -noupdate /tb_project_v2/uut/M2_unit/MM_start
add wave -noupdate /tb_project_v2/uut/M2_unit/MM_done
add wave -noupdate /tb_project_v2/uut/M2_unit/FS_unit/state
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/write_address
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/FS_write_address
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/M2_unit/FS_unit/FS_write_data
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/CB
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/RB
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/Base_address
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/read_address
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/M2_unit/SRAM_read_data
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/M2_unit/RAM1_read_data
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/M2_unit/RAM1_address
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_address
add wave -noupdate /tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_enable
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/MM_unit_CT/god_counter
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/MM_unit_CT/w_counter
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/MM_unit_CT/mult_in_C
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/MM_unit_CT/mult_in_T_S
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/MM_unit_CT/A_read_data
add wave -noupdate -radix unsigned /tb_project_v2/uut/SRAM_address
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/SRAM_write_data
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/SRAM_read_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2435600 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {1877500 ps} {2308 ns}
