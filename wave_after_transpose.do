onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_project_v2/Clock_50
add wave -noupdate -divider {some label for my divider}
add wave -noupdate /tb_project_v2/uut/SRAM_we_n
add wave -noupdate /tb_project_v2/uut/state
add wave -noupdate /tb_project_v2/uut/M2_unit/state
add wave -noupdate -divider {some label for my divider}
add wave -noupdate -divider {some label for my divider}
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
add wave -noupdate -divider {some label for my divider}
add wave -noupdate -divider {some label for my divider}
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/Base_address
add wave -noupdate -radix unsigned /tb_project_v2/uut/M2_unit/FS_unit/read_address
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/M2_unit/SRAM_read_data
add wave -noupdate -radix hexadecimal /tb_project_v2/uut/M2_unit/RAM1_read_data
add wave -noupdate -radix hexadecimal -childformat {{{/tb_project_v2/uut/M2_unit/RAM1_address[6]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/RAM1_address[5]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/RAM1_address[4]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/RAM1_address[3]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/RAM1_address[2]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/RAM1_address[1]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/RAM1_address[0]} -radix hexadecimal}} -subitemconfig {{/tb_project_v2/uut/M2_unit/RAM1_address[6]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/RAM1_address[5]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/RAM1_address[4]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/RAM1_address[3]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/RAM1_address[2]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/RAM1_address[1]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/RAM1_address[0]} {-radix hexadecimal}} /tb_project_v2/uut/M2_unit/RAM1_address
add wave -noupdate -radix unsigned -childformat {{{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[31]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[30]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[29]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[28]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[27]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[26]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[25]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[24]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[23]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[22]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[21]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[20]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[19]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[18]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[17]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[16]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[15]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[14]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[13]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[12]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[11]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[10]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[9]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[8]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[7]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[6]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[5]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[4]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[3]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[2]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[1]} -radix hexadecimal} {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[0]} -radix hexadecimal}} -subitemconfig {{/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[31]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[30]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[29]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[28]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[27]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[26]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[25]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[24]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[23]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[22]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[21]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[20]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[19]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[18]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[17]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[16]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[15]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[14]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[13]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[12]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[11]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[10]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[9]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[8]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[7]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[6]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[5]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[4]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[3]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[2]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[1]} {-radix hexadecimal} {/tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data[0]} {-radix hexadecimal}} /tb_project_v2/uut/M2_unit/MM_unit_CT/P_write_data
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
WaveRestoreCursors {{Cursor 1} {2242100 ps} 0}
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
WaveRestoreZoom {2651200 ps} {3225700 ps}
