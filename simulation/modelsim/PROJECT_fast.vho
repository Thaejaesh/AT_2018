-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/23/2018 13:30:29"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE PROJECT_data_type IS

TYPE SEVEN_SEGMENT_N_O_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE SEVEN_SEGMENT_N_O_6_0_7_0_type IS ARRAY (7 DOWNTO 0) OF SEVEN_SEGMENT_N_O_6_0_type;
SUBTYPE SEVEN_SEGMENT_N_O_type IS SEVEN_SEGMENT_N_O_6_0_7_0_type;

END PROJECT_data_type;

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.PROJECT_DATA_TYPE.ALL;

ENTITY 	PROJECT IS
    PORT (
	CLOCK_50_I : IN std_logic;
	PUSH_BUTTON_I : IN std_logic_vector(3 DOWNTO 0);
	SWITCH_I : IN std_logic_vector(17 DOWNTO 0);
	resetn : OUT std_logic;
	SEVEN_SEGMENT_N_O : OUT SEVEN_SEGMENT_N_O_type;
	LED_GREEN_O : OUT std_logic_vector(8 DOWNTO 0);
	VGA_CLOCK_O : OUT std_logic;
	VGA_HSYNC_O : OUT std_logic;
	VGA_VSYNC_O : OUT std_logic;
	VGA_BLANK_O : OUT std_logic;
	VGA_SYNC_O : OUT std_logic;
	VGA_RED_O : OUT std_logic_vector(9 DOWNTO 0);
	VGA_GREEN_O : OUT std_logic_vector(9 DOWNTO 0);
	VGA_BLUE_O : OUT std_logic_vector(9 DOWNTO 0);
	SRAM_DATA_IO : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_ADDRESS_O : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_UB_N_O : OUT std_logic;
	SRAM_LB_N_O : OUT std_logic;
	SRAM_WE_N_O : OUT std_logic;
	SRAM_CE_N_O : OUT std_logic;
	SRAM_OE_N_O : OUT std_logic;
	UART_RX_I : IN std_logic;
	UART_TX_O : OUT std_logic
	);
END PROJECT;

-- Design Ports Information
-- SRAM_DATA_IO[0]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[1]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[2]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[3]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[4]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[5]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[6]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[7]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[8]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[9]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[10]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[11]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[12]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[13]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[14]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[15]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PUSH_BUTTON_I[1]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[2]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[3]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[0]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[1]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[2]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[3]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[4]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[5]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[6]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[7]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[8]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[9]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[10]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[11]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[12]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[13]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[14]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[15]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[16]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][1]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][2]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][3]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][4]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][5]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][6]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][0]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][2]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][5]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][6]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][1]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][4]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][6]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][0]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][1]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][2]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][3]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][4]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][5]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][6]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][1]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][2]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][3]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][4]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][0]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][1]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][2]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][5]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][5]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][6]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[0]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[1]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[3]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[4]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[5]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[6]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[7]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[8]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLOCK_O	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HSYNC_O	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VSYNC_O	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK_O	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC_O	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[2]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[4]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[6]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[9]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[3]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[4]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[5]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[8]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[9]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[0]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[3]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[4]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[6]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[8]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[9]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[4]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[5]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[6]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[7]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[8]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[9]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[10]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[11]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[12]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[13]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[14]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[15]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[16]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[17]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N_O	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N_O	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N_O	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N_O	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N_O	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TX_O	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PUSH_BUTTON_I[0]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RX_I	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[17]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50_I	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PROJECT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_I : std_logic;
SIGNAL ww_PUSH_BUTTON_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SWITCH_I : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_resetn : std_logic;
SIGNAL ww_SEVEN_SEGMENT_N_O : SEVEN_SEGMENT_N_O_type;
SIGNAL ww_LED_GREEN_O : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_VGA_CLOCK_O : std_logic;
SIGNAL ww_VGA_HSYNC_O : std_logic;
SIGNAL ww_VGA_VSYNC_O : std_logic;
SIGNAL ww_VGA_BLANK_O : std_logic;
SIGNAL ww_VGA_SYNC_O : std_logic;
SIGNAL ww_VGA_RED_O : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_GREEN_O : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_BLUE_O : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SRAM_ADDRESS_O : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_UB_N_O : std_logic;
SIGNAL ww_SRAM_LB_N_O : std_logic;
SIGNAL ww_SRAM_WE_N_O : std_logic;
SIGNAL ww_SRAM_CE_N_O : std_logic;
SIGNAL ww_SRAM_OE_N_O : std_logic;
SIGNAL ww_UART_RX_I : std_logic;
SIGNAL ww_UART_TX_O : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SWITCH_I[17]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50_I~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \UART_unit|SRAM_address[4]~26_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~6_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~6_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~8_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~10_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~8_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~5_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~12_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~6_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[12]~42_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~16_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~14_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~8_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~17\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~10_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~15\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~19\ : std_logic;
SIGNAL \UART_unit|SRAM_address[14]~46_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~19\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~18_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~12_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~16_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~20_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[15]~48_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~20_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~7_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~11\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~14\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~13_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[0]~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~18_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~3_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector9~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan4~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~1_combout\ : std_logic;
SIGNAL \start_counter[3]~0_combout\ : std_logic;
SIGNAL \start_counter[3]~1_combout\ : std_logic;
SIGNAL \start_counter[1]~2_combout\ : std_logic;
SIGNAL \start_counter[2]~3_combout\ : std_logic;
SIGNAL \start_counter[0]~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Base_address[11]~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Base_address[11]~3_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~18_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~2_combout\ : std_logic;
SIGNAL \M2_unit|state.S_FS~regout\ : std_logic;
SIGNAL \UART_unit|Selector26~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_IDLE~regout\ : std_logic;
SIGNAL \M2_unit|state.S_M2_IDLE~regout\ : std_logic;
SIGNAL \UART_unit|Selector0~1_combout\ : std_logic;
SIGNAL \M2_start~regout\ : std_logic;
SIGNAL \M2_unit|state.S_M2_IDLE~0_combout\ : std_logic;
SIGNAL \M2_start~0_combout\ : std_logic;
SIGNAL \SRAM_DATA_IO[0]~0\ : std_logic;
SIGNAL \SRAM_DATA_IO[1]~1\ : std_logic;
SIGNAL \SRAM_DATA_IO[2]~2\ : std_logic;
SIGNAL \SRAM_DATA_IO[3]~3\ : std_logic;
SIGNAL \SRAM_DATA_IO[4]~4\ : std_logic;
SIGNAL \SRAM_DATA_IO[5]~5\ : std_logic;
SIGNAL \SRAM_DATA_IO[6]~6\ : std_logic;
SIGNAL \SRAM_DATA_IO[7]~7\ : std_logic;
SIGNAL \SRAM_DATA_IO[8]~8\ : std_logic;
SIGNAL \SRAM_DATA_IO[9]~9\ : std_logic;
SIGNAL \SRAM_DATA_IO[10]~10\ : std_logic;
SIGNAL \SRAM_DATA_IO[11]~11\ : std_logic;
SIGNAL \SRAM_DATA_IO[12]~12\ : std_logic;
SIGNAL \SRAM_DATA_IO[13]~13\ : std_logic;
SIGNAL \SRAM_DATA_IO[14]~14\ : std_logic;
SIGNAL \SRAM_DATA_IO[15]~15\ : std_logic;
SIGNAL \SWITCH_I[17]~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50_I~combout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\ : std_logic;
SIGNAL \resetn~0_combout\ : std_logic;
SIGNAL \state.S_TOP_M2~0_combout\ : std_logic;
SIGNAL \resetn~0clkctrl_outclk\ : std_logic;
SIGNAL \state.S_TOP_M2~regout\ : std_logic;
SIGNAL \state.S_TOP_IDLE~0_combout\ : std_logic;
SIGNAL \state.S_TOP_IDLE~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_START~feeder_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_START~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector67~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_IDLE~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector6~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[0]~6_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[3]~14_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|WideOr1~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[0]~7\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[1]~9\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[2]~11\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[3]~12_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[1]~8_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal1~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[3]~13\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[4]~15_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[4]~16\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[5]~17_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~6_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LO_1~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LO_2~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LO_3~feeder_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LO_3~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector6~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|FS_done~regout\ : std_logic;
SIGNAL \M2_unit|FS_start~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_start~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector68~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LI_1~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LI_2~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LI_3~feeder_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_LI_3~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector71~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Base_address[10]~7_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector27~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|C_END[2]~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector44~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal2~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~19_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~5_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~9_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~1\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~3\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~8\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~10_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~12_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal2~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal2~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal1~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector65~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector61~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~1\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~3\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|RB~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|RB~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~5\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~6_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|RB~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~7\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add9~8_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|RB~3_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal3~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector44~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Base_address[11]~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector30~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Base_address[11]~5_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Base_address[16]~6_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal0~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector18~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector18~1_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|WideOr2~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Equal0~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector19~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector19~1_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[0]~18_combout\ : std_logic;
SIGNAL \UART_unit|Selector1~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\ : std_logic;
SIGNAL \UART_unit|Selector2~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\ : std_logic;
SIGNAL \UART_unit|Selector26~2_combout\ : std_logic;
SIGNAL \UART_unit|Selector4~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\ : std_logic;
SIGNAL \UART_unit|Selector5~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\ : std_logic;
SIGNAL \UART_unit|Selector3~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\ : std_logic;
SIGNAL \UART_unit|Selector26~1_combout\ : std_logic;
SIGNAL \UART_unit|Selector26~3_combout\ : std_logic;
SIGNAL \UART_unit|UART_rx_unload_data~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Empty~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Empty~regout\ : std_logic;
SIGNAL \UART_unit|Selector6~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[3]~24_combout\ : std_logic;
SIGNAL \UART_unit|Selector0~0_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~5_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[0]~19\ : std_logic;
SIGNAL \UART_unit|SRAM_address[1]~21\ : std_logic;
SIGNAL \UART_unit|SRAM_address[2]~22_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[2]~23\ : std_logic;
SIGNAL \UART_unit|SRAM_address[3]~25\ : std_logic;
SIGNAL \UART_unit|SRAM_address[4]~27\ : std_logic;
SIGNAL \UART_unit|SRAM_address[5]~28_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~1\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~3\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector17~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add10~15_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~1\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector17~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector17~2_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector20~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \unit0|WideOr6~0_combout\ : std_logic;
SIGNAL \unit0|WideOr5~0_combout\ : std_logic;
SIGNAL \unit0|WideOr4~0_combout\ : std_logic;
SIGNAL \unit0|WideOr3~0_combout\ : std_logic;
SIGNAL \unit0|WideOr2~0_combout\ : std_logic;
SIGNAL \unit0|WideOr1~0_combout\ : std_logic;
SIGNAL \unit0|WideOr0~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[5]~29\ : std_logic;
SIGNAL \UART_unit|SRAM_address[6]~30_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[6]~31\ : std_logic;
SIGNAL \UART_unit|SRAM_address[7]~32_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[7]~33\ : std_logic;
SIGNAL \UART_unit|SRAM_address[8]~34_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[8]~35\ : std_logic;
SIGNAL \UART_unit|SRAM_address[9]~36_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[9]~37\ : std_logic;
SIGNAL \UART_unit|SRAM_address[10]~38_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[10]~39\ : std_logic;
SIGNAL \UART_unit|SRAM_address[11]~40_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~1\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~3\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~5\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~6_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~3\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~5\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~7\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~9\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~10_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~1\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~3\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~7_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~1\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~4_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector15~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector15~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~4_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector16~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector16~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \unit1|WideOr6~0_combout\ : std_logic;
SIGNAL \unit1|WideOr5~0_combout\ : std_logic;
SIGNAL \unit1|WideOr4~0_combout\ : std_logic;
SIGNAL \unit1|WideOr3~0_combout\ : std_logic;
SIGNAL \unit1|WideOr2~0_combout\ : std_logic;
SIGNAL \unit1|WideOr1~0_combout\ : std_logic;
SIGNAL \unit1|WideOr0~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector10~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~7\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~9\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~11\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~13\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~14_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~12_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~2_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~5\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~7\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~9\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~11\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~13\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~15\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~17\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~18_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~14_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add3~12_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~3\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~6\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~9\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~11\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~13_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector10~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~14\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~15_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector9~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~10_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~12_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~8_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector12~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector12~1_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \unit2|WideOr6~0_combout\ : std_logic;
SIGNAL \unit2|WideOr5~0_combout\ : std_logic;
SIGNAL \unit2|WideOr4~0_combout\ : std_logic;
SIGNAL \unit2|WideOr3~0_combout\ : std_logic;
SIGNAL \unit2|WideOr2~0_combout\ : std_logic;
SIGNAL \unit2|WideOr1~0_combout\ : std_logic;
SIGNAL \unit2|WideOr0~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[11]~41\ : std_logic;
SIGNAL \UART_unit|SRAM_address[12]~43\ : std_logic;
SIGNAL \UART_unit|SRAM_address[13]~44_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[13]~45\ : std_logic;
SIGNAL \UART_unit|SRAM_address[14]~47\ : std_logic;
SIGNAL \UART_unit|SRAM_address[15]~49\ : std_logic;
SIGNAL \UART_unit|SRAM_address[16]~50_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[16]~51\ : std_logic;
SIGNAL \UART_unit|SRAM_address[17]~52_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector28~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~10_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add2~8_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~11\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~13\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~15\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add0~16_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~5\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~7\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~9\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~11\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~13\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~15\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~16_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector7~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~16\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~18\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~19_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector7~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add1~14_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~17_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Add4~21_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \unit3|Decoder0~0_combout\ : std_logic;
SIGNAL \unit3|Decoder0~1_combout\ : std_logic;
SIGNAL \unit3|Decoder0~2_combout\ : std_logic;
SIGNAL \unit3|Decoder0~3_combout\ : std_logic;
SIGNAL \unit4|WideOr6~0_combout\ : std_logic;
SIGNAL \unit4|WideOr5~0_combout\ : std_logic;
SIGNAL \unit4|WideOr4~0_combout\ : std_logic;
SIGNAL \unit4|WideOr3~0_combout\ : std_logic;
SIGNAL \unit4|WideOr2~0_combout\ : std_logic;
SIGNAL \unit4|WideOr1~0_combout\ : std_logic;
SIGNAL \unit4|WideOr0~0_combout\ : std_logic;
SIGNAL \unit5|WideOr6~0_combout\ : std_logic;
SIGNAL \unit5|WideOr5~0_combout\ : std_logic;
SIGNAL \unit5|WideOr4~0_combout\ : std_logic;
SIGNAL \unit5|WideOr3~0_combout\ : std_logic;
SIGNAL \unit5|WideOr2~0_combout\ : std_logic;
SIGNAL \unit5|WideOr1~0_combout\ : std_logic;
SIGNAL \unit5|WideOr0~0_combout\ : std_logic;
SIGNAL \unit6|WideOr6~0_combout\ : std_logic;
SIGNAL \unit6|WideOr5~0_combout\ : std_logic;
SIGNAL \unit6|WideOr4~0_combout\ : std_logic;
SIGNAL \unit6|WideOr3~0_combout\ : std_logic;
SIGNAL \unit6|WideOr2~0_combout\ : std_logic;
SIGNAL \unit6|WideOr1~0_combout\ : std_logic;
SIGNAL \unit6|WideOr0~0_combout\ : std_logic;
SIGNAL \unit7|WideOr6~0_combout\ : std_logic;
SIGNAL \unit7|WideOr5~0_combout\ : std_logic;
SIGNAL \unit7|WideOr4~0_combout\ : std_logic;
SIGNAL \unit7|WideOr3~0_combout\ : std_logic;
SIGNAL \unit7|WideOr2~0_combout\ : std_logic;
SIGNAL \unit7|WideOr1~0_combout\ : std_logic;
SIGNAL \unit7|WideOr0~0_combout\ : std_logic;
SIGNAL \CLOCK_50_I~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|always0~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_BLANK~combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan4~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~1\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~3\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~5\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~7\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~9\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~6_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~1_combout\ : std_logic;
SIGNAL \VGA_unit|always0~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~3_combout\ : std_logic;
SIGNAL \VGA_unit|always0~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R[8]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[8]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[9]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B[8]~feeder_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector24~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[1]~20_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector23~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SC[2]~10_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector22~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|Selector21~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_ADDRESS_O\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_G\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|V_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M2_unit|FS_unit|RB\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UART_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_blue\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_read_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \M2_unit|FS_unit|Base_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \M2_unit|FS_unit|CB\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|H_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M2_unit|FS_unit|C_END\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M2_unit|FS_unit|SC\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL start_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ : std_logic;
SIGNAL \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\ : std_logic;
SIGNAL \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ : std_logic;
SIGNAL \unit7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit3|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \unit3|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \unit2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_TOP_IDLE~regout\ : std_logic;
SIGNAL \ALT_INV_resetn~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50_I <= CLOCK_50_I;
ww_PUSH_BUTTON_I <= PUSH_BUTTON_I;
ww_SWITCH_I <= SWITCH_I;
resetn <= ww_resetn;
SEVEN_SEGMENT_N_O <= ww_SEVEN_SEGMENT_N_O;
LED_GREEN_O <= ww_LED_GREEN_O;
VGA_CLOCK_O <= ww_VGA_CLOCK_O;
VGA_HSYNC_O <= ww_VGA_HSYNC_O;
VGA_VSYNC_O <= ww_VGA_VSYNC_O;
VGA_BLANK_O <= ww_VGA_BLANK_O;
VGA_SYNC_O <= ww_VGA_SYNC_O;
VGA_RED_O <= ww_VGA_RED_O;
VGA_GREEN_O <= ww_VGA_GREEN_O;
VGA_BLUE_O <= ww_VGA_BLUE_O;
SRAM_ADDRESS_O <= ww_SRAM_ADDRESS_O;
SRAM_UB_N_O <= ww_SRAM_UB_N_O;
SRAM_LB_N_O <= ww_SRAM_LB_N_O;
SRAM_WE_N_O <= ww_SRAM_WE_N_O;
SRAM_CE_N_O <= ww_SRAM_CE_N_O;
SRAM_OE_N_O <= ww_SRAM_OE_N_O;
ww_UART_RX_I <= UART_RX_I;
UART_TX_O <= ww_UART_TX_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50_I~combout\);

\SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\ <= \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\(0);
\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK1\ <= \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\(1);
\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK2\ <= \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\(2);

\SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\);

\SWITCH_I[17]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SWITCH_I~combout\(17));

\resetn~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \resetn~0_combout\);

\CLOCK_50_I~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50_I~combout\);
\SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ <= NOT \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\;
\UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ <= NOT \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\;
\M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\ <= NOT \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\;
\SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ <= NOT \SRAM_unit|SRAM_CE_N_O~regout\;
\unit7|ALT_INV_WideOr0~0_combout\ <= NOT \unit7|WideOr0~0_combout\;
\unit6|ALT_INV_WideOr0~0_combout\ <= NOT \unit6|WideOr0~0_combout\;
\unit5|ALT_INV_WideOr0~0_combout\ <= NOT \unit5|WideOr0~0_combout\;
\unit4|ALT_INV_WideOr0~0_combout\ <= NOT \unit4|WideOr0~0_combout\;
\unit3|ALT_INV_Decoder0~1_combout\ <= NOT \unit3|Decoder0~1_combout\;
\unit3|ALT_INV_Decoder0~0_combout\ <= NOT \unit3|Decoder0~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\unit2|ALT_INV_WideOr0~0_combout\ <= NOT \unit2|WideOr0~0_combout\;
\unit1|ALT_INV_WideOr0~0_combout\ <= NOT \unit1|WideOr0~0_combout\;
\unit0|ALT_INV_WideOr0~0_combout\ <= NOT \unit0|WideOr0~0_combout\;
\ALT_INV_state.S_TOP_IDLE~regout\ <= NOT \state.S_TOP_IDLE~regout\;
\ALT_INV_resetn~0_combout\ <= NOT \resetn~0_combout\;

-- Location: LCFF_X38_Y33_N23
\UART_unit|SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[4]~26_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(4));

-- Location: LCFF_X38_Y32_N7
\UART_unit|SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[12]~42_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(12));

-- Location: LCFF_X38_Y32_N11
\UART_unit|SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[14]~46_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(14));

-- Location: LCFF_X38_Y32_N13
\UART_unit|SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[15]~48_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(15));

-- Location: LCCOMB_X38_Y33_N22
\UART_unit|SRAM_address[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[4]~26_combout\ = (\UART_unit|SRAM_address\(4) & (\UART_unit|SRAM_address[3]~25\ $ (GND))) # (!\UART_unit|SRAM_address\(4) & (!\UART_unit|SRAM_address[3]~25\ & VCC))
-- \UART_unit|SRAM_address[4]~27\ = CARRY((\UART_unit|SRAM_address\(4) & !\UART_unit|SRAM_address[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(4),
	datad => VCC,
	cin => \UART_unit|SRAM_address[3]~25\,
	combout => \UART_unit|SRAM_address[4]~26_combout\,
	cout => \UART_unit|SRAM_address[4]~27\);

-- Location: LCCOMB_X53_Y33_N6
\M2_unit|FS_unit|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~2_combout\ = (\M2_unit|FS_unit|CB\(3) & ((\M2_unit|FS_unit|SC\(4) & (\M2_unit|FS_unit|Add3~1\ & VCC)) # (!\M2_unit|FS_unit|SC\(4) & (!\M2_unit|FS_unit|Add3~1\)))) # (!\M2_unit|FS_unit|CB\(3) & ((\M2_unit|FS_unit|SC\(4) & 
-- (!\M2_unit|FS_unit|Add3~1\)) # (!\M2_unit|FS_unit|SC\(4) & ((\M2_unit|FS_unit|Add3~1\) # (GND)))))
-- \M2_unit|FS_unit|Add3~3\ = CARRY((\M2_unit|FS_unit|CB\(3) & (!\M2_unit|FS_unit|SC\(4) & !\M2_unit|FS_unit|Add3~1\)) # (!\M2_unit|FS_unit|CB\(3) & ((!\M2_unit|FS_unit|Add3~1\) # (!\M2_unit|FS_unit|SC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(3),
	datab => \M2_unit|FS_unit|SC\(4),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~1\,
	combout => \M2_unit|FS_unit|Add3~2_combout\,
	cout => \M2_unit|FS_unit|Add3~3\);

-- Location: LCFF_X55_Y33_N29
\M2_unit|FS_unit|CB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add10~18_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Add10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|CB\(5));

-- Location: LCCOMB_X53_Y33_N10
\M2_unit|FS_unit|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~6_combout\ = (\M2_unit|FS_unit|CB\(5) & ((\M2_unit|FS_unit|Add2~2_combout\ & (\M2_unit|FS_unit|Add3~5\ & VCC)) # (!\M2_unit|FS_unit|Add2~2_combout\ & (!\M2_unit|FS_unit|Add3~5\)))) # (!\M2_unit|FS_unit|CB\(5) & 
-- ((\M2_unit|FS_unit|Add2~2_combout\ & (!\M2_unit|FS_unit|Add3~5\)) # (!\M2_unit|FS_unit|Add2~2_combout\ & ((\M2_unit|FS_unit|Add3~5\) # (GND)))))
-- \M2_unit|FS_unit|Add3~7\ = CARRY((\M2_unit|FS_unit|CB\(5) & (!\M2_unit|FS_unit|Add2~2_combout\ & !\M2_unit|FS_unit|Add3~5\)) # (!\M2_unit|FS_unit|CB\(5) & ((!\M2_unit|FS_unit|Add3~5\) # (!\M2_unit|FS_unit|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(5),
	datab => \M2_unit|FS_unit|Add2~2_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~5\,
	combout => \M2_unit|FS_unit|Add3~6_combout\,
	cout => \M2_unit|FS_unit|Add3~7\);

-- Location: LCCOMB_X56_Y33_N6
\M2_unit|FS_unit|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~6_combout\ = (\M2_unit|FS_unit|Add2~2_combout\ & (!\M2_unit|FS_unit|Add0~5\)) # (!\M2_unit|FS_unit|Add2~2_combout\ & ((\M2_unit|FS_unit|Add0~5\) # (GND)))
-- \M2_unit|FS_unit|Add0~7\ = CARRY((!\M2_unit|FS_unit|Add0~5\) # (!\M2_unit|FS_unit|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add2~2_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~5\,
	combout => \M2_unit|FS_unit|Add0~6_combout\,
	cout => \M2_unit|FS_unit|Add0~7\);

-- Location: LCCOMB_X53_Y33_N12
\M2_unit|FS_unit|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~8_combout\ = (\M2_unit|FS_unit|Add2~4_combout\ & (\M2_unit|FS_unit|Add3~7\ $ (GND))) # (!\M2_unit|FS_unit|Add2~4_combout\ & (!\M2_unit|FS_unit|Add3~7\ & VCC))
-- \M2_unit|FS_unit|Add3~9\ = CARRY((\M2_unit|FS_unit|Add2~4_combout\ & !\M2_unit|FS_unit|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~4_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~7\,
	combout => \M2_unit|FS_unit|Add3~8_combout\,
	cout => \M2_unit|FS_unit|Add3~9\);

-- Location: LCCOMB_X49_Y33_N12
\M2_unit|FS_unit|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~0_combout\ = (\M2_unit|FS_unit|Add3~8_combout\ & (\M2_unit|FS_unit|Base_address\(15) $ (VCC))) # (!\M2_unit|FS_unit|Add3~8_combout\ & (\M2_unit|FS_unit|Base_address\(15) & VCC))
-- \M2_unit|FS_unit|Add4~1\ = CARRY((\M2_unit|FS_unit|Add3~8_combout\ & \M2_unit|FS_unit|Base_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add3~8_combout\,
	datab => \M2_unit|FS_unit|Base_address\(15),
	datad => VCC,
	combout => \M2_unit|FS_unit|Add4~0_combout\,
	cout => \M2_unit|FS_unit|Add4~1\);

-- Location: LCCOMB_X53_Y33_N14
\M2_unit|FS_unit|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~10_combout\ = (\M2_unit|FS_unit|Add2~6_combout\ & (!\M2_unit|FS_unit|Add3~9\)) # (!\M2_unit|FS_unit|Add2~6_combout\ & ((\M2_unit|FS_unit|Add3~9\) # (GND)))
-- \M2_unit|FS_unit|Add3~11\ = CARRY((!\M2_unit|FS_unit|Add3~9\) # (!\M2_unit|FS_unit|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add2~6_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~9\,
	combout => \M2_unit|FS_unit|Add3~10_combout\,
	cout => \M2_unit|FS_unit|Add3~11\);

-- Location: LCCOMB_X56_Y33_N8
\M2_unit|FS_unit|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~8_combout\ = (\M2_unit|FS_unit|Add2~4_combout\ & (\M2_unit|FS_unit|Add0~7\ $ (GND))) # (!\M2_unit|FS_unit|Add2~4_combout\ & (!\M2_unit|FS_unit|Add0~7\ & VCC))
-- \M2_unit|FS_unit|Add0~9\ = CARRY((\M2_unit|FS_unit|Add2~4_combout\ & !\M2_unit|FS_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~4_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~7\,
	combout => \M2_unit|FS_unit|Add0~8_combout\,
	cout => \M2_unit|FS_unit|Add0~9\);

-- Location: LCCOMB_X49_Y33_N16
\M2_unit|FS_unit|Add4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~5_combout\ = (\M2_unit|FS_unit|Add3~12_combout\ & ((GND) # (!\M2_unit|FS_unit|Add4~3\))) # (!\M2_unit|FS_unit|Add3~12_combout\ & (\M2_unit|FS_unit|Add4~3\ $ (GND)))
-- \M2_unit|FS_unit|Add4~6\ = CARRY((\M2_unit|FS_unit|Add3~12_combout\) # (!\M2_unit|FS_unit|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add3~12_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add4~3\,
	combout => \M2_unit|FS_unit|Add4~5_combout\,
	cout => \M2_unit|FS_unit|Add4~6\);

-- Location: LCCOMB_X56_Y33_N12
\M2_unit|FS_unit|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~12_combout\ = (\M2_unit|FS_unit|Add2~8_combout\ & (\M2_unit|FS_unit|Add0~11\ $ (GND))) # (!\M2_unit|FS_unit|Add2~8_combout\ & (!\M2_unit|FS_unit|Add0~11\ & VCC))
-- \M2_unit|FS_unit|Add0~13\ = CARRY((\M2_unit|FS_unit|Add2~8_combout\ & !\M2_unit|FS_unit|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~8_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~11\,
	combout => \M2_unit|FS_unit|Add0~12_combout\,
	cout => \M2_unit|FS_unit|Add0~13\);

-- Location: LCCOMB_X50_Y33_N14
\M2_unit|FS_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~6_combout\ = (\M2_unit|FS_unit|Add0~12_combout\ & ((\M2_unit|FS_unit|Base_address\(12) & (\M2_unit|FS_unit|Add1~5\ & VCC)) # (!\M2_unit|FS_unit|Base_address\(12) & (!\M2_unit|FS_unit|Add1~5\)))) # (!\M2_unit|FS_unit|Add0~12_combout\ 
-- & ((\M2_unit|FS_unit|Base_address\(12) & (!\M2_unit|FS_unit|Add1~5\)) # (!\M2_unit|FS_unit|Base_address\(12) & ((\M2_unit|FS_unit|Add1~5\) # (GND)))))
-- \M2_unit|FS_unit|Add1~7\ = CARRY((\M2_unit|FS_unit|Add0~12_combout\ & (!\M2_unit|FS_unit|Base_address\(12) & !\M2_unit|FS_unit|Add1~5\)) # (!\M2_unit|FS_unit|Add0~12_combout\ & ((!\M2_unit|FS_unit|Add1~5\) # (!\M2_unit|FS_unit|Base_address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add0~12_combout\,
	datab => \M2_unit|FS_unit|Base_address\(12),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add1~5\,
	combout => \M2_unit|FS_unit|Add1~6_combout\,
	cout => \M2_unit|FS_unit|Add1~7\);

-- Location: LCCOMB_X38_Y32_N6
\UART_unit|SRAM_address[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[12]~42_combout\ = (\UART_unit|SRAM_address\(12) & (\UART_unit|SRAM_address[11]~41\ $ (GND))) # (!\UART_unit|SRAM_address\(12) & (!\UART_unit|SRAM_address[11]~41\ & VCC))
-- \UART_unit|SRAM_address[12]~43\ = CARRY((\UART_unit|SRAM_address\(12) & !\UART_unit|SRAM_address[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(12),
	datad => VCC,
	cin => \UART_unit|SRAM_address[11]~41\,
	combout => \UART_unit|SRAM_address[12]~42_combout\,
	cout => \UART_unit|SRAM_address[12]~43\);

-- Location: LCCOMB_X53_Y33_N20
\M2_unit|FS_unit|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~16_combout\ = (\M2_unit|FS_unit|Add2~12_combout\ & (\M2_unit|FS_unit|Add3~15\ $ (GND))) # (!\M2_unit|FS_unit|Add2~12_combout\ & (!\M2_unit|FS_unit|Add3~15\ & VCC))
-- \M2_unit|FS_unit|Add3~17\ = CARRY((\M2_unit|FS_unit|Add2~12_combout\ & !\M2_unit|FS_unit|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~12_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~15\,
	combout => \M2_unit|FS_unit|Add3~16_combout\,
	cout => \M2_unit|FS_unit|Add3~17\);

-- Location: LCCOMB_X56_Y33_N14
\M2_unit|FS_unit|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~14_combout\ = (\M2_unit|FS_unit|Add2~10_combout\ & (!\M2_unit|FS_unit|Add0~13\)) # (!\M2_unit|FS_unit|Add2~10_combout\ & ((\M2_unit|FS_unit|Add0~13\) # (GND)))
-- \M2_unit|FS_unit|Add0~15\ = CARRY((!\M2_unit|FS_unit|Add0~13\) # (!\M2_unit|FS_unit|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~10_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~13\,
	combout => \M2_unit|FS_unit|Add0~14_combout\,
	cout => \M2_unit|FS_unit|Add0~15\);

-- Location: LCCOMB_X50_Y33_N16
\M2_unit|FS_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~8_combout\ = ((\M2_unit|FS_unit|Add0~14_combout\ $ (\M2_unit|FS_unit|Base_address\(10) $ (\M2_unit|FS_unit|Add1~7\)))) # (GND)
-- \M2_unit|FS_unit|Add1~9\ = CARRY((\M2_unit|FS_unit|Add0~14_combout\ & ((!\M2_unit|FS_unit|Add1~7\) # (!\M2_unit|FS_unit|Base_address\(10)))) # (!\M2_unit|FS_unit|Add0~14_combout\ & (!\M2_unit|FS_unit|Base_address\(10) & !\M2_unit|FS_unit|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add0~14_combout\,
	datab => \M2_unit|FS_unit|Base_address\(10),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add1~7\,
	combout => \M2_unit|FS_unit|Add1~8_combout\,
	cout => \M2_unit|FS_unit|Add1~9\);

-- Location: LCCOMB_X56_Y33_N16
\M2_unit|FS_unit|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~16_combout\ = (\M2_unit|FS_unit|Add2~12_combout\ & (\M2_unit|FS_unit|Add0~15\ $ (GND))) # (!\M2_unit|FS_unit|Add2~12_combout\ & (!\M2_unit|FS_unit|Add0~15\ & VCC))
-- \M2_unit|FS_unit|Add0~17\ = CARRY((\M2_unit|FS_unit|Add2~12_combout\ & !\M2_unit|FS_unit|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add2~12_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~15\,
	combout => \M2_unit|FS_unit|Add0~16_combout\,
	cout => \M2_unit|FS_unit|Add0~17\);

-- Location: LCCOMB_X50_Y33_N18
\M2_unit|FS_unit|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~10_combout\ = (\M2_unit|FS_unit|Base_address\(14) & ((\M2_unit|FS_unit|Add0~16_combout\ & (\M2_unit|FS_unit|Add1~9\ & VCC)) # (!\M2_unit|FS_unit|Add0~16_combout\ & (!\M2_unit|FS_unit|Add1~9\)))) # (!\M2_unit|FS_unit|Base_address\(14) 
-- & ((\M2_unit|FS_unit|Add0~16_combout\ & (!\M2_unit|FS_unit|Add1~9\)) # (!\M2_unit|FS_unit|Add0~16_combout\ & ((\M2_unit|FS_unit|Add1~9\) # (GND)))))
-- \M2_unit|FS_unit|Add1~11\ = CARRY((\M2_unit|FS_unit|Base_address\(14) & (!\M2_unit|FS_unit|Add0~16_combout\ & !\M2_unit|FS_unit|Add1~9\)) # (!\M2_unit|FS_unit|Base_address\(14) & ((!\M2_unit|FS_unit|Add1~9\) # (!\M2_unit|FS_unit|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address\(14),
	datab => \M2_unit|FS_unit|Add0~16_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add1~9\,
	combout => \M2_unit|FS_unit|Add1~10_combout\,
	cout => \M2_unit|FS_unit|Add1~11\);

-- Location: LCCOMB_X57_Y33_N28
\M2_unit|FS_unit|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~14_combout\ = (\M2_unit|FS_unit|RB\(4) & (!\M2_unit|FS_unit|Add2~13\)) # (!\M2_unit|FS_unit|RB\(4) & ((\M2_unit|FS_unit|Add2~13\) # (GND)))
-- \M2_unit|FS_unit|Add2~15\ = CARRY((!\M2_unit|FS_unit|Add2~13\) # (!\M2_unit|FS_unit|RB\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(4),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add2~13\,
	combout => \M2_unit|FS_unit|Add2~14_combout\,
	cout => \M2_unit|FS_unit|Add2~15\);

-- Location: LCCOMB_X53_Y33_N22
\M2_unit|FS_unit|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~18_combout\ = (\M2_unit|FS_unit|Add2~14_combout\ & (!\M2_unit|FS_unit|Add3~17\)) # (!\M2_unit|FS_unit|Add2~14_combout\ & ((\M2_unit|FS_unit|Add3~17\) # (GND)))
-- \M2_unit|FS_unit|Add3~19\ = CARRY((!\M2_unit|FS_unit|Add3~17\) # (!\M2_unit|FS_unit|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~14_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~17\,
	combout => \M2_unit|FS_unit|Add3~18_combout\,
	cout => \M2_unit|FS_unit|Add3~19\);

-- Location: LCCOMB_X38_Y32_N10
\UART_unit|SRAM_address[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[14]~46_combout\ = (\UART_unit|SRAM_address\(14) & (\UART_unit|SRAM_address[13]~45\ $ (GND))) # (!\UART_unit|SRAM_address\(14) & (!\UART_unit|SRAM_address[13]~45\ & VCC))
-- \UART_unit|SRAM_address[14]~47\ = CARRY((\UART_unit|SRAM_address\(14) & !\UART_unit|SRAM_address[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(14),
	datad => VCC,
	cin => \UART_unit|SRAM_address[13]~45\,
	combout => \UART_unit|SRAM_address[14]~46_combout\,
	cout => \UART_unit|SRAM_address[14]~47\);

-- Location: LCCOMB_X56_Y33_N18
\M2_unit|FS_unit|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~18_combout\ = (\M2_unit|FS_unit|Add2~14_combout\ & (!\M2_unit|FS_unit|Add0~17\)) # (!\M2_unit|FS_unit|Add2~14_combout\ & ((\M2_unit|FS_unit|Add0~17\) # (GND)))
-- \M2_unit|FS_unit|Add0~19\ = CARRY((!\M2_unit|FS_unit|Add0~17\) # (!\M2_unit|FS_unit|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~14_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~17\,
	combout => \M2_unit|FS_unit|Add0~18_combout\,
	cout => \M2_unit|FS_unit|Add0~19\);

-- Location: LCCOMB_X50_Y33_N20
\M2_unit|FS_unit|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~12_combout\ = ((\M2_unit|FS_unit|Add0~18_combout\ $ (\M2_unit|FS_unit|Base_address\(15) $ (!\M2_unit|FS_unit|Add1~11\)))) # (GND)
-- \M2_unit|FS_unit|Add1~13\ = CARRY((\M2_unit|FS_unit|Add0~18_combout\ & ((\M2_unit|FS_unit|Base_address\(15)) # (!\M2_unit|FS_unit|Add1~11\))) # (!\M2_unit|FS_unit|Add0~18_combout\ & (\M2_unit|FS_unit|Base_address\(15) & !\M2_unit|FS_unit|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add0~18_combout\,
	datab => \M2_unit|FS_unit|Base_address\(15),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add1~11\,
	combout => \M2_unit|FS_unit|Add1~12_combout\,
	cout => \M2_unit|FS_unit|Add1~13\);

-- Location: LCCOMB_X57_Y33_N30
\M2_unit|FS_unit|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~16_combout\ = !\M2_unit|FS_unit|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \M2_unit|FS_unit|Add2~15\,
	combout => \M2_unit|FS_unit|Add2~16_combout\);

-- Location: LCCOMB_X53_Y33_N24
\M2_unit|FS_unit|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~20_combout\ = \M2_unit|FS_unit|Add3~19\ $ (!\M2_unit|FS_unit|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|Add2~16_combout\,
	cin => \M2_unit|FS_unit|Add3~19\,
	combout => \M2_unit|FS_unit|Add3~20_combout\);

-- Location: LCCOMB_X38_Y32_N12
\UART_unit|SRAM_address[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[15]~48_combout\ = (\UART_unit|SRAM_address\(15) & (!\UART_unit|SRAM_address[14]~47\)) # (!\UART_unit|SRAM_address\(15) & ((\UART_unit|SRAM_address[14]~47\) # (GND)))
-- \UART_unit|SRAM_address[15]~49\ = CARRY((!\UART_unit|SRAM_address[14]~47\) # (!\UART_unit|SRAM_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(15),
	datad => VCC,
	cin => \UART_unit|SRAM_address[14]~47\,
	combout => \UART_unit|SRAM_address[15]~48_combout\,
	cout => \UART_unit|SRAM_address[15]~49\);

-- Location: LCCOMB_X56_Y33_N20
\M2_unit|FS_unit|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~20_combout\ = \M2_unit|FS_unit|Add0~19\ $ (!\M2_unit|FS_unit|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|Add2~16_combout\,
	cin => \M2_unit|FS_unit|Add0~19\,
	combout => \M2_unit|FS_unit|Add0~20_combout\);

-- Location: LCFF_X32_Y32_N11
\VGA_unit|VGA_unit|H_Cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[0]~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(0));

-- Location: LCCOMB_X55_Y33_N6
\M2_unit|FS_unit|Add10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~7_combout\ = (\M2_unit|FS_unit|CB\(2) & (\M2_unit|FS_unit|Add10~3\ $ (GND))) # (!\M2_unit|FS_unit|CB\(2) & (!\M2_unit|FS_unit|Add10~3\ & VCC))
-- \M2_unit|FS_unit|Add10~8\ = CARRY((\M2_unit|FS_unit|CB\(2) & !\M2_unit|FS_unit|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|CB\(2),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add10~3\,
	combout => \M2_unit|FS_unit|Add10~7_combout\,
	cout => \M2_unit|FS_unit|Add10~8\);

-- Location: LCCOMB_X55_Y33_N8
\M2_unit|FS_unit|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~10_combout\ = (\M2_unit|FS_unit|CB\(3) & (!\M2_unit|FS_unit|Add10~8\)) # (!\M2_unit|FS_unit|CB\(3) & ((\M2_unit|FS_unit|Add10~8\) # (GND)))
-- \M2_unit|FS_unit|Add10~11\ = CARRY((!\M2_unit|FS_unit|Add10~8\) # (!\M2_unit|FS_unit|CB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(3),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add10~8\,
	combout => \M2_unit|FS_unit|Add10~10_combout\,
	cout => \M2_unit|FS_unit|Add10~11\);

-- Location: LCCOMB_X55_Y33_N10
\M2_unit|FS_unit|Add10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~13_combout\ = (\M2_unit|FS_unit|CB\(4) & (\M2_unit|FS_unit|Add10~11\ $ (GND))) # (!\M2_unit|FS_unit|CB\(4) & (!\M2_unit|FS_unit|Add10~11\ & VCC))
-- \M2_unit|FS_unit|Add10~14\ = CARRY((\M2_unit|FS_unit|CB\(4) & !\M2_unit|FS_unit|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(4),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add10~11\,
	combout => \M2_unit|FS_unit|Add10~13_combout\,
	cout => \M2_unit|FS_unit|Add10~14\);

-- Location: LCCOMB_X55_Y33_N12
\M2_unit|FS_unit|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~16_combout\ = \M2_unit|FS_unit|CB\(5) $ (\M2_unit|FS_unit|Add10~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(5),
	cin => \M2_unit|FS_unit|Add10~14\,
	combout => \M2_unit|FS_unit|Add10~16_combout\);

-- Location: LCCOMB_X32_Y32_N10
\VGA_unit|VGA_unit|H_Cont[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[0]~10_combout\ = \VGA_unit|VGA_unit|H_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|H_Cont[0]~11\ = CARRY(\VGA_unit|VGA_unit|H_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|H_Cont[0]~10_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[0]~11\);

-- Location: LCCOMB_X35_Y32_N4
\VGA_unit|VGA_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~0_combout\ = \VGA_unit|VGA_unit|V_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|Add1~1\ = CARRY(\VGA_unit|VGA_unit|V_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|Add1~0_combout\,
	cout => \VGA_unit|VGA_unit|Add1~1\);

-- Location: LCCOMB_X35_Y32_N6
\VGA_unit|VGA_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~2_combout\ = (\VGA_unit|VGA_unit|V_Cont\(1) & (\VGA_unit|VGA_unit|Add1~1\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(1) & (!\VGA_unit|VGA_unit|Add1~1\))
-- \VGA_unit|VGA_unit|Add1~3\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(1) & !\VGA_unit|VGA_unit|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~1\,
	combout => \VGA_unit|VGA_unit|Add1~2_combout\,
	cout => \VGA_unit|VGA_unit|Add1~3\);

-- Location: LCCOMB_X35_Y32_N12
\VGA_unit|VGA_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~8_combout\ = (\VGA_unit|VGA_unit|V_Cont\(4) & ((GND) # (!\VGA_unit|VGA_unit|Add1~7\))) # (!\VGA_unit|VGA_unit|V_Cont\(4) & (\VGA_unit|VGA_unit|Add1~7\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~9\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(4)) # (!\VGA_unit|VGA_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~7\,
	combout => \VGA_unit|VGA_unit|Add1~8_combout\,
	cout => \VGA_unit|VGA_unit|Add1~9\);

-- Location: LCCOMB_X35_Y32_N14
\VGA_unit|VGA_unit|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~10_combout\ = (\VGA_unit|VGA_unit|V_Cont\(5) & (!\VGA_unit|VGA_unit|Add1~9\)) # (!\VGA_unit|VGA_unit|V_Cont\(5) & ((\VGA_unit|VGA_unit|Add1~9\) # (GND)))
-- \VGA_unit|VGA_unit|Add1~11\ = CARRY((!\VGA_unit|VGA_unit|Add1~9\) # (!\VGA_unit|VGA_unit|V_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~9\,
	combout => \VGA_unit|VGA_unit|Add1~10_combout\,
	cout => \VGA_unit|VGA_unit|Add1~11\);

-- Location: LCCOMB_X35_Y32_N20
\VGA_unit|VGA_unit|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~16_combout\ = (\VGA_unit|VGA_unit|V_Cont\(8) & ((GND) # (!\VGA_unit|VGA_unit|Add1~15\))) # (!\VGA_unit|VGA_unit|V_Cont\(8) & (\VGA_unit|VGA_unit|Add1~15\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~17\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(8)) # (!\VGA_unit|VGA_unit|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~15\,
	combout => \VGA_unit|VGA_unit|Add1~16_combout\,
	cout => \VGA_unit|VGA_unit|Add1~17\);

-- Location: LCCOMB_X35_Y32_N22
\VGA_unit|VGA_unit|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~18_combout\ = \VGA_unit|VGA_unit|Add1~17\ $ (!\VGA_unit|VGA_unit|V_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|V_Cont\(9),
	cin => \VGA_unit|VGA_unit|Add1~17\,
	combout => \VGA_unit|VGA_unit|Add1~18_combout\);

-- Location: LCFF_X35_Y33_N9
\start_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[3]~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(3));

-- Location: LCFF_X35_Y33_N27
\start_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[1]~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(1));

-- Location: LCFF_X35_Y33_N29
\start_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[2]~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(2));

-- Location: LCFF_X35_Y33_N7
\start_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[0]~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(0));

-- Location: LCCOMB_X35_Y33_N24
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!start_counter(0) & (start_counter(1) & (start_counter(3) & !start_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => start_counter(0),
	datab => start_counter(1),
	datac => start_counter(3),
	datad => start_counter(2),
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X38_Y33_N0
\UART_unit|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~0_combout\ = (((!\UART_unit|SRAM_address\(6)) # (!\UART_unit|SRAM_address\(5))) # (!\UART_unit|SRAM_address\(7))) # (!\UART_unit|SRAM_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(4),
	datab => \UART_unit|SRAM_address\(7),
	datac => \UART_unit|SRAM_address\(5),
	datad => \UART_unit|SRAM_address\(6),
	combout => \UART_unit|LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y32_N26
\UART_unit|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~1_combout\ = (((!\UART_unit|SRAM_address\(9)) # (!\UART_unit|SRAM_address\(11))) # (!\UART_unit|SRAM_address\(10))) # (!\UART_unit|SRAM_address\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datab => \UART_unit|SRAM_address\(10),
	datac => \UART_unit|SRAM_address\(11),
	datad => \UART_unit|SRAM_address\(9),
	combout => \UART_unit|LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y32_N20
\UART_unit|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~2_combout\ = (((!\UART_unit|SRAM_address\(12)) # (!\UART_unit|SRAM_address\(13))) # (!\UART_unit|SRAM_address\(15))) # (!\UART_unit|SRAM_address\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(14),
	datab => \UART_unit|SRAM_address\(15),
	datac => \UART_unit|SRAM_address\(13),
	datad => \UART_unit|SRAM_address\(12),
	combout => \UART_unit|LessThan1~2_combout\);

-- Location: LCCOMB_X38_Y33_N2
\UART_unit|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~3_combout\ = (((!\UART_unit|SRAM_address\(17)) # (!\UART_unit|SRAM_address\(0))) # (!\UART_unit|SRAM_address\(16))) # (!\UART_unit|SRAM_address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(1),
	datab => \UART_unit|SRAM_address\(16),
	datac => \UART_unit|SRAM_address\(0),
	datad => \UART_unit|SRAM_address\(17),
	combout => \UART_unit|LessThan1~3_combout\);

-- Location: LCCOMB_X38_Y33_N12
\UART_unit|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~4_combout\ = (\UART_unit|LessThan1~2_combout\) # ((\UART_unit|LessThan1~3_combout\) # ((\UART_unit|LessThan1~1_combout\) # (\UART_unit|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~2_combout\,
	datab => \UART_unit|LessThan1~3_combout\,
	datac => \UART_unit|LessThan1~1_combout\,
	datad => \UART_unit|LessThan1~0_combout\,
	combout => \UART_unit|LessThan1~4_combout\);

-- Location: LCCOMB_X49_Y33_N6
\M2_unit|FS_unit|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector9~0_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (((\M2_unit|FS_unit|Add1~12_combout\ & \M2_unit|FS_unit|Selector17~0_combout\)))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(15)) # 
-- ((\M2_unit|FS_unit|Add1~12_combout\ & \M2_unit|FS_unit|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|SRAM_address\(15),
	datac => \M2_unit|FS_unit|Add1~12_combout\,
	datad => \M2_unit|FS_unit|Selector17~0_combout\,
	combout => \M2_unit|FS_unit|Selector9~0_combout\);

-- Location: LCCOMB_X32_Y32_N0
\VGA_unit|VGA_unit|oVGA_V_SYNC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(1) & (!\VGA_unit|VGA_unit|H_Cont\(8) & (!\VGA_unit|VGA_unit|H_Cont\(0) & !\VGA_unit|VGA_unit|H_Cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(1),
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|H_Cont\(0),
	datad => \VGA_unit|VGA_unit|H_Cont\(9),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\);

-- Location: LCCOMB_X32_Y32_N2
\VGA_unit|VGA_unit|oVGA_V_SYNC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(3) & (!\VGA_unit|VGA_unit|H_Cont\(2) & \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(3),
	datac => \VGA_unit|VGA_unit|H_Cont\(2),
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\);

-- Location: LCCOMB_X33_Y32_N14
\VGA_unit|VGA_unit|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan4~0_combout\ = ((!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(6) & !\VGA_unit|VGA_unit|H_Cont\(4)))) # (!\VGA_unit|VGA_unit|H_Cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|VGA_unit|H_Cont\(4),
	combout => \VGA_unit|VGA_unit|LessThan4~0_combout\);

-- Location: LCCOMB_X33_Y32_N16
\VGA_unit|VGA_unit|oVGA_R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~3_combout\ = (\VGA_unit|VGA_unit|H_Cont\(9) & ((\VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\) # ((!\VGA_unit|VGA_unit|H_Cont\(8))))) # (!\VGA_unit|VGA_unit|H_Cont\(9) & (((\VGA_unit|VGA_unit|H_Cont\(8)) # 
-- (!\VGA_unit|VGA_unit|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(9),
	datac => \VGA_unit|VGA_unit|LessThan4~0_combout\,
	datad => \VGA_unit|VGA_unit|H_Cont\(8),
	combout => \VGA_unit|VGA_unit|oVGA_R~3_combout\);

-- Location: LCCOMB_X34_Y32_N24
\VGA_unit|VGA_unit|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~1_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(4) & (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont\(2) & !\VGA_unit|VGA_unit|V_Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(4),
	datab => \VGA_unit|VGA_unit|V_Cont\(3),
	datac => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => \VGA_unit|VGA_unit|V_Cont\(1),
	combout => \VGA_unit|VGA_unit|LessThan6~1_combout\);

-- Location: LCCOMB_X35_Y33_N2
\start_counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[3]~0_combout\ = (start_counter(0) & (start_counter(2) & (start_counter(1) & !\state.S_TOP_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => start_counter(0),
	datab => start_counter(2),
	datac => start_counter(1),
	datad => \state.S_TOP_IDLE~regout\,
	combout => \start_counter[3]~0_combout\);

-- Location: LCCOMB_X35_Y33_N8
\start_counter[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[3]~1_combout\ = start_counter(3) $ (\start_counter[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => start_counter(3),
	datad => \start_counter[3]~0_combout\,
	combout => \start_counter[3]~1_combout\);

-- Location: LCCOMB_X35_Y33_N26
\start_counter[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[1]~2_combout\ = start_counter(1) $ (((start_counter(0) & !\state.S_TOP_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => start_counter(0),
	datac => start_counter(1),
	datad => \state.S_TOP_IDLE~regout\,
	combout => \start_counter[1]~2_combout\);

-- Location: LCCOMB_X35_Y33_N28
\start_counter[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[2]~3_combout\ = start_counter(2) $ (((start_counter(0) & (start_counter(1) & !\state.S_TOP_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => start_counter(0),
	datab => start_counter(1),
	datac => start_counter(2),
	datad => \state.S_TOP_IDLE~regout\,
	combout => \start_counter[2]~3_combout\);

-- Location: LCCOMB_X35_Y33_N6
\start_counter[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[0]~4_combout\ = start_counter(0) $ (!\state.S_TOP_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => start_counter(0),
	datad => \state.S_TOP_IDLE~regout\,
	combout => \start_counter[0]~4_combout\);

-- Location: LCCOMB_X50_Y33_N30
\M2_unit|FS_unit|Base_address[11]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Base_address[11]~2_combout\ = ((\M2_unit|FS_unit|Base_address\(15)) # ((!\M2_unit|FS_unit|Base_address\(16)) # (!\M2_unit|FS_unit|Base_address\(12)))) # (!\M2_unit|FS_unit|Base_address\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address\(14),
	datab => \M2_unit|FS_unit|Base_address\(15),
	datac => \M2_unit|FS_unit|Base_address\(12),
	datad => \M2_unit|FS_unit|Base_address\(16),
	combout => \M2_unit|FS_unit|Base_address[11]~2_combout\);

-- Location: LCCOMB_X51_Y33_N20
\M2_unit|FS_unit|Base_address[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Base_address[11]~3_combout\ = (\M2_unit|FS_unit|Base_address\(10) & ((\M2_unit|FS_unit|Base_address[11]~2_combout\))) # (!\M2_unit|FS_unit|Base_address\(10) & (\M2_unit|FS_unit|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Base_address\(10),
	datac => \M2_unit|FS_unit|Equal0~0_combout\,
	datad => \M2_unit|FS_unit|Base_address[11]~2_combout\,
	combout => \M2_unit|FS_unit|Base_address[11]~3_combout\);

-- Location: LCCOMB_X55_Y33_N28
\M2_unit|FS_unit|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~18_combout\ = (\M2_unit|FS_unit|Add10~16_combout\ & (((!\M2_unit|FS_unit|CB\(0)) # (!\M2_unit|FS_unit|Equal2~0_combout\)) # (!\M2_unit|FS_unit|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add10~16_combout\,
	datab => \M2_unit|FS_unit|Equal2~1_combout\,
	datac => \M2_unit|FS_unit|Equal2~0_combout\,
	datad => \M2_unit|FS_unit|CB\(0),
	combout => \M2_unit|FS_unit|Add10~18_combout\);

-- Location: LCCOMB_X35_Y32_N24
\VGA_unit|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~0_combout\ = (\VGA_unit|VGA_unit|Add1~2_combout\ & (\VGA_unit|VGA_unit|Add1~0_combout\ & (!\VGA_unit|VGA_unit|Add1~10_combout\ & !\VGA_unit|VGA_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~2_combout\,
	datab => \VGA_unit|VGA_unit|Add1~0_combout\,
	datac => \VGA_unit|VGA_unit|Add1~10_combout\,
	datad => \VGA_unit|VGA_unit|Add1~18_combout\,
	combout => \VGA_unit|Equal4~0_combout\);

-- Location: LCCOMB_X35_Y32_N26
\VGA_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~0_combout\ = (!\VGA_unit|VGA_unit|Add1~2_combout\ & (!\VGA_unit|VGA_unit|Add1~0_combout\ & (!\VGA_unit|VGA_unit|Add1~10_combout\ & !\VGA_unit|VGA_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~2_combout\,
	datab => \VGA_unit|VGA_unit|Add1~0_combout\,
	datac => \VGA_unit|VGA_unit|Add1~10_combout\,
	datad => \VGA_unit|VGA_unit|Add1~18_combout\,
	combout => \VGA_unit|Equal3~0_combout\);

-- Location: LCCOMB_X35_Y32_N28
\VGA_unit|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~1_combout\ = (!\VGA_unit|VGA_unit|Add1~8_combout\ & (!\VGA_unit|VGA_unit|Add1~4_combout\ & (!\VGA_unit|VGA_unit|Add1~12_combout\ & !\VGA_unit|VGA_unit|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~8_combout\,
	datab => \VGA_unit|VGA_unit|Add1~4_combout\,
	datac => \VGA_unit|VGA_unit|Add1~12_combout\,
	datad => \VGA_unit|VGA_unit|Add1~6_combout\,
	combout => \VGA_unit|Equal3~1_combout\);

-- Location: LCCOMB_X35_Y32_N30
\VGA_unit|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~2_combout\ = (!\VGA_unit|VGA_unit|Add1~14_combout\ & (\VGA_unit|Equal3~1_combout\ & (!\VGA_unit|VGA_unit|Add1~16_combout\ & \VGA_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~14_combout\,
	datab => \VGA_unit|Equal3~1_combout\,
	datac => \VGA_unit|VGA_unit|Add1~16_combout\,
	datad => \VGA_unit|Equal3~0_combout\,
	combout => \VGA_unit|Equal3~2_combout\);

-- Location: LCFF_X46_Y33_N21
\M2_unit|state.S_FS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M2_unit|state.S_M2_IDLE~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|state.S_FS~regout\);

-- Location: LCCOMB_X37_Y32_N20
\UART_unit|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~0_combout\ = (\UART_unit|UART_RX|Empty~regout\) # (\UART_unit|UART_rx_unload_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|Empty~regout\,
	datad => \UART_unit|UART_rx_unload_data~regout\,
	combout => \UART_unit|Selector26~0_combout\);

-- Location: LCFF_X37_Y32_N9
\UART_unit|UART_SRAM_state.S_US_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector0~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\);

-- Location: LCFF_X46_Y33_N9
\M2_unit|state.S_M2_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|state.S_M2_IDLE~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|state.S_M2_IDLE~regout\);

-- Location: LCCOMB_X37_Y32_N8
\UART_unit|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector0~1_combout\ = (\UART_unit|UART_SRAM_state.S_US_IDLE~regout\ & (((\UART_unit|UART_RX|Empty~regout\) # (!\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\)) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|UART_RX|Empty~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Selector0~1_combout\);

-- Location: LCFF_X46_Y33_N13
M2_start : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_start~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_start~regout\);

-- Location: LCCOMB_X46_Y33_N8
\M2_unit|state.S_M2_IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|state.S_M2_IDLE~0_combout\ = (\M2_unit|state.S_M2_IDLE~regout\) # (\M2_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_unit|state.S_M2_IDLE~regout\,
	datad => \M2_start~regout\,
	combout => \M2_unit|state.S_M2_IDLE~0_combout\);

-- Location: LCCOMB_X46_Y33_N12
\M2_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_start~0_combout\ = (\state.S_TOP_M2~regout\) # (\M2_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \M2_start~regout\,
	combout => \M2_start~0_combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(0),
	combout => \SRAM_DATA_IO[0]~0\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(1),
	combout => \SRAM_DATA_IO[1]~1\);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(2),
	combout => \SRAM_DATA_IO[2]~2\);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(3),
	combout => \SRAM_DATA_IO[3]~3\);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(4),
	combout => \SRAM_DATA_IO[4]~4\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(5),
	combout => \SRAM_DATA_IO[5]~5\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(6),
	combout => \SRAM_DATA_IO[6]~6\);

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(7),
	combout => \SRAM_DATA_IO[7]~7\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(8),
	combout => \SRAM_DATA_IO[8]~8\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(9),
	combout => \SRAM_DATA_IO[9]~9\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(10),
	combout => \SRAM_DATA_IO[10]~10\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(11),
	combout => \SRAM_DATA_IO[11]~11\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(12),
	combout => \SRAM_DATA_IO[12]~12\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(13),
	combout => \SRAM_DATA_IO[13]~13\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(14),
	combout => \SRAM_DATA_IO[14]~14\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DATA_IO(15),
	combout => \SRAM_DATA_IO[15]~15\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(17),
	combout => \SWITCH_I~combout\(17));

-- Location: CLKCTRL_G1
\SWITCH_I[17]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SWITCH_I[17]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SWITCH_I[17]~clkctrl_outclk\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50_I~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50_I,
	combout => \CLOCK_50_I~combout\);

-- Location: PLL_1
\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => \SWITCH_I[17]~clkctrl_outclk\,
	inclk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_INCLK_bus\,
	locked => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\,
	clk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\);

-- Location: LCCOMB_X1_Y18_N16
\resetn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetn~0_combout\ = (\SWITCH_I~combout\(17)) # (!\SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\,
	datad => \SWITCH_I~combout\(17),
	combout => \resetn~0_combout\);

-- Location: LCCOMB_X35_Y33_N10
\state.S_TOP_M2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.S_TOP_M2~0_combout\ = (\Selector3~1_combout\) # (\state.S_TOP_M2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datac => \state.S_TOP_M2~regout\,
	combout => \state.S_TOP_M2~0_combout\);

-- Location: CLKCTRL_G0
\resetn~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~0clkctrl_outclk\);

-- Location: LCFF_X35_Y33_N11
\state.S_TOP_M2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \state.S_TOP_M2~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_TOP_M2~regout\);

-- Location: LCCOMB_X35_Y33_N16
\state.S_TOP_IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.S_TOP_IDLE~0_combout\ = (\state.S_TOP_IDLE~regout\) # ((\Selector3~1_combout\ & !\state.S_TOP_M2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datac => \state.S_TOP_IDLE~regout\,
	datad => \state.S_TOP_M2~regout\,
	combout => \state.S_TOP_IDLE~0_combout\);

-- Location: LCFF_X35_Y33_N17
\state.S_TOP_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \state.S_TOP_IDLE~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_TOP_IDLE~regout\);

-- Location: LCCOMB_X46_Y33_N24
\M2_unit|FS_unit|state.S_FS_START~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|state.S_FS_START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \M2_unit|FS_unit|state.S_FS_START~feeder_combout\);

-- Location: LCFF_X46_Y33_N25
\M2_unit|FS_unit|state.S_FS_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|state.S_FS_START~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_START~regout\);

-- Location: LCCOMB_X46_Y33_N28
\M2_unit|FS_unit|Selector67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector67~0_combout\ = (\M2_unit|FS_unit|state.S_FS_LO_3~regout\) # (((!\M2_unit|FS_start~regout\ & \M2_unit|FS_unit|state.S_FS_IDLE~regout\)) # (!\M2_unit|FS_unit|state.S_FS_START~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_LO_3~regout\,
	datab => \M2_unit|FS_start~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_IDLE~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_START~regout\,
	combout => \M2_unit|FS_unit|Selector67~0_combout\);

-- Location: LCFF_X46_Y33_N29
\M2_unit|FS_unit|state.S_FS_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector67~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_IDLE~regout\);

-- Location: LCCOMB_X46_Y33_N2
\M2_unit|FS_unit|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector6~0_combout\ = (\M2_unit|FS_unit|FS_done~regout\ & ((\M2_unit|FS_unit|state.S_FS_IDLE~regout\ & ((!\M2_unit|FS_start~regout\))) # (!\M2_unit|FS_unit|state.S_FS_IDLE~regout\ & (\M2_unit|FS_unit|state.S_FS_START~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datab => \M2_unit|FS_unit|FS_done~regout\,
	datac => \M2_unit|FS_start~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_IDLE~regout\,
	combout => \M2_unit|FS_unit|Selector6~0_combout\);

-- Location: LCCOMB_X47_Y33_N8
\M2_unit|FS_unit|SC[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SC[0]~6_combout\ = \M2_unit|FS_unit|SC\(0) $ (VCC)
-- \M2_unit|FS_unit|SC[0]~7\ = CARRY(\M2_unit|FS_unit|SC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|SC\(0),
	datad => VCC,
	combout => \M2_unit|FS_unit|SC[0]~6_combout\,
	cout => \M2_unit|FS_unit|SC[0]~7\);

-- Location: LCCOMB_X51_Y33_N18
\M2_unit|FS_unit|SC[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SC[3]~14_combout\ = ((\M2_unit|FS_unit|Equal1~1_combout\ & \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\)) # (!\M2_unit|FS_unit|state.S_FS_START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal1~1_combout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	combout => \M2_unit|FS_unit|SC[3]~14_combout\);

-- Location: LCCOMB_X46_Y33_N6
\M2_unit|FS_unit|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|WideOr1~0_combout\ = (!\M2_unit|FS_unit|state.S_FS_LO_3~regout\ & (!\M2_unit|FS_unit|state.S_FS_LO_1~regout\ & (!\M2_unit|FS_unit|state.S_FS_LO_2~regout\ & !\M2_unit|FS_unit|state.S_FS_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_LO_3~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_LO_1~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_LO_2~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_IDLE~regout\,
	combout => \M2_unit|FS_unit|WideOr1~0_combout\);

-- Location: LCFF_X47_Y33_N9
\M2_unit|FS_unit|SC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|SC[0]~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|SC[3]~14_combout\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SC\(0));

-- Location: LCCOMB_X47_Y33_N10
\M2_unit|FS_unit|SC[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SC[1]~8_combout\ = (\M2_unit|FS_unit|SC\(1) & (!\M2_unit|FS_unit|SC[0]~7\)) # (!\M2_unit|FS_unit|SC\(1) & ((\M2_unit|FS_unit|SC[0]~7\) # (GND)))
-- \M2_unit|FS_unit|SC[1]~9\ = CARRY((!\M2_unit|FS_unit|SC[0]~7\) # (!\M2_unit|FS_unit|SC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(1),
	datad => VCC,
	cin => \M2_unit|FS_unit|SC[0]~7\,
	combout => \M2_unit|FS_unit|SC[1]~8_combout\,
	cout => \M2_unit|FS_unit|SC[1]~9\);

-- Location: LCCOMB_X47_Y33_N12
\M2_unit|FS_unit|SC[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SC[2]~10_combout\ = (\M2_unit|FS_unit|SC\(2) & (\M2_unit|FS_unit|SC[1]~9\ $ (GND))) # (!\M2_unit|FS_unit|SC\(2) & (!\M2_unit|FS_unit|SC[1]~9\ & VCC))
-- \M2_unit|FS_unit|SC[2]~11\ = CARRY((\M2_unit|FS_unit|SC\(2) & !\M2_unit|FS_unit|SC[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(2),
	datad => VCC,
	cin => \M2_unit|FS_unit|SC[1]~9\,
	combout => \M2_unit|FS_unit|SC[2]~10_combout\,
	cout => \M2_unit|FS_unit|SC[2]~11\);

-- Location: LCCOMB_X47_Y33_N14
\M2_unit|FS_unit|SC[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SC[3]~12_combout\ = (\M2_unit|FS_unit|SC\(3) & (!\M2_unit|FS_unit|SC[2]~11\)) # (!\M2_unit|FS_unit|SC\(3) & ((\M2_unit|FS_unit|SC[2]~11\) # (GND)))
-- \M2_unit|FS_unit|SC[3]~13\ = CARRY((!\M2_unit|FS_unit|SC[2]~11\) # (!\M2_unit|FS_unit|SC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|SC\(3),
	datad => VCC,
	cin => \M2_unit|FS_unit|SC[2]~11\,
	combout => \M2_unit|FS_unit|SC[3]~12_combout\,
	cout => \M2_unit|FS_unit|SC[3]~13\);

-- Location: LCFF_X47_Y33_N15
\M2_unit|FS_unit|SC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|SC[3]~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|SC[3]~14_combout\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SC\(3));

-- Location: LCFF_X47_Y33_N11
\M2_unit|FS_unit|SC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|SC[1]~8_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|SC[3]~14_combout\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SC\(1));

-- Location: LCCOMB_X47_Y33_N2
\M2_unit|FS_unit|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal1~0_combout\ = (\M2_unit|FS_unit|SC\(2) & (\M2_unit|FS_unit|SC\(0) & (\M2_unit|FS_unit|SC\(3) & \M2_unit|FS_unit|SC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(2),
	datab => \M2_unit|FS_unit|SC\(0),
	datac => \M2_unit|FS_unit|SC\(3),
	datad => \M2_unit|FS_unit|SC\(1),
	combout => \M2_unit|FS_unit|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y33_N16
\M2_unit|FS_unit|SC[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SC[4]~15_combout\ = (\M2_unit|FS_unit|SC\(4) & (\M2_unit|FS_unit|SC[3]~13\ $ (GND))) # (!\M2_unit|FS_unit|SC\(4) & (!\M2_unit|FS_unit|SC[3]~13\ & VCC))
-- \M2_unit|FS_unit|SC[4]~16\ = CARRY((\M2_unit|FS_unit|SC\(4) & !\M2_unit|FS_unit|SC[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(4),
	datad => VCC,
	cin => \M2_unit|FS_unit|SC[3]~13\,
	combout => \M2_unit|FS_unit|SC[4]~15_combout\,
	cout => \M2_unit|FS_unit|SC[4]~16\);

-- Location: LCFF_X47_Y33_N17
\M2_unit|FS_unit|SC[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|SC[4]~15_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|SC[3]~14_combout\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SC\(4));

-- Location: LCCOMB_X47_Y33_N18
\M2_unit|FS_unit|SC[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SC[5]~17_combout\ = \M2_unit|FS_unit|SC[4]~16\ $ (\M2_unit|FS_unit|SC\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|SC\(5),
	cin => \M2_unit|FS_unit|SC[4]~16\,
	combout => \M2_unit|FS_unit|SC[5]~17_combout\);

-- Location: LCFF_X47_Y33_N19
\M2_unit|FS_unit|SC[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|SC[5]~17_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|SC[3]~14_combout\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SC\(5));

-- Location: LCCOMB_X47_Y33_N4
\M2_unit|FS_unit|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~6_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (\M2_unit|FS_unit|Equal1~0_combout\ & (\M2_unit|FS_unit|SC\(4) & \M2_unit|FS_unit|SC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datab => \M2_unit|FS_unit|Equal1~0_combout\,
	datac => \M2_unit|FS_unit|SC\(4),
	datad => \M2_unit|FS_unit|SC\(5),
	combout => \M2_unit|FS_unit|Add10~6_combout\);

-- Location: LCFF_X47_Y33_N5
\M2_unit|FS_unit|state.S_FS_LO_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add10~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_LO_1~regout\);

-- Location: LCFF_X46_Y33_N7
\M2_unit|FS_unit|state.S_FS_LO_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M2_unit|FS_unit|state.S_FS_LO_1~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_LO_2~regout\);

-- Location: LCCOMB_X46_Y33_N10
\M2_unit|FS_unit|state.S_FS_LO_3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|state.S_FS_LO_3~feeder_combout\ = \M2_unit|FS_unit|state.S_FS_LO_2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|state.S_FS_LO_2~regout\,
	combout => \M2_unit|FS_unit|state.S_FS_LO_3~feeder_combout\);

-- Location: LCFF_X46_Y33_N11
\M2_unit|FS_unit|state.S_FS_LO_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|state.S_FS_LO_3~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_LO_3~regout\);

-- Location: LCCOMB_X46_Y33_N22
\M2_unit|FS_unit|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector6~1_combout\ = (\M2_unit|FS_unit|Selector6~0_combout\) # (\M2_unit|FS_unit|state.S_FS_LO_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Selector6~0_combout\,
	datad => \M2_unit|FS_unit|state.S_FS_LO_3~regout\,
	combout => \M2_unit|FS_unit|Selector6~1_combout\);

-- Location: LCFF_X46_Y33_N23
\M2_unit|FS_unit|FS_done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector6~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|FS_done~regout\);

-- Location: LCCOMB_X46_Y33_N26
\M2_unit|FS_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_start~0_combout\ = (\M2_unit|state.S_FS~regout\ & (!\M2_unit|FS_unit|FS_done~regout\)) # (!\M2_unit|state.S_FS~regout\ & ((\M2_unit|FS_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|state.S_FS~regout\,
	datab => \M2_unit|FS_unit|FS_done~regout\,
	datac => \M2_unit|FS_start~regout\,
	combout => \M2_unit|FS_start~0_combout\);

-- Location: LCFF_X46_Y33_N27
\M2_unit|FS_start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_start~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_start~regout\);

-- Location: LCCOMB_X46_Y33_N0
\M2_unit|FS_unit|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector68~0_combout\ = (\M2_unit|FS_start~regout\ & \M2_unit|FS_unit|state.S_FS_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_start~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_IDLE~regout\,
	combout => \M2_unit|FS_unit|Selector68~0_combout\);

-- Location: LCFF_X46_Y33_N1
\M2_unit|FS_unit|state.S_FS_LI_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector68~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_LI_1~regout\);

-- Location: LCFF_X51_Y33_N1
\M2_unit|FS_unit|state.S_FS_LI_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M2_unit|FS_unit|state.S_FS_LI_1~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_LI_2~regout\);

-- Location: LCCOMB_X51_Y33_N10
\M2_unit|FS_unit|state.S_FS_LI_3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|state.S_FS_LI_3~feeder_combout\ = \M2_unit|FS_unit|state.S_FS_LI_2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|state.S_FS_LI_2~regout\,
	combout => \M2_unit|FS_unit|state.S_FS_LI_3~feeder_combout\);

-- Location: LCFF_X51_Y33_N11
\M2_unit|FS_unit|state.S_FS_LI_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|state.S_FS_LI_3~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_LI_3~regout\);

-- Location: LCCOMB_X51_Y33_N12
\M2_unit|FS_unit|Selector71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector71~0_combout\ = (\M2_unit|FS_unit|state.S_FS_LI_3~regout\) # ((!\M2_unit|FS_unit|Equal1~1_combout\ & \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal1~1_combout\,
	datac => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_LI_3~regout\,
	combout => \M2_unit|FS_unit|Selector71~0_combout\);

-- Location: LCFF_X51_Y33_N13
\M2_unit|FS_unit|state.S_FS_COMMON_CASE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector71~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\);

-- Location: LCCOMB_X50_Y33_N0
\M2_unit|FS_unit|Base_address[10]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Base_address[10]~7_combout\ = (\M2_unit|FS_unit|Base_address[11]~4_combout\ & (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (!\M2_unit|FS_unit|Base_address\(10) & !\M2_unit|FS_unit|Equal0~0_combout\))) # 
-- (!\M2_unit|FS_unit|Base_address[11]~4_combout\ & (((\M2_unit|FS_unit|Base_address\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address[11]~4_combout\,
	datab => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datac => \M2_unit|FS_unit|Base_address\(10),
	datad => \M2_unit|FS_unit|Equal0~0_combout\,
	combout => \M2_unit|FS_unit|Base_address[10]~7_combout\);

-- Location: LCFF_X50_Y33_N1
\M2_unit|FS_unit|Base_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Base_address[10]~7_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|Base_address\(10));

-- Location: LCCOMB_X50_Y33_N28
\M2_unit|FS_unit|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector27~0_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & ((\M2_unit|FS_unit|Equal0~0_combout\) # (\M2_unit|FS_unit|Base_address\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Equal0~0_combout\,
	datac => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datad => \M2_unit|FS_unit|Base_address\(10),
	combout => \M2_unit|FS_unit|Selector27~0_combout\);

-- Location: LCCOMB_X51_Y33_N22
\M2_unit|FS_unit|C_END[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|C_END[2]~0_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (((\M2_unit|FS_unit|C_END\(2)) # (\M2_unit|FS_unit|Selector44~0_combout\)))) # (!\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & 
-- (\M2_unit|FS_unit|state.S_FS_START~regout\ & (\M2_unit|FS_unit|C_END\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \M2_unit|FS_unit|C_END\(2),
	datad => \M2_unit|FS_unit|Selector44~0_combout\,
	combout => \M2_unit|FS_unit|C_END[2]~0_combout\);

-- Location: LCFF_X51_Y33_N23
\M2_unit|FS_unit|C_END[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|C_END[2]~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|C_END\(2));

-- Location: LCCOMB_X51_Y33_N4
\M2_unit|FS_unit|Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector44~1_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (((\M2_unit|FS_unit|C_END\(4)) # (\M2_unit|FS_unit|Selector44~0_combout\)))) # (!\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & 
-- (\M2_unit|FS_unit|state.S_FS_START~regout\ & (\M2_unit|FS_unit|C_END\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \M2_unit|FS_unit|C_END\(4),
	datad => \M2_unit|FS_unit|Selector44~0_combout\,
	combout => \M2_unit|FS_unit|Selector44~1_combout\);

-- Location: LCFF_X51_Y33_N5
\M2_unit|FS_unit|C_END[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector44~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|C_END\(4));

-- Location: LCCOMB_X55_Y33_N24
\M2_unit|FS_unit|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal2~0_combout\ = (\M2_unit|FS_unit|CB\(4) & (\M2_unit|FS_unit|C_END\(4) & (\M2_unit|FS_unit|C_END\(2) $ (\M2_unit|FS_unit|CB\(2))))) # (!\M2_unit|FS_unit|CB\(4) & (!\M2_unit|FS_unit|C_END\(4) & (\M2_unit|FS_unit|C_END\(2) $ 
-- (\M2_unit|FS_unit|CB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(4),
	datab => \M2_unit|FS_unit|C_END\(2),
	datac => \M2_unit|FS_unit|C_END\(4),
	datad => \M2_unit|FS_unit|CB\(2),
	combout => \M2_unit|FS_unit|Equal2~0_combout\);

-- Location: LCCOMB_X55_Y33_N2
\M2_unit|FS_unit|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~0_combout\ = \M2_unit|FS_unit|CB\(0) $ (VCC)
-- \M2_unit|FS_unit|Add10~1\ = CARRY(\M2_unit|FS_unit|CB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|CB\(0),
	datad => VCC,
	combout => \M2_unit|FS_unit|Add10~0_combout\,
	cout => \M2_unit|FS_unit|Add10~1\);

-- Location: LCCOMB_X55_Y33_N30
\M2_unit|FS_unit|Add10~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~19_combout\ = (\M2_unit|FS_unit|Add10~0_combout\ & (((!\M2_unit|FS_unit|CB\(0)) # (!\M2_unit|FS_unit|Equal2~1_combout\)) # (!\M2_unit|FS_unit|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal2~0_combout\,
	datab => \M2_unit|FS_unit|Equal2~1_combout\,
	datac => \M2_unit|FS_unit|CB\(0),
	datad => \M2_unit|FS_unit|Add10~0_combout\,
	combout => \M2_unit|FS_unit|Add10~19_combout\);

-- Location: LCCOMB_X51_Y33_N24
\M2_unit|FS_unit|Add10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~5_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (\M2_unit|FS_unit|Equal1~1_combout\)) # (!\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & ((!\M2_unit|FS_unit|state.S_FS_START~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal1~1_combout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	combout => \M2_unit|FS_unit|Add10~5_combout\);

-- Location: LCFF_X55_Y33_N31
\M2_unit|FS_unit|CB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add10~19_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Add10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|CB\(0));

-- Location: LCCOMB_X55_Y33_N22
\M2_unit|FS_unit|Add10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~9_combout\ = (\M2_unit|FS_unit|Add10~7_combout\ & (((!\M2_unit|FS_unit|CB\(0)) # (!\M2_unit|FS_unit|Equal2~0_combout\)) # (!\M2_unit|FS_unit|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add10~7_combout\,
	datab => \M2_unit|FS_unit|Equal2~1_combout\,
	datac => \M2_unit|FS_unit|Equal2~0_combout\,
	datad => \M2_unit|FS_unit|CB\(0),
	combout => \M2_unit|FS_unit|Add10~9_combout\);

-- Location: LCFF_X55_Y33_N23
\M2_unit|FS_unit|CB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add10~9_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Add10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|CB\(2));

-- Location: LCCOMB_X55_Y33_N4
\M2_unit|FS_unit|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~2_combout\ = (\M2_unit|FS_unit|CB\(1) & (!\M2_unit|FS_unit|Add10~1\)) # (!\M2_unit|FS_unit|CB\(1) & ((\M2_unit|FS_unit|Add10~1\) # (GND)))
-- \M2_unit|FS_unit|Add10~3\ = CARRY((!\M2_unit|FS_unit|Add10~1\) # (!\M2_unit|FS_unit|CB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|CB\(1),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add10~1\,
	combout => \M2_unit|FS_unit|Add10~2_combout\,
	cout => \M2_unit|FS_unit|Add10~3\);

-- Location: LCCOMB_X55_Y33_N0
\M2_unit|FS_unit|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~4_combout\ = (\M2_unit|FS_unit|Add10~2_combout\ & (((!\M2_unit|FS_unit|CB\(0)) # (!\M2_unit|FS_unit|Equal2~1_combout\)) # (!\M2_unit|FS_unit|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal2~0_combout\,
	datab => \M2_unit|FS_unit|Equal2~1_combout\,
	datac => \M2_unit|FS_unit|Add10~2_combout\,
	datad => \M2_unit|FS_unit|CB\(0),
	combout => \M2_unit|FS_unit|Add10~4_combout\);

-- Location: LCFF_X55_Y33_N1
\M2_unit|FS_unit|CB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add10~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Add10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|CB\(1));

-- Location: LCCOMB_X55_Y33_N16
\M2_unit|FS_unit|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~12_combout\ = (\M2_unit|FS_unit|Add10~10_combout\ & (((!\M2_unit|FS_unit|CB\(0)) # (!\M2_unit|FS_unit|Equal2~1_combout\)) # (!\M2_unit|FS_unit|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal2~0_combout\,
	datab => \M2_unit|FS_unit|Equal2~1_combout\,
	datac => \M2_unit|FS_unit|Add10~10_combout\,
	datad => \M2_unit|FS_unit|CB\(0),
	combout => \M2_unit|FS_unit|Add10~12_combout\);

-- Location: LCFF_X55_Y33_N17
\M2_unit|FS_unit|CB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add10~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Add10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|CB\(3));

-- Location: LCCOMB_X55_Y33_N26
\M2_unit|FS_unit|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal2~1_combout\ = (!\M2_unit|FS_unit|CB\(3) & (\M2_unit|FS_unit|CB\(1) & (\M2_unit|FS_unit|CB\(5) $ (\M2_unit|FS_unit|C_END\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(5),
	datab => \M2_unit|FS_unit|C_END\(2),
	datac => \M2_unit|FS_unit|CB\(3),
	datad => \M2_unit|FS_unit|CB\(1),
	combout => \M2_unit|FS_unit|Equal2~1_combout\);

-- Location: LCCOMB_X55_Y33_N20
\M2_unit|FS_unit|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal2~2_combout\ = (\M2_unit|FS_unit|Equal2~1_combout\ & (\M2_unit|FS_unit|Equal2~0_combout\ & \M2_unit|FS_unit|CB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Equal2~1_combout\,
	datac => \M2_unit|FS_unit|Equal2~0_combout\,
	datad => \M2_unit|FS_unit|CB\(0),
	combout => \M2_unit|FS_unit|Equal2~2_combout\);

-- Location: LCCOMB_X47_Y33_N20
\M2_unit|FS_unit|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal1~1_combout\ = (\M2_unit|FS_unit|Equal1~0_combout\ & (\M2_unit|FS_unit|SC\(4) & \M2_unit|FS_unit|SC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Equal1~0_combout\,
	datac => \M2_unit|FS_unit|SC\(4),
	datad => \M2_unit|FS_unit|SC\(5),
	combout => \M2_unit|FS_unit|Equal1~1_combout\);

-- Location: LCCOMB_X56_Y33_N22
\M2_unit|FS_unit|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add9~0_combout\ = \M2_unit|FS_unit|RB\(0) $ (VCC)
-- \M2_unit|FS_unit|Add9~1\ = CARRY(\M2_unit|FS_unit|RB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|RB\(0),
	datad => VCC,
	combout => \M2_unit|FS_unit|Add9~0_combout\,
	cout => \M2_unit|FS_unit|Add9~1\);

-- Location: LCCOMB_X57_Y33_N0
\M2_unit|FS_unit|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector65~0_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & \M2_unit|FS_unit|Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datad => \M2_unit|FS_unit|Add9~0_combout\,
	combout => \M2_unit|FS_unit|Selector65~0_combout\);

-- Location: LCCOMB_X51_Y33_N28
\M2_unit|FS_unit|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector61~0_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (\M2_unit|FS_unit|Equal1~1_combout\ & (\M2_unit|FS_unit|Equal2~2_combout\))) # (!\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & 
-- (((!\M2_unit|FS_unit|state.S_FS_START~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal1~1_combout\,
	datab => \M2_unit|FS_unit|Equal2~2_combout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	combout => \M2_unit|FS_unit|Selector61~0_combout\);

-- Location: LCFF_X57_Y33_N1
\M2_unit|FS_unit|RB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector65~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \M2_unit|FS_unit|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|RB\(0));

-- Location: LCCOMB_X56_Y33_N24
\M2_unit|FS_unit|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add9~2_combout\ = (\M2_unit|FS_unit|RB\(1) & (!\M2_unit|FS_unit|Add9~1\)) # (!\M2_unit|FS_unit|RB\(1) & ((\M2_unit|FS_unit|Add9~1\) # (GND)))
-- \M2_unit|FS_unit|Add9~3\ = CARRY((!\M2_unit|FS_unit|Add9~1\) # (!\M2_unit|FS_unit|RB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(1),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add9~1\,
	combout => \M2_unit|FS_unit|Add9~2_combout\,
	cout => \M2_unit|FS_unit|Add9~3\);

-- Location: LCCOMB_X56_Y33_N26
\M2_unit|FS_unit|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add9~4_combout\ = (\M2_unit|FS_unit|RB\(2) & (\M2_unit|FS_unit|Add9~3\ $ (GND))) # (!\M2_unit|FS_unit|RB\(2) & (!\M2_unit|FS_unit|Add9~3\ & VCC))
-- \M2_unit|FS_unit|Add9~5\ = CARRY((\M2_unit|FS_unit|RB\(2) & !\M2_unit|FS_unit|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(2),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add9~3\,
	combout => \M2_unit|FS_unit|Add9~4_combout\,
	cout => \M2_unit|FS_unit|Add9~5\);

-- Location: LCCOMB_X57_Y33_N8
\M2_unit|FS_unit|RB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|RB~0_combout\ = (\M2_unit|FS_unit|Add9~2_combout\ & ((\M2_unit|FS_unit|RB\(1)) # (\M2_unit|FS_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add9~2_combout\,
	datac => \M2_unit|FS_unit|RB\(1),
	datad => \M2_unit|FS_unit|Equal3~0_combout\,
	combout => \M2_unit|FS_unit|RB~0_combout\);

-- Location: LCFF_X57_Y33_N9
\M2_unit|FS_unit|RB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|RB~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|RB\(1));

-- Location: LCCOMB_X57_Y33_N2
\M2_unit|FS_unit|RB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|RB~1_combout\ = (\M2_unit|FS_unit|Add9~4_combout\ & ((\M2_unit|FS_unit|RB\(1)) # (\M2_unit|FS_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add9~4_combout\,
	datac => \M2_unit|FS_unit|RB\(1),
	datad => \M2_unit|FS_unit|Equal3~0_combout\,
	combout => \M2_unit|FS_unit|RB~1_combout\);

-- Location: LCFF_X57_Y33_N3
\M2_unit|FS_unit|RB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|RB~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|RB\(2));

-- Location: LCCOMB_X56_Y33_N28
\M2_unit|FS_unit|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add9~6_combout\ = (\M2_unit|FS_unit|RB\(3) & (!\M2_unit|FS_unit|Add9~5\)) # (!\M2_unit|FS_unit|RB\(3) & ((\M2_unit|FS_unit|Add9~5\) # (GND)))
-- \M2_unit|FS_unit|Add9~7\ = CARRY((!\M2_unit|FS_unit|Add9~5\) # (!\M2_unit|FS_unit|RB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|RB\(3),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add9~5\,
	combout => \M2_unit|FS_unit|Add9~6_combout\,
	cout => \M2_unit|FS_unit|Add9~7\);

-- Location: LCCOMB_X57_Y33_N12
\M2_unit|FS_unit|RB~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|RB~2_combout\ = (\M2_unit|FS_unit|Add9~6_combout\ & ((\M2_unit|FS_unit|RB\(1)) # (\M2_unit|FS_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add9~6_combout\,
	datac => \M2_unit|FS_unit|RB\(1),
	datad => \M2_unit|FS_unit|Equal3~0_combout\,
	combout => \M2_unit|FS_unit|RB~2_combout\);

-- Location: LCFF_X57_Y33_N13
\M2_unit|FS_unit|RB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|RB~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|RB\(3));

-- Location: LCCOMB_X56_Y33_N30
\M2_unit|FS_unit|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add9~8_combout\ = \M2_unit|FS_unit|Add9~7\ $ (!\M2_unit|FS_unit|RB\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|RB\(4),
	cin => \M2_unit|FS_unit|Add9~7\,
	combout => \M2_unit|FS_unit|Add9~8_combout\);

-- Location: LCCOMB_X57_Y33_N6
\M2_unit|FS_unit|RB~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|RB~3_combout\ = (\M2_unit|FS_unit|Add9~8_combout\ & ((\M2_unit|FS_unit|RB\(1)) # (\M2_unit|FS_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|RB\(1),
	datac => \M2_unit|FS_unit|Add9~8_combout\,
	datad => \M2_unit|FS_unit|Equal3~0_combout\,
	combout => \M2_unit|FS_unit|RB~3_combout\);

-- Location: LCFF_X57_Y33_N7
\M2_unit|FS_unit|RB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|RB~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|RB\(4));

-- Location: LCCOMB_X57_Y33_N10
\M2_unit|FS_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal3~0_combout\ = (((!\M2_unit|FS_unit|RB\(0)) # (!\M2_unit|FS_unit|RB\(4))) # (!\M2_unit|FS_unit|RB\(2))) # (!\M2_unit|FS_unit|RB\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(3),
	datab => \M2_unit|FS_unit|RB\(2),
	datac => \M2_unit|FS_unit|RB\(4),
	datad => \M2_unit|FS_unit|RB\(0),
	combout => \M2_unit|FS_unit|Equal3~0_combout\);

-- Location: LCCOMB_X51_Y33_N30
\M2_unit|FS_unit|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector44~0_combout\ = (!\M2_unit|FS_unit|RB\(1) & (\M2_unit|FS_unit|Equal2~2_combout\ & (\M2_unit|FS_unit|Equal1~1_combout\ & !\M2_unit|FS_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(1),
	datab => \M2_unit|FS_unit|Equal2~2_combout\,
	datac => \M2_unit|FS_unit|Equal1~1_combout\,
	datad => \M2_unit|FS_unit|Equal3~0_combout\,
	combout => \M2_unit|FS_unit|Selector44~0_combout\);

-- Location: LCCOMB_X51_Y33_N16
\M2_unit|FS_unit|Base_address[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Base_address[11]~4_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (!\M2_unit|FS_unit|Base_address[11]~3_combout\ & (\M2_unit|FS_unit|Selector44~0_combout\))) # (!\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & 
-- (((!\M2_unit|FS_unit|state.S_FS_START~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address[11]~3_combout\,
	datab => \M2_unit|FS_unit|Selector44~0_combout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	combout => \M2_unit|FS_unit|Base_address[11]~4_combout\);

-- Location: LCFF_X50_Y33_N29
\M2_unit|FS_unit|Base_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector27~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \M2_unit|FS_unit|Base_address[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|Base_address\(15));

-- Location: LCCOMB_X50_Y33_N2
\M2_unit|FS_unit|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector30~0_combout\ = (!\M2_unit|FS_unit|Equal0~0_combout\ & (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & !\M2_unit|FS_unit|Base_address\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Equal0~0_combout\,
	datac => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datad => \M2_unit|FS_unit|Base_address\(10),
	combout => \M2_unit|FS_unit|Selector30~0_combout\);

-- Location: LCFF_X50_Y33_N3
\M2_unit|FS_unit|Base_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector30~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \M2_unit|FS_unit|Base_address[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|Base_address\(12));

-- Location: LCCOMB_X51_Y33_N2
\M2_unit|FS_unit|Base_address[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Base_address[11]~5_combout\ = ((\M2_unit|FS_unit|Base_address\(10) & (\M2_unit|FS_unit|Base_address[11]~2_combout\)) # (!\M2_unit|FS_unit|Base_address\(10) & ((\M2_unit|FS_unit|Equal0~0_combout\)))) # 
-- (!\M2_unit|FS_unit|Selector44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address[11]~2_combout\,
	datab => \M2_unit|FS_unit|Base_address\(10),
	datac => \M2_unit|FS_unit|Equal0~0_combout\,
	datad => \M2_unit|FS_unit|Selector44~0_combout\,
	combout => \M2_unit|FS_unit|Base_address[11]~5_combout\);

-- Location: LCCOMB_X50_Y33_N26
\M2_unit|FS_unit|Base_address[16]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Base_address[16]~6_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (((\M2_unit|FS_unit|Base_address\(16)) # (!\M2_unit|FS_unit|Base_address[11]~5_combout\)))) # (!\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & 
-- (\M2_unit|FS_unit|state.S_FS_START~regout\ & (\M2_unit|FS_unit|Base_address\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datac => \M2_unit|FS_unit|Base_address\(16),
	datad => \M2_unit|FS_unit|Base_address[11]~5_combout\,
	combout => \M2_unit|FS_unit|Base_address[16]~6_combout\);

-- Location: LCFF_X50_Y33_N27
\M2_unit|FS_unit|Base_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Base_address[16]~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|Base_address\(16));

-- Location: LCCOMB_X50_Y33_N4
\M2_unit|FS_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal0~0_combout\ = (\M2_unit|FS_unit|Base_address\(14)) # ((\M2_unit|FS_unit|Base_address\(15)) # ((\M2_unit|FS_unit|Base_address\(12)) # (\M2_unit|FS_unit|Base_address\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address\(14),
	datab => \M2_unit|FS_unit|Base_address\(15),
	datac => \M2_unit|FS_unit|Base_address\(12),
	datad => \M2_unit|FS_unit|Base_address\(16),
	combout => \M2_unit|FS_unit|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y33_N0
\M2_unit|FS_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~0_combout\ = (\M2_unit|FS_unit|CB\(3) & (\M2_unit|FS_unit|SC\(3) $ (VCC))) # (!\M2_unit|FS_unit|CB\(3) & (\M2_unit|FS_unit|SC\(3) & VCC))
-- \M2_unit|FS_unit|Add0~1\ = CARRY((\M2_unit|FS_unit|CB\(3) & \M2_unit|FS_unit|SC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(3),
	datab => \M2_unit|FS_unit|SC\(3),
	datad => VCC,
	combout => \M2_unit|FS_unit|Add0~0_combout\,
	cout => \M2_unit|FS_unit|Add0~1\);

-- Location: LCCOMB_X51_Y33_N8
\M2_unit|FS_unit|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector18~0_combout\ = (\M2_unit|FS_unit|Equal0~0_combout\ & (\M2_unit|FS_unit|Add3~2_combout\)) # (!\M2_unit|FS_unit|Equal0~0_combout\ & ((\M2_unit|FS_unit|Base_address\(10) & (\M2_unit|FS_unit|Add3~2_combout\)) # 
-- (!\M2_unit|FS_unit|Base_address\(10) & ((\M2_unit|FS_unit|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add3~2_combout\,
	datab => \M2_unit|FS_unit|Equal0~0_combout\,
	datac => \M2_unit|FS_unit|Base_address\(10),
	datad => \M2_unit|FS_unit|Add0~0_combout\,
	combout => \M2_unit|FS_unit|Selector18~0_combout\);

-- Location: LCCOMB_X54_Y33_N10
\M2_unit|FS_unit|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector18~1_combout\ = (\M2_unit|FS_unit|WideOr2~0_combout\ & ((\M2_unit|FS_unit|Selector18~0_combout\) # ((\M2_unit|FS_unit|SRAM_address\(6) & !\M2_unit|FS_unit|WideOr1~0_combout\)))) # (!\M2_unit|FS_unit|WideOr2~0_combout\ & 
-- (((\M2_unit|FS_unit|SRAM_address\(6) & !\M2_unit|FS_unit|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr2~0_combout\,
	datab => \M2_unit|FS_unit|Selector18~0_combout\,
	datac => \M2_unit|FS_unit|SRAM_address\(6),
	datad => \M2_unit|FS_unit|WideOr1~0_combout\,
	combout => \M2_unit|FS_unit|Selector18~1_combout\);

-- Location: LCFF_X54_Y33_N11
\M2_unit|FS_unit|SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector18~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(6));

-- Location: LCCOMB_X54_Y33_N12
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(6)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(6),
	datab => \state.S_TOP_IDLE~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(6),
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X51_Y33_N0
\M2_unit|FS_unit|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|WideOr2~0_combout\ = (\M2_unit|FS_unit|state.S_FS_LI_3~regout\) # ((\M2_unit|FS_unit|state.S_FS_LI_1~regout\) # ((\M2_unit|FS_unit|state.S_FS_LI_2~regout\) # (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_LI_3~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_LI_1~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_LI_2~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	combout => \M2_unit|FS_unit|WideOr2~0_combout\);

-- Location: LCCOMB_X53_Y33_N4
\M2_unit|FS_unit|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~0_combout\ = (\M2_unit|FS_unit|CB\(2) & (\M2_unit|FS_unit|SC\(3) $ (VCC))) # (!\M2_unit|FS_unit|CB\(2) & (\M2_unit|FS_unit|SC\(3) & VCC))
-- \M2_unit|FS_unit|Add3~1\ = CARRY((\M2_unit|FS_unit|CB\(2) & \M2_unit|FS_unit|SC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(2),
	datab => \M2_unit|FS_unit|SC\(3),
	datad => VCC,
	combout => \M2_unit|FS_unit|Add3~0_combout\,
	cout => \M2_unit|FS_unit|Add3~1\);

-- Location: LCCOMB_X51_Y33_N6
\M2_unit|FS_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Equal0~1_combout\ = (\M2_unit|FS_unit|Equal0~0_combout\) # (\M2_unit|FS_unit|Base_address\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Equal0~0_combout\,
	datac => \M2_unit|FS_unit|Base_address\(10),
	combout => \M2_unit|FS_unit|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y33_N2
\M2_unit|FS_unit|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector19~0_combout\ = (\M2_unit|FS_unit|WideOr2~0_combout\ & ((\M2_unit|FS_unit|Equal0~1_combout\ & ((\M2_unit|FS_unit|Add3~0_combout\))) # (!\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|CB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(2),
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|Add3~0_combout\,
	datad => \M2_unit|FS_unit|Equal0~1_combout\,
	combout => \M2_unit|FS_unit|Selector19~0_combout\);

-- Location: LCCOMB_X54_Y33_N14
\M2_unit|FS_unit|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector19~1_combout\ = (\M2_unit|FS_unit|Selector19~0_combout\) # ((!\M2_unit|FS_unit|WideOr1~0_combout\ & \M2_unit|FS_unit|SRAM_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datac => \M2_unit|FS_unit|SRAM_address\(5),
	datad => \M2_unit|FS_unit|Selector19~0_combout\,
	combout => \M2_unit|FS_unit|Selector19~1_combout\);

-- Location: LCFF_X54_Y33_N15
\M2_unit|FS_unit|SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector19~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(5));

-- Location: LCCOMB_X38_Y33_N14
\UART_unit|SRAM_address[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[0]~18_combout\ = \UART_unit|SRAM_address\(0) $ (VCC)
-- \UART_unit|SRAM_address[0]~19\ = CARRY(\UART_unit|SRAM_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(0),
	datad => VCC,
	combout => \UART_unit|SRAM_address[0]~18_combout\,
	cout => \UART_unit|SRAM_address[0]~19\);

-- Location: LCCOMB_X37_Y32_N22
\UART_unit|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector1~0_combout\ = (!\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\) # (\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector1~0_combout\);

-- Location: LCFF_X37_Y32_N23
\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector1~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\);

-- Location: LCCOMB_X37_Y32_N12
\UART_unit|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector2~0_combout\ = (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\) # (\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector2~0_combout\);

-- Location: LCFF_X37_Y32_N13
\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector2~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\);

-- Location: LCCOMB_X37_Y32_N30
\UART_unit|Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~2_combout\ = (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\) # ((\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\) # 
-- (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\,
	datab => \UART_unit|UART_RX|Empty~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Selector26~2_combout\);

-- Location: LCCOMB_X37_Y32_N10
\UART_unit|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector4~0_combout\ = (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\) # (\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector4~0_combout\);

-- Location: LCFF_X37_Y32_N11
\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector4~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\);

-- Location: LCCOMB_X37_Y32_N16
\UART_unit|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector5~0_combout\ = (!\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\) # (\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|Empty~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\,
	combout => \UART_unit|Selector5~0_combout\);

-- Location: LCFF_X37_Y32_N17
\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector5~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\);

-- Location: LCCOMB_X37_Y32_N24
\UART_unit|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector3~0_combout\ = (!\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\) # ((!\UART_unit|LessThan1~5_combout\ & \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|UART_RX|Empty~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Selector3~0_combout\);

-- Location: LCFF_X37_Y32_N25
\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector3~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\);

-- Location: LCCOMB_X37_Y32_N18
\UART_unit|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~1_combout\ = (\UART_unit|Selector26~0_combout\ & ((\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\) # ((\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\) # 
-- (\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Selector26~0_combout\,
	datab => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\,
	combout => \UART_unit|Selector26~1_combout\);

-- Location: LCCOMB_X37_Y32_N0
\UART_unit|Selector26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~3_combout\ = (\UART_unit|Selector26~1_combout\) # ((\UART_unit|UART_rx_unload_data~regout\ & ((\UART_unit|Selector26~2_combout\) # (!\UART_unit|UART_SRAM_state.S_US_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\,
	datab => \UART_unit|Selector26~2_combout\,
	datac => \UART_unit|UART_rx_unload_data~regout\,
	datad => \UART_unit|Selector26~1_combout\,
	combout => \UART_unit|Selector26~3_combout\);

-- Location: LCFF_X37_Y32_N1
\UART_unit|UART_rx_unload_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector26~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_rx_unload_data~regout\);

-- Location: LCCOMB_X37_Y32_N28
\UART_unit|UART_RX|Empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Empty~0_combout\ = (\UART_unit|UART_RX|Empty~regout\ & !\UART_unit|UART_rx_unload_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_RX|Empty~regout\,
	datad => \UART_unit|UART_rx_unload_data~regout\,
	combout => \UART_unit|UART_RX|Empty~0_combout\);

-- Location: LCFF_X37_Y32_N29
\UART_unit|UART_RX|Empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Empty~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|Empty~regout\);

-- Location: LCCOMB_X37_Y32_N2
\UART_unit|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector6~0_combout\ = (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\) # (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datab => \UART_unit|UART_RX|Empty~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Selector6~0_combout\);

-- Location: LCFF_X37_Y32_N3
\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector6~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\);

-- Location: LCCOMB_X38_Y33_N20
\UART_unit|SRAM_address[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[3]~24_combout\ = (\UART_unit|SRAM_address\(3) & (!\UART_unit|SRAM_address[2]~23\)) # (!\UART_unit|SRAM_address\(3) & ((\UART_unit|SRAM_address[2]~23\) # (GND)))
-- \UART_unit|SRAM_address[3]~25\ = CARRY((!\UART_unit|SRAM_address[2]~23\) # (!\UART_unit|SRAM_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(3),
	datad => VCC,
	cin => \UART_unit|SRAM_address[2]~23\,
	combout => \UART_unit|SRAM_address[3]~24_combout\,
	cout => \UART_unit|SRAM_address[3]~25\);

-- Location: LCCOMB_X37_Y32_N14
\UART_unit|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector0~0_combout\ = (!\UART_unit|UART_RX|Empty~regout\ & \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|Empty~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Selector0~0_combout\);

-- Location: LCFF_X38_Y33_N21
\UART_unit|SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[3]~24_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(3));

-- Location: LCCOMB_X38_Y33_N6
\UART_unit|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~5_combout\ = (!\UART_unit|LessThan1~4_combout\ & (\UART_unit|SRAM_address\(3) & \UART_unit|SRAM_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~4_combout\,
	datac => \UART_unit|SRAM_address\(3),
	datad => \UART_unit|SRAM_address\(2),
	combout => \UART_unit|LessThan1~5_combout\);

-- Location: LCFF_X38_Y33_N15
\UART_unit|SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[0]~18_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(0));

-- Location: LCCOMB_X38_Y33_N16
\UART_unit|SRAM_address[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[1]~20_combout\ = (\UART_unit|SRAM_address\(1) & (!\UART_unit|SRAM_address[0]~19\)) # (!\UART_unit|SRAM_address\(1) & ((\UART_unit|SRAM_address[0]~19\) # (GND)))
-- \UART_unit|SRAM_address[1]~21\ = CARRY((!\UART_unit|SRAM_address[0]~19\) # (!\UART_unit|SRAM_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(1),
	datad => VCC,
	cin => \UART_unit|SRAM_address[0]~19\,
	combout => \UART_unit|SRAM_address[1]~20_combout\,
	cout => \UART_unit|SRAM_address[1]~21\);

-- Location: LCCOMB_X38_Y33_N18
\UART_unit|SRAM_address[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[2]~22_combout\ = (\UART_unit|SRAM_address\(2) & (\UART_unit|SRAM_address[1]~21\ $ (GND))) # (!\UART_unit|SRAM_address\(2) & (!\UART_unit|SRAM_address[1]~21\ & VCC))
-- \UART_unit|SRAM_address[2]~23\ = CARRY((\UART_unit|SRAM_address\(2) & !\UART_unit|SRAM_address[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(2),
	datad => VCC,
	cin => \UART_unit|SRAM_address[1]~21\,
	combout => \UART_unit|SRAM_address[2]~22_combout\,
	cout => \UART_unit|SRAM_address[2]~23\);

-- Location: LCFF_X38_Y33_N19
\UART_unit|SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[2]~22_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(2));

-- Location: LCCOMB_X38_Y33_N24
\UART_unit|SRAM_address[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[5]~28_combout\ = (\UART_unit|SRAM_address\(5) & (!\UART_unit|SRAM_address[4]~27\)) # (!\UART_unit|SRAM_address\(5) & ((\UART_unit|SRAM_address[4]~27\) # (GND)))
-- \UART_unit|SRAM_address[5]~29\ = CARRY((!\UART_unit|SRAM_address[4]~27\) # (!\UART_unit|SRAM_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(5),
	datad => VCC,
	cin => \UART_unit|SRAM_address[4]~27\,
	combout => \UART_unit|SRAM_address[5]~28_combout\,
	cout => \UART_unit|SRAM_address[5]~29\);

-- Location: LCFF_X38_Y33_N25
\UART_unit|SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[5]~28_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(5));

-- Location: LCCOMB_X54_Y33_N0
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|SRAM_address\(5))) # (!\state.S_TOP_M2~regout\ & ((\UART_unit|SRAM_address\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \state.S_TOP_IDLE~regout\,
	datac => \M2_unit|FS_unit|SRAM_address\(5),
	datad => \UART_unit|SRAM_address\(5),
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X57_Y33_N14
\M2_unit|FS_unit|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~0_combout\ = (\M2_unit|FS_unit|SC\(3) & (\M2_unit|FS_unit|SC\(5) $ (VCC))) # (!\M2_unit|FS_unit|SC\(3) & (\M2_unit|FS_unit|SC\(5) & VCC))
-- \M2_unit|FS_unit|Add2~1\ = CARRY((\M2_unit|FS_unit|SC\(3) & \M2_unit|FS_unit|SC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(3),
	datab => \M2_unit|FS_unit|SC\(5),
	datad => VCC,
	combout => \M2_unit|FS_unit|Add2~0_combout\,
	cout => \M2_unit|FS_unit|Add2~1\);

-- Location: LCCOMB_X53_Y33_N8
\M2_unit|FS_unit|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~4_combout\ = ((\M2_unit|FS_unit|CB\(4) $ (\M2_unit|FS_unit|Add2~0_combout\ $ (!\M2_unit|FS_unit|Add3~3\)))) # (GND)
-- \M2_unit|FS_unit|Add3~5\ = CARRY((\M2_unit|FS_unit|CB\(4) & ((\M2_unit|FS_unit|Add2~0_combout\) # (!\M2_unit|FS_unit|Add3~3\))) # (!\M2_unit|FS_unit|CB\(4) & (\M2_unit|FS_unit|Add2~0_combout\ & !\M2_unit|FS_unit|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(4),
	datab => \M2_unit|FS_unit|Add2~0_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~3\,
	combout => \M2_unit|FS_unit|Add3~4_combout\,
	cout => \M2_unit|FS_unit|Add3~5\);

-- Location: LCCOMB_X51_Y33_N26
\M2_unit|FS_unit|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector17~0_combout\ = (\M2_unit|FS_unit|WideOr2~0_combout\ & (!\M2_unit|FS_unit|Equal0~0_combout\ & !\M2_unit|FS_unit|Base_address\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr2~0_combout\,
	datab => \M2_unit|FS_unit|Equal0~0_combout\,
	datac => \M2_unit|FS_unit|Base_address\(10),
	combout => \M2_unit|FS_unit|Selector17~0_combout\);

-- Location: LCCOMB_X55_Y33_N18
\M2_unit|FS_unit|Add10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add10~15_combout\ = (\M2_unit|FS_unit|Add10~13_combout\ & (((!\M2_unit|FS_unit|CB\(0)) # (!\M2_unit|FS_unit|Equal2~0_combout\)) # (!\M2_unit|FS_unit|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add10~13_combout\,
	datab => \M2_unit|FS_unit|Equal2~1_combout\,
	datac => \M2_unit|FS_unit|Equal2~0_combout\,
	datad => \M2_unit|FS_unit|CB\(0),
	combout => \M2_unit|FS_unit|Add10~15_combout\);

-- Location: LCFF_X55_Y33_N19
\M2_unit|FS_unit|CB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add10~15_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_COMMON_CASE~regout\,
	ena => \M2_unit|FS_unit|Add10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|CB\(4));

-- Location: LCCOMB_X56_Y33_N2
\M2_unit|FS_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~2_combout\ = (\M2_unit|FS_unit|SC\(4) & ((\M2_unit|FS_unit|CB\(4) & (\M2_unit|FS_unit|Add0~1\ & VCC)) # (!\M2_unit|FS_unit|CB\(4) & (!\M2_unit|FS_unit|Add0~1\)))) # (!\M2_unit|FS_unit|SC\(4) & ((\M2_unit|FS_unit|CB\(4) & 
-- (!\M2_unit|FS_unit|Add0~1\)) # (!\M2_unit|FS_unit|CB\(4) & ((\M2_unit|FS_unit|Add0~1\) # (GND)))))
-- \M2_unit|FS_unit|Add0~3\ = CARRY((\M2_unit|FS_unit|SC\(4) & (!\M2_unit|FS_unit|CB\(4) & !\M2_unit|FS_unit|Add0~1\)) # (!\M2_unit|FS_unit|SC\(4) & ((!\M2_unit|FS_unit|Add0~1\) # (!\M2_unit|FS_unit|CB\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(4),
	datab => \M2_unit|FS_unit|CB\(4),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~1\,
	combout => \M2_unit|FS_unit|Add0~2_combout\,
	cout => \M2_unit|FS_unit|Add0~3\);

-- Location: LCCOMB_X53_Y33_N28
\M2_unit|FS_unit|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector17~1_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (\M2_unit|FS_unit|Selector17~0_combout\ & (\M2_unit|FS_unit|Add0~2_combout\))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(7)) # 
-- ((\M2_unit|FS_unit|Selector17~0_combout\ & \M2_unit|FS_unit|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|Selector17~0_combout\,
	datac => \M2_unit|FS_unit|Add0~2_combout\,
	datad => \M2_unit|FS_unit|SRAM_address\(7),
	combout => \M2_unit|FS_unit|Selector17~1_combout\);

-- Location: LCCOMB_X53_Y33_N0
\M2_unit|FS_unit|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector17~2_combout\ = (\M2_unit|FS_unit|Selector17~1_combout\) # ((\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|WideOr2~0_combout\ & \M2_unit|FS_unit|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal0~1_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|Add3~4_combout\,
	datad => \M2_unit|FS_unit|Selector17~1_combout\,
	combout => \M2_unit|FS_unit|Selector17~2_combout\);

-- Location: LCFF_X53_Y33_N1
\M2_unit|FS_unit|SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector17~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(7));

-- Location: LCCOMB_X54_Y33_N30
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(7)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(7),
	datab => \state.S_TOP_IDLE~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(7),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X54_Y33_N18
\M2_unit|FS_unit|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector20~0_combout\ = (\M2_unit|FS_unit|WideOr2~0_combout\ & ((\M2_unit|FS_unit|CB\(1)) # ((\M2_unit|FS_unit|SRAM_address\(4) & !\M2_unit|FS_unit|WideOr1~0_combout\)))) # (!\M2_unit|FS_unit|WideOr2~0_combout\ & 
-- (((\M2_unit|FS_unit|SRAM_address\(4) & !\M2_unit|FS_unit|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr2~0_combout\,
	datab => \M2_unit|FS_unit|CB\(1),
	datac => \M2_unit|FS_unit|SRAM_address\(4),
	datad => \M2_unit|FS_unit|WideOr1~0_combout\,
	combout => \M2_unit|FS_unit|Selector20~0_combout\);

-- Location: LCFF_X54_Y33_N19
\M2_unit|FS_unit|SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector20~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(4));

-- Location: LCCOMB_X54_Y33_N28
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(4)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(4),
	datab => \state.S_TOP_IDLE~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(4),
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X54_Y33_N16
\unit0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr6~0_combout\ = (\Selector21~0_combout\ & (!\Selector22~0_combout\ & (\Selector20~0_combout\ $ (!\Selector23~0_combout\)))) # (!\Selector21~0_combout\ & (\Selector23~0_combout\ & (\Selector22~0_combout\ $ (!\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \unit0|WideOr6~0_combout\);

-- Location: LCCOMB_X54_Y33_N2
\unit0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr5~0_combout\ = (\Selector22~0_combout\ & ((\Selector23~0_combout\ & ((\Selector20~0_combout\))) # (!\Selector23~0_combout\ & (\Selector21~0_combout\)))) # (!\Selector22~0_combout\ & (\Selector21~0_combout\ & (\Selector20~0_combout\ $ 
-- (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \unit0|WideOr5~0_combout\);

-- Location: LCCOMB_X54_Y33_N4
\unit0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr4~0_combout\ = (\Selector21~0_combout\ & (\Selector20~0_combout\ & ((\Selector22~0_combout\) # (!\Selector23~0_combout\)))) # (!\Selector21~0_combout\ & (\Selector22~0_combout\ & (!\Selector20~0_combout\ & !\Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \unit0|WideOr4~0_combout\);

-- Location: LCCOMB_X54_Y33_N22
\unit0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr3~0_combout\ = (\Selector23~0_combout\ & (\Selector21~0_combout\ $ ((!\Selector22~0_combout\)))) # (!\Selector23~0_combout\ & ((\Selector21~0_combout\ & (!\Selector22~0_combout\ & !\Selector20~0_combout\)) # (!\Selector21~0_combout\ & 
-- (\Selector22~0_combout\ & \Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \unit0|WideOr3~0_combout\);

-- Location: LCCOMB_X54_Y33_N8
\unit0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr2~0_combout\ = (\Selector22~0_combout\ & (((!\Selector20~0_combout\ & \Selector23~0_combout\)))) # (!\Selector22~0_combout\ & ((\Selector21~0_combout\ & (!\Selector20~0_combout\)) # (!\Selector21~0_combout\ & ((\Selector23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \unit0|WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y33_N26
\unit0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr1~0_combout\ = (\Selector21~0_combout\ & (\Selector23~0_combout\ & (\Selector22~0_combout\ $ (\Selector20~0_combout\)))) # (!\Selector21~0_combout\ & (!\Selector20~0_combout\ & ((\Selector22~0_combout\) # (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \unit0|WideOr1~0_combout\);

-- Location: LCCOMB_X54_Y33_N20
\unit0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr0~0_combout\ = (\Selector23~0_combout\ & ((\Selector20~0_combout\) # (\Selector21~0_combout\ $ (\Selector22~0_combout\)))) # (!\Selector23~0_combout\ & ((\Selector22~0_combout\) # (\Selector21~0_combout\ $ (\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \unit0|WideOr0~0_combout\);

-- Location: LCCOMB_X38_Y33_N26
\UART_unit|SRAM_address[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[6]~30_combout\ = (\UART_unit|SRAM_address\(6) & (\UART_unit|SRAM_address[5]~29\ $ (GND))) # (!\UART_unit|SRAM_address\(6) & (!\UART_unit|SRAM_address[5]~29\ & VCC))
-- \UART_unit|SRAM_address[6]~31\ = CARRY((\UART_unit|SRAM_address\(6) & !\UART_unit|SRAM_address[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(6),
	datad => VCC,
	cin => \UART_unit|SRAM_address[5]~29\,
	combout => \UART_unit|SRAM_address[6]~30_combout\,
	cout => \UART_unit|SRAM_address[6]~31\);

-- Location: LCFF_X38_Y33_N27
\UART_unit|SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[6]~30_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(6));

-- Location: LCCOMB_X38_Y33_N28
\UART_unit|SRAM_address[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[7]~32_combout\ = (\UART_unit|SRAM_address\(7) & (!\UART_unit|SRAM_address[6]~31\)) # (!\UART_unit|SRAM_address\(7) & ((\UART_unit|SRAM_address[6]~31\) # (GND)))
-- \UART_unit|SRAM_address[7]~33\ = CARRY((!\UART_unit|SRAM_address[6]~31\) # (!\UART_unit|SRAM_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(7),
	datad => VCC,
	cin => \UART_unit|SRAM_address[6]~31\,
	combout => \UART_unit|SRAM_address[7]~32_combout\,
	cout => \UART_unit|SRAM_address[7]~33\);

-- Location: LCFF_X38_Y33_N29
\UART_unit|SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[7]~32_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(7));

-- Location: LCCOMB_X38_Y33_N30
\UART_unit|SRAM_address[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[8]~34_combout\ = (\UART_unit|SRAM_address\(8) & (\UART_unit|SRAM_address[7]~33\ $ (GND))) # (!\UART_unit|SRAM_address\(8) & (!\UART_unit|SRAM_address[7]~33\ & VCC))
-- \UART_unit|SRAM_address[8]~35\ = CARRY((\UART_unit|SRAM_address\(8) & !\UART_unit|SRAM_address[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(8),
	datad => VCC,
	cin => \UART_unit|SRAM_address[7]~33\,
	combout => \UART_unit|SRAM_address[8]~34_combout\,
	cout => \UART_unit|SRAM_address[8]~35\);

-- Location: LCFF_X38_Y33_N31
\UART_unit|SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[8]~34_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(8));

-- Location: LCCOMB_X38_Y32_N0
\UART_unit|SRAM_address[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[9]~36_combout\ = (\UART_unit|SRAM_address\(9) & (!\UART_unit|SRAM_address[8]~35\)) # (!\UART_unit|SRAM_address\(9) & ((\UART_unit|SRAM_address[8]~35\) # (GND)))
-- \UART_unit|SRAM_address[9]~37\ = CARRY((!\UART_unit|SRAM_address[8]~35\) # (!\UART_unit|SRAM_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(9),
	datad => VCC,
	cin => \UART_unit|SRAM_address[8]~35\,
	combout => \UART_unit|SRAM_address[9]~36_combout\,
	cout => \UART_unit|SRAM_address[9]~37\);

-- Location: LCFF_X38_Y32_N1
\UART_unit|SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[9]~36_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(9));

-- Location: LCCOMB_X38_Y32_N2
\UART_unit|SRAM_address[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[10]~38_combout\ = (\UART_unit|SRAM_address\(10) & (\UART_unit|SRAM_address[9]~37\ $ (GND))) # (!\UART_unit|SRAM_address\(10) & (!\UART_unit|SRAM_address[9]~37\ & VCC))
-- \UART_unit|SRAM_address[10]~39\ = CARRY((\UART_unit|SRAM_address\(10) & !\UART_unit|SRAM_address[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(10),
	datad => VCC,
	cin => \UART_unit|SRAM_address[9]~37\,
	combout => \UART_unit|SRAM_address[10]~38_combout\,
	cout => \UART_unit|SRAM_address[10]~39\);

-- Location: LCFF_X38_Y32_N3
\UART_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[10]~38_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(10));

-- Location: LCCOMB_X38_Y32_N4
\UART_unit|SRAM_address[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[11]~40_combout\ = (\UART_unit|SRAM_address\(11) & (!\UART_unit|SRAM_address[10]~39\)) # (!\UART_unit|SRAM_address\(11) & ((\UART_unit|SRAM_address[10]~39\) # (GND)))
-- \UART_unit|SRAM_address[11]~41\ = CARRY((!\UART_unit|SRAM_address[10]~39\) # (!\UART_unit|SRAM_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(11),
	datad => VCC,
	cin => \UART_unit|SRAM_address[10]~39\,
	combout => \UART_unit|SRAM_address[11]~40_combout\,
	cout => \UART_unit|SRAM_address[11]~41\);

-- Location: LCFF_X38_Y32_N5
\UART_unit|SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[11]~40_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(11));

-- Location: LCCOMB_X57_Y33_N16
\M2_unit|FS_unit|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~2_combout\ = (\M2_unit|FS_unit|SC\(4) & ((\M2_unit|FS_unit|RB\(0) & (\M2_unit|FS_unit|Add2~1\ & VCC)) # (!\M2_unit|FS_unit|RB\(0) & (!\M2_unit|FS_unit|Add2~1\)))) # (!\M2_unit|FS_unit|SC\(4) & ((\M2_unit|FS_unit|RB\(0) & 
-- (!\M2_unit|FS_unit|Add2~1\)) # (!\M2_unit|FS_unit|RB\(0) & ((\M2_unit|FS_unit|Add2~1\) # (GND)))))
-- \M2_unit|FS_unit|Add2~3\ = CARRY((\M2_unit|FS_unit|SC\(4) & (!\M2_unit|FS_unit|RB\(0) & !\M2_unit|FS_unit|Add2~1\)) # (!\M2_unit|FS_unit|SC\(4) & ((!\M2_unit|FS_unit|Add2~1\) # (!\M2_unit|FS_unit|RB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(4),
	datab => \M2_unit|FS_unit|RB\(0),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add2~1\,
	combout => \M2_unit|FS_unit|Add2~2_combout\,
	cout => \M2_unit|FS_unit|Add2~3\);

-- Location: LCCOMB_X57_Y33_N18
\M2_unit|FS_unit|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~4_combout\ = ((\M2_unit|FS_unit|SC\(5) $ (\M2_unit|FS_unit|RB\(1) $ (!\M2_unit|FS_unit|Add2~3\)))) # (GND)
-- \M2_unit|FS_unit|Add2~5\ = CARRY((\M2_unit|FS_unit|SC\(5) & ((\M2_unit|FS_unit|RB\(1)) # (!\M2_unit|FS_unit|Add2~3\))) # (!\M2_unit|FS_unit|SC\(5) & (\M2_unit|FS_unit|RB\(1) & !\M2_unit|FS_unit|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|SC\(5),
	datab => \M2_unit|FS_unit|RB\(1),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add2~3\,
	combout => \M2_unit|FS_unit|Add2~4_combout\,
	cout => \M2_unit|FS_unit|Add2~5\);

-- Location: LCCOMB_X57_Y33_N20
\M2_unit|FS_unit|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~6_combout\ = (\M2_unit|FS_unit|RB\(2) & ((\M2_unit|FS_unit|RB\(0) & (\M2_unit|FS_unit|Add2~5\ & VCC)) # (!\M2_unit|FS_unit|RB\(0) & (!\M2_unit|FS_unit|Add2~5\)))) # (!\M2_unit|FS_unit|RB\(2) & ((\M2_unit|FS_unit|RB\(0) & 
-- (!\M2_unit|FS_unit|Add2~5\)) # (!\M2_unit|FS_unit|RB\(0) & ((\M2_unit|FS_unit|Add2~5\) # (GND)))))
-- \M2_unit|FS_unit|Add2~7\ = CARRY((\M2_unit|FS_unit|RB\(2) & (!\M2_unit|FS_unit|RB\(0) & !\M2_unit|FS_unit|Add2~5\)) # (!\M2_unit|FS_unit|RB\(2) & ((!\M2_unit|FS_unit|Add2~5\) # (!\M2_unit|FS_unit|RB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(2),
	datab => \M2_unit|FS_unit|RB\(0),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add2~5\,
	combout => \M2_unit|FS_unit|Add2~6_combout\,
	cout => \M2_unit|FS_unit|Add2~7\);

-- Location: LCCOMB_X56_Y33_N4
\M2_unit|FS_unit|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~4_combout\ = ((\M2_unit|FS_unit|CB\(5) $ (\M2_unit|FS_unit|Add2~0_combout\ $ (!\M2_unit|FS_unit|Add0~3\)))) # (GND)
-- \M2_unit|FS_unit|Add0~5\ = CARRY((\M2_unit|FS_unit|CB\(5) & ((\M2_unit|FS_unit|Add2~0_combout\) # (!\M2_unit|FS_unit|Add0~3\))) # (!\M2_unit|FS_unit|CB\(5) & (\M2_unit|FS_unit|Add2~0_combout\ & !\M2_unit|FS_unit|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|CB\(5),
	datab => \M2_unit|FS_unit|Add2~0_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~3\,
	combout => \M2_unit|FS_unit|Add0~4_combout\,
	cout => \M2_unit|FS_unit|Add0~5\);

-- Location: LCCOMB_X56_Y33_N10
\M2_unit|FS_unit|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add0~10_combout\ = (\M2_unit|FS_unit|Add2~6_combout\ & (!\M2_unit|FS_unit|Add0~9\)) # (!\M2_unit|FS_unit|Add2~6_combout\ & ((\M2_unit|FS_unit|Add0~9\) # (GND)))
-- \M2_unit|FS_unit|Add0~11\ = CARRY((!\M2_unit|FS_unit|Add0~9\) # (!\M2_unit|FS_unit|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add2~6_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add0~9\,
	combout => \M2_unit|FS_unit|Add0~10_combout\,
	cout => \M2_unit|FS_unit|Add0~11\);

-- Location: LCCOMB_X50_Y33_N8
\M2_unit|FS_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~0_combout\ = (\M2_unit|FS_unit|Add0~6_combout\ & (\M2_unit|FS_unit|Base_address\(15) $ (VCC))) # (!\M2_unit|FS_unit|Add0~6_combout\ & (\M2_unit|FS_unit|Base_address\(15) & VCC))
-- \M2_unit|FS_unit|Add1~1\ = CARRY((\M2_unit|FS_unit|Add0~6_combout\ & \M2_unit|FS_unit|Base_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add0~6_combout\,
	datab => \M2_unit|FS_unit|Base_address\(15),
	datad => VCC,
	combout => \M2_unit|FS_unit|Add1~0_combout\,
	cout => \M2_unit|FS_unit|Add1~1\);

-- Location: LCCOMB_X50_Y33_N10
\M2_unit|FS_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~2_combout\ = (\M2_unit|FS_unit|Add0~8_combout\ & ((\M2_unit|FS_unit|Base_address\(10) & (!\M2_unit|FS_unit|Add1~1\)) # (!\M2_unit|FS_unit|Base_address\(10) & (\M2_unit|FS_unit|Add1~1\ & VCC)))) # (!\M2_unit|FS_unit|Add0~8_combout\ & 
-- ((\M2_unit|FS_unit|Base_address\(10) & ((\M2_unit|FS_unit|Add1~1\) # (GND))) # (!\M2_unit|FS_unit|Base_address\(10) & (!\M2_unit|FS_unit|Add1~1\))))
-- \M2_unit|FS_unit|Add1~3\ = CARRY((\M2_unit|FS_unit|Add0~8_combout\ & (\M2_unit|FS_unit|Base_address\(10) & !\M2_unit|FS_unit|Add1~1\)) # (!\M2_unit|FS_unit|Add0~8_combout\ & ((\M2_unit|FS_unit|Base_address\(10)) # (!\M2_unit|FS_unit|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add0~8_combout\,
	datab => \M2_unit|FS_unit|Base_address\(10),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add1~1\,
	combout => \M2_unit|FS_unit|Add1~2_combout\,
	cout => \M2_unit|FS_unit|Add1~3\);

-- Location: LCCOMB_X50_Y33_N12
\M2_unit|FS_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~4_combout\ = (\M2_unit|FS_unit|Add0~10_combout\ & ((GND) # (!\M2_unit|FS_unit|Add1~3\))) # (!\M2_unit|FS_unit|Add0~10_combout\ & (\M2_unit|FS_unit|Add1~3\ $ (GND)))
-- \M2_unit|FS_unit|Add1~5\ = CARRY((\M2_unit|FS_unit|Add0~10_combout\) # (!\M2_unit|FS_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|Add0~10_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add1~3\,
	combout => \M2_unit|FS_unit|Add1~4_combout\,
	cout => \M2_unit|FS_unit|Add1~5\);

-- Location: LCCOMB_X49_Y33_N4
\M2_unit|FS_unit|Add4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~7_combout\ = ((\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|Add4~5_combout\)) # (!\M2_unit|FS_unit|Equal0~1_combout\ & ((\M2_unit|FS_unit|Add1~4_combout\)))) # (!\M2_unit|FS_unit|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add4~5_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|Add1~4_combout\,
	datad => \M2_unit|FS_unit|Equal0~1_combout\,
	combout => \M2_unit|FS_unit|Add4~7_combout\);

-- Location: LCFF_X49_Y33_N5
\M2_unit|FS_unit|SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add4~7_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(11));

-- Location: LCCOMB_X37_Y33_N28
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(11)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \state.S_TOP_IDLE~regout\,
	datac => \UART_unit|SRAM_address\(11),
	datad => \M2_unit|FS_unit|SRAM_address\(11),
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X49_Y33_N14
\M2_unit|FS_unit|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~2_combout\ = (\M2_unit|FS_unit|Add3~10_combout\ & ((\M2_unit|FS_unit|Base_address\(10) & (!\M2_unit|FS_unit|Add4~1\)) # (!\M2_unit|FS_unit|Base_address\(10) & (\M2_unit|FS_unit|Add4~1\ & VCC)))) # (!\M2_unit|FS_unit|Add3~10_combout\ 
-- & ((\M2_unit|FS_unit|Base_address\(10) & ((\M2_unit|FS_unit|Add4~1\) # (GND))) # (!\M2_unit|FS_unit|Base_address\(10) & (!\M2_unit|FS_unit|Add4~1\))))
-- \M2_unit|FS_unit|Add4~3\ = CARRY((\M2_unit|FS_unit|Add3~10_combout\ & (\M2_unit|FS_unit|Base_address\(10) & !\M2_unit|FS_unit|Add4~1\)) # (!\M2_unit|FS_unit|Add3~10_combout\ & ((\M2_unit|FS_unit|Base_address\(10)) # (!\M2_unit|FS_unit|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add3~10_combout\,
	datab => \M2_unit|FS_unit|Base_address\(10),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add4~1\,
	combout => \M2_unit|FS_unit|Add4~2_combout\,
	cout => \M2_unit|FS_unit|Add4~3\);

-- Location: LCCOMB_X49_Y33_N10
\M2_unit|FS_unit|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~4_combout\ = ((\M2_unit|FS_unit|Equal0~1_combout\ & ((\M2_unit|FS_unit|Add4~2_combout\))) # (!\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|Add1~2_combout\))) # (!\M2_unit|FS_unit|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal0~1_combout\,
	datab => \M2_unit|FS_unit|Add1~2_combout\,
	datac => \M2_unit|FS_unit|WideOr2~0_combout\,
	datad => \M2_unit|FS_unit|Add4~2_combout\,
	combout => \M2_unit|FS_unit|Add4~4_combout\);

-- Location: LCFF_X49_Y33_N11
\M2_unit|FS_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add4~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(10));

-- Location: LCCOMB_X37_Y33_N26
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(10)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \UART_unit|SRAM_address\(10),
	datac => \M2_unit|FS_unit|SRAM_address\(10),
	datad => \state.S_TOP_IDLE~regout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X49_Y33_N2
\M2_unit|FS_unit|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector15~0_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (((\M2_unit|FS_unit|Add1~0_combout\ & \M2_unit|FS_unit|Selector17~0_combout\)))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(9)) # 
-- ((\M2_unit|FS_unit|Add1~0_combout\ & \M2_unit|FS_unit|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|SRAM_address\(9),
	datac => \M2_unit|FS_unit|Add1~0_combout\,
	datad => \M2_unit|FS_unit|Selector17~0_combout\,
	combout => \M2_unit|FS_unit|Selector15~0_combout\);

-- Location: LCCOMB_X49_Y33_N0
\M2_unit|FS_unit|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector15~1_combout\ = (\M2_unit|FS_unit|Selector15~0_combout\) # ((\M2_unit|FS_unit|Add4~0_combout\ & (\M2_unit|FS_unit|WideOr2~0_combout\ & \M2_unit|FS_unit|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add4~0_combout\,
	datab => \M2_unit|FS_unit|Selector15~0_combout\,
	datac => \M2_unit|FS_unit|WideOr2~0_combout\,
	datad => \M2_unit|FS_unit|Equal0~1_combout\,
	combout => \M2_unit|FS_unit|Selector15~1_combout\);

-- Location: LCFF_X49_Y33_N1
\M2_unit|FS_unit|SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector15~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(9));

-- Location: LCCOMB_X37_Y33_N24
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(9)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \state.S_TOP_IDLE~regout\,
	datac => \UART_unit|SRAM_address\(9),
	datad => \M2_unit|FS_unit|SRAM_address\(9),
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X53_Y33_N30
\M2_unit|FS_unit|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector16~0_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (\M2_unit|FS_unit|Selector17~0_combout\ & (\M2_unit|FS_unit|Add0~4_combout\))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(8)) # 
-- ((\M2_unit|FS_unit|Selector17~0_combout\ & \M2_unit|FS_unit|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|Selector17~0_combout\,
	datac => \M2_unit|FS_unit|Add0~4_combout\,
	datad => \M2_unit|FS_unit|SRAM_address\(8),
	combout => \M2_unit|FS_unit|Selector16~0_combout\);

-- Location: LCCOMB_X53_Y33_N26
\M2_unit|FS_unit|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector16~1_combout\ = (\M2_unit|FS_unit|Selector16~0_combout\) # ((\M2_unit|FS_unit|Add3~6_combout\ & (\M2_unit|FS_unit|WideOr2~0_combout\ & \M2_unit|FS_unit|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add3~6_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|Equal0~1_combout\,
	datad => \M2_unit|FS_unit|Selector16~0_combout\,
	combout => \M2_unit|FS_unit|Selector16~1_combout\);

-- Location: LCFF_X53_Y33_N27
\M2_unit|FS_unit|SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector16~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(8));

-- Location: LCCOMB_X37_Y33_N30
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|SRAM_address\(8))) # (!\state.S_TOP_M2~regout\ & ((\UART_unit|SRAM_address\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \M2_unit|FS_unit|SRAM_address\(8),
	datac => \UART_unit|SRAM_address\(8),
	datad => \state.S_TOP_IDLE~regout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X37_Y33_N6
\unit1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr6~0_combout\ = (\Selector16~0_combout\ & (\Selector19~0_combout\ & (\Selector17~0_combout\ $ (\Selector18~0_combout\)))) # (!\Selector16~0_combout\ & (!\Selector18~0_combout\ & (\Selector17~0_combout\ $ (\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \unit1|WideOr6~0_combout\);

-- Location: LCCOMB_X37_Y33_N8
\unit1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr5~0_combout\ = (\Selector16~0_combout\ & ((\Selector19~0_combout\ & ((\Selector18~0_combout\))) # (!\Selector19~0_combout\ & (\Selector17~0_combout\)))) # (!\Selector16~0_combout\ & (\Selector17~0_combout\ & (\Selector18~0_combout\ $ 
-- (\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \unit1|WideOr5~0_combout\);

-- Location: LCCOMB_X37_Y33_N2
\unit1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr4~0_combout\ = (\Selector16~0_combout\ & (\Selector17~0_combout\ & ((\Selector18~0_combout\) # (!\Selector19~0_combout\)))) # (!\Selector16~0_combout\ & (!\Selector17~0_combout\ & (\Selector18~0_combout\ & !\Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \unit1|WideOr4~0_combout\);

-- Location: LCCOMB_X37_Y33_N12
\unit1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr3~0_combout\ = (\Selector19~0_combout\ & ((\Selector17~0_combout\ $ (!\Selector18~0_combout\)))) # (!\Selector19~0_combout\ & ((\Selector16~0_combout\ & (!\Selector17~0_combout\ & \Selector18~0_combout\)) # (!\Selector16~0_combout\ & 
-- (\Selector17~0_combout\ & !\Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \unit1|WideOr3~0_combout\);

-- Location: LCCOMB_X37_Y33_N22
\unit1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr2~0_combout\ = (\Selector18~0_combout\ & (!\Selector16~0_combout\ & ((\Selector19~0_combout\)))) # (!\Selector18~0_combout\ & ((\Selector17~0_combout\ & (!\Selector16~0_combout\)) # (!\Selector17~0_combout\ & ((\Selector19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \unit1|WideOr2~0_combout\);

-- Location: LCCOMB_X37_Y33_N0
\unit1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr1~0_combout\ = (\Selector17~0_combout\ & (\Selector19~0_combout\ & (\Selector16~0_combout\ $ (\Selector18~0_combout\)))) # (!\Selector17~0_combout\ & (!\Selector16~0_combout\ & ((\Selector18~0_combout\) # (\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \unit1|WideOr1~0_combout\);

-- Location: LCCOMB_X37_Y33_N18
\unit1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr0~0_combout\ = (\Selector19~0_combout\ & ((\Selector16~0_combout\) # (\Selector17~0_combout\ $ (\Selector18~0_combout\)))) # (!\Selector19~0_combout\ & ((\Selector18~0_combout\) # (\Selector16~0_combout\ $ (\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \unit1|WideOr0~0_combout\);

-- Location: LCCOMB_X48_Y33_N28
\M2_unit|FS_unit|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector10~0_combout\ = (\M2_unit|FS_unit|Add1~10_combout\ & ((\M2_unit|FS_unit|Selector17~0_combout\) # ((\M2_unit|FS_unit|SRAM_address\(14) & !\M2_unit|FS_unit|WideOr1~0_combout\)))) # (!\M2_unit|FS_unit|Add1~10_combout\ & 
-- (\M2_unit|FS_unit|SRAM_address\(14) & (!\M2_unit|FS_unit|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add1~10_combout\,
	datab => \M2_unit|FS_unit|SRAM_address\(14),
	datac => \M2_unit|FS_unit|WideOr1~0_combout\,
	datad => \M2_unit|FS_unit|Selector17~0_combout\,
	combout => \M2_unit|FS_unit|Selector10~0_combout\);

-- Location: LCCOMB_X57_Y33_N22
\M2_unit|FS_unit|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~8_combout\ = ((\M2_unit|FS_unit|RB\(3) $ (\M2_unit|FS_unit|RB\(1) $ (!\M2_unit|FS_unit|Add2~7\)))) # (GND)
-- \M2_unit|FS_unit|Add2~9\ = CARRY((\M2_unit|FS_unit|RB\(3) & ((\M2_unit|FS_unit|RB\(1)) # (!\M2_unit|FS_unit|Add2~7\))) # (!\M2_unit|FS_unit|RB\(3) & (\M2_unit|FS_unit|RB\(1) & !\M2_unit|FS_unit|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(3),
	datab => \M2_unit|FS_unit|RB\(1),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add2~7\,
	combout => \M2_unit|FS_unit|Add2~8_combout\,
	cout => \M2_unit|FS_unit|Add2~9\);

-- Location: LCCOMB_X57_Y33_N24
\M2_unit|FS_unit|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~10_combout\ = (\M2_unit|FS_unit|RB\(4) & ((\M2_unit|FS_unit|RB\(2) & (\M2_unit|FS_unit|Add2~9\ & VCC)) # (!\M2_unit|FS_unit|RB\(2) & (!\M2_unit|FS_unit|Add2~9\)))) # (!\M2_unit|FS_unit|RB\(4) & ((\M2_unit|FS_unit|RB\(2) & 
-- (!\M2_unit|FS_unit|Add2~9\)) # (!\M2_unit|FS_unit|RB\(2) & ((\M2_unit|FS_unit|Add2~9\) # (GND)))))
-- \M2_unit|FS_unit|Add2~11\ = CARRY((\M2_unit|FS_unit|RB\(4) & (!\M2_unit|FS_unit|RB\(2) & !\M2_unit|FS_unit|Add2~9\)) # (!\M2_unit|FS_unit|RB\(4) & ((!\M2_unit|FS_unit|Add2~9\) # (!\M2_unit|FS_unit|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(4),
	datab => \M2_unit|FS_unit|RB\(2),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add2~9\,
	combout => \M2_unit|FS_unit|Add2~10_combout\,
	cout => \M2_unit|FS_unit|Add2~11\);

-- Location: LCCOMB_X57_Y33_N26
\M2_unit|FS_unit|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add2~12_combout\ = (\M2_unit|FS_unit|RB\(3) & (\M2_unit|FS_unit|Add2~11\ $ (GND))) # (!\M2_unit|FS_unit|RB\(3) & (!\M2_unit|FS_unit|Add2~11\ & VCC))
-- \M2_unit|FS_unit|Add2~13\ = CARRY((\M2_unit|FS_unit|RB\(3) & !\M2_unit|FS_unit|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|RB\(3),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add2~11\,
	combout => \M2_unit|FS_unit|Add2~12_combout\,
	cout => \M2_unit|FS_unit|Add2~13\);

-- Location: LCCOMB_X53_Y33_N16
\M2_unit|FS_unit|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~12_combout\ = (\M2_unit|FS_unit|Add2~8_combout\ & (\M2_unit|FS_unit|Add3~11\ $ (GND))) # (!\M2_unit|FS_unit|Add2~8_combout\ & (!\M2_unit|FS_unit|Add3~11\ & VCC))
-- \M2_unit|FS_unit|Add3~13\ = CARRY((\M2_unit|FS_unit|Add2~8_combout\ & !\M2_unit|FS_unit|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add2~8_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~11\,
	combout => \M2_unit|FS_unit|Add3~12_combout\,
	cout => \M2_unit|FS_unit|Add3~13\);

-- Location: LCCOMB_X53_Y33_N18
\M2_unit|FS_unit|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add3~14_combout\ = (\M2_unit|FS_unit|Add2~10_combout\ & (!\M2_unit|FS_unit|Add3~13\)) # (!\M2_unit|FS_unit|Add2~10_combout\ & ((\M2_unit|FS_unit|Add3~13\) # (GND)))
-- \M2_unit|FS_unit|Add3~15\ = CARRY((!\M2_unit|FS_unit|Add3~13\) # (!\M2_unit|FS_unit|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add2~10_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add3~13\,
	combout => \M2_unit|FS_unit|Add3~14_combout\,
	cout => \M2_unit|FS_unit|Add3~15\);

-- Location: LCCOMB_X49_Y33_N18
\M2_unit|FS_unit|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~8_combout\ = (\M2_unit|FS_unit|Base_address\(12) & ((\M2_unit|FS_unit|Add3~14_combout\ & (\M2_unit|FS_unit|Add4~6\ & VCC)) # (!\M2_unit|FS_unit|Add3~14_combout\ & (!\M2_unit|FS_unit|Add4~6\)))) # (!\M2_unit|FS_unit|Base_address\(12) 
-- & ((\M2_unit|FS_unit|Add3~14_combout\ & (!\M2_unit|FS_unit|Add4~6\)) # (!\M2_unit|FS_unit|Add3~14_combout\ & ((\M2_unit|FS_unit|Add4~6\) # (GND)))))
-- \M2_unit|FS_unit|Add4~9\ = CARRY((\M2_unit|FS_unit|Base_address\(12) & (!\M2_unit|FS_unit|Add3~14_combout\ & !\M2_unit|FS_unit|Add4~6\)) # (!\M2_unit|FS_unit|Base_address\(12) & ((!\M2_unit|FS_unit|Add4~6\) # (!\M2_unit|FS_unit|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address\(12),
	datab => \M2_unit|FS_unit|Add3~14_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add4~6\,
	combout => \M2_unit|FS_unit|Add4~8_combout\,
	cout => \M2_unit|FS_unit|Add4~9\);

-- Location: LCCOMB_X49_Y33_N20
\M2_unit|FS_unit|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~10_combout\ = ((\M2_unit|FS_unit|Add3~16_combout\ $ (\M2_unit|FS_unit|Base_address\(10) $ (\M2_unit|FS_unit|Add4~9\)))) # (GND)
-- \M2_unit|FS_unit|Add4~11\ = CARRY((\M2_unit|FS_unit|Add3~16_combout\ & ((!\M2_unit|FS_unit|Add4~9\) # (!\M2_unit|FS_unit|Base_address\(10)))) # (!\M2_unit|FS_unit|Add3~16_combout\ & (!\M2_unit|FS_unit|Base_address\(10) & !\M2_unit|FS_unit|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add3~16_combout\,
	datab => \M2_unit|FS_unit|Base_address\(10),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add4~9\,
	combout => \M2_unit|FS_unit|Add4~10_combout\,
	cout => \M2_unit|FS_unit|Add4~11\);

-- Location: LCCOMB_X49_Y33_N22
\M2_unit|FS_unit|Add4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~13_combout\ = (\M2_unit|FS_unit|Base_address\(14) & ((\M2_unit|FS_unit|Add3~18_combout\ & (\M2_unit|FS_unit|Add4~11\ & VCC)) # (!\M2_unit|FS_unit|Add3~18_combout\ & (!\M2_unit|FS_unit|Add4~11\)))) # 
-- (!\M2_unit|FS_unit|Base_address\(14) & ((\M2_unit|FS_unit|Add3~18_combout\ & (!\M2_unit|FS_unit|Add4~11\)) # (!\M2_unit|FS_unit|Add3~18_combout\ & ((\M2_unit|FS_unit|Add4~11\) # (GND)))))
-- \M2_unit|FS_unit|Add4~14\ = CARRY((\M2_unit|FS_unit|Base_address\(14) & (!\M2_unit|FS_unit|Add3~18_combout\ & !\M2_unit|FS_unit|Add4~11\)) # (!\M2_unit|FS_unit|Base_address\(14) & ((!\M2_unit|FS_unit|Add4~11\) # (!\M2_unit|FS_unit|Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address\(14),
	datab => \M2_unit|FS_unit|Add3~18_combout\,
	datad => VCC,
	cin => \M2_unit|FS_unit|Add4~11\,
	combout => \M2_unit|FS_unit|Add4~13_combout\,
	cout => \M2_unit|FS_unit|Add4~14\);

-- Location: LCCOMB_X48_Y33_N30
\M2_unit|FS_unit|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector10~1_combout\ = (\M2_unit|FS_unit|Selector10~0_combout\) # ((\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|Add4~13_combout\ & \M2_unit|FS_unit|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal0~1_combout\,
	datab => \M2_unit|FS_unit|Selector10~0_combout\,
	datac => \M2_unit|FS_unit|Add4~13_combout\,
	datad => \M2_unit|FS_unit|WideOr2~0_combout\,
	combout => \M2_unit|FS_unit|Selector10~1_combout\);

-- Location: LCFF_X48_Y33_N31
\M2_unit|FS_unit|SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector10~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(14));

-- Location: LCCOMB_X48_Y33_N24
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(14)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(14),
	datab => \state.S_TOP_IDLE~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(14),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X49_Y33_N24
\M2_unit|FS_unit|Add4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~15_combout\ = ((\M2_unit|FS_unit|Add3~20_combout\ $ (\M2_unit|FS_unit|Base_address\(15) $ (!\M2_unit|FS_unit|Add4~14\)))) # (GND)
-- \M2_unit|FS_unit|Add4~16\ = CARRY((\M2_unit|FS_unit|Add3~20_combout\ & ((\M2_unit|FS_unit|Base_address\(15)) # (!\M2_unit|FS_unit|Add4~14\))) # (!\M2_unit|FS_unit|Add3~20_combout\ & (\M2_unit|FS_unit|Base_address\(15) & !\M2_unit|FS_unit|Add4~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add3~20_combout\,
	datab => \M2_unit|FS_unit|Base_address\(15),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add4~14\,
	combout => \M2_unit|FS_unit|Add4~15_combout\,
	cout => \M2_unit|FS_unit|Add4~16\);

-- Location: LCCOMB_X49_Y33_N30
\M2_unit|FS_unit|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector9~1_combout\ = (\M2_unit|FS_unit|Selector9~0_combout\) # ((\M2_unit|FS_unit|WideOr2~0_combout\ & (\M2_unit|FS_unit|Add4~15_combout\ & \M2_unit|FS_unit|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Selector9~0_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|Add4~15_combout\,
	datad => \M2_unit|FS_unit|Equal0~1_combout\,
	combout => \M2_unit|FS_unit|Selector9~1_combout\);

-- Location: LCFF_X49_Y33_N31
\M2_unit|FS_unit|SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector9~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(15));

-- Location: LCCOMB_X48_Y33_N18
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(15)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(15),
	datab => \state.S_TOP_IDLE~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(15),
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X47_Y33_N24
\M2_unit|FS_unit|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~12_combout\ = ((\M2_unit|FS_unit|Equal0~1_combout\ & ((\M2_unit|FS_unit|Add4~10_combout\))) # (!\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|Add1~8_combout\))) # (!\M2_unit|FS_unit|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add1~8_combout\,
	datab => \M2_unit|FS_unit|Add4~10_combout\,
	datac => \M2_unit|FS_unit|WideOr2~0_combout\,
	datad => \M2_unit|FS_unit|Equal0~1_combout\,
	combout => \M2_unit|FS_unit|Add4~12_combout\);

-- Location: LCFF_X47_Y33_N25
\M2_unit|FS_unit|SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add4~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(13));

-- Location: LCCOMB_X48_Y33_N20
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(13)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(13),
	datab => \state.S_TOP_IDLE~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(13),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X48_Y33_N10
\M2_unit|FS_unit|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector12~0_combout\ = (\M2_unit|FS_unit|Add1~6_combout\ & ((\M2_unit|FS_unit|Selector17~0_combout\) # ((\M2_unit|FS_unit|SRAM_address\(12) & !\M2_unit|FS_unit|WideOr1~0_combout\)))) # (!\M2_unit|FS_unit|Add1~6_combout\ & 
-- (\M2_unit|FS_unit|SRAM_address\(12) & (!\M2_unit|FS_unit|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add1~6_combout\,
	datab => \M2_unit|FS_unit|SRAM_address\(12),
	datac => \M2_unit|FS_unit|WideOr1~0_combout\,
	datad => \M2_unit|FS_unit|Selector17~0_combout\,
	combout => \M2_unit|FS_unit|Selector12~0_combout\);

-- Location: LCCOMB_X48_Y33_N16
\M2_unit|FS_unit|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector12~1_combout\ = (\M2_unit|FS_unit|Selector12~0_combout\) # ((\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|Add4~8_combout\ & \M2_unit|FS_unit|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal0~1_combout\,
	datab => \M2_unit|FS_unit|Add4~8_combout\,
	datac => \M2_unit|FS_unit|Selector12~0_combout\,
	datad => \M2_unit|FS_unit|WideOr2~0_combout\,
	combout => \M2_unit|FS_unit|Selector12~1_combout\);

-- Location: LCFF_X48_Y33_N17
\M2_unit|FS_unit|SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector12~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(12));

-- Location: LCCOMB_X48_Y33_N26
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(12)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(12),
	datab => \state.S_TOP_IDLE~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(12),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X48_Y33_N4
\unit2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr6~0_combout\ = (\Selector13~0_combout\ & (!\Selector14~0_combout\ & (\Selector12~0_combout\ $ (!\Selector15~0_combout\)))) # (!\Selector13~0_combout\ & (\Selector15~0_combout\ & (\Selector12~0_combout\ $ (!\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \unit2|WideOr6~0_combout\);

-- Location: LCCOMB_X48_Y33_N6
\unit2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr5~0_combout\ = (\Selector12~0_combout\ & ((\Selector15~0_combout\ & ((\Selector14~0_combout\))) # (!\Selector15~0_combout\ & (\Selector13~0_combout\)))) # (!\Selector12~0_combout\ & (\Selector13~0_combout\ & (\Selector14~0_combout\ $ 
-- (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \unit2|WideOr5~0_combout\);

-- Location: LCCOMB_X48_Y33_N8
\unit2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr4~0_combout\ = (\Selector13~0_combout\ & (\Selector12~0_combout\ & ((\Selector14~0_combout\) # (!\Selector15~0_combout\)))) # (!\Selector13~0_combout\ & (!\Selector12~0_combout\ & (\Selector14~0_combout\ & !\Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \unit2|WideOr4~0_combout\);

-- Location: LCCOMB_X48_Y33_N2
\unit2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr3~0_combout\ = (\Selector15~0_combout\ & (\Selector13~0_combout\ $ (((!\Selector14~0_combout\))))) # (!\Selector15~0_combout\ & ((\Selector13~0_combout\ & (!\Selector12~0_combout\ & !\Selector14~0_combout\)) # (!\Selector13~0_combout\ & 
-- (\Selector12~0_combout\ & \Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \unit2|WideOr3~0_combout\);

-- Location: LCCOMB_X48_Y33_N12
\unit2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr2~0_combout\ = (\Selector14~0_combout\ & (((!\Selector12~0_combout\ & \Selector15~0_combout\)))) # (!\Selector14~0_combout\ & ((\Selector13~0_combout\ & (!\Selector12~0_combout\)) # (!\Selector13~0_combout\ & ((\Selector15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \unit2|WideOr2~0_combout\);

-- Location: LCCOMB_X48_Y33_N22
\unit2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr1~0_combout\ = (\Selector13~0_combout\ & (\Selector15~0_combout\ & (\Selector12~0_combout\ $ (\Selector14~0_combout\)))) # (!\Selector13~0_combout\ & (!\Selector12~0_combout\ & ((\Selector14~0_combout\) # (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \unit2|WideOr1~0_combout\);

-- Location: LCCOMB_X48_Y33_N0
\unit2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr0~0_combout\ = (\Selector15~0_combout\ & ((\Selector12~0_combout\) # (\Selector13~0_combout\ $ (\Selector14~0_combout\)))) # (!\Selector15~0_combout\ & ((\Selector14~0_combout\) # (\Selector13~0_combout\ $ (\Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \unit2|WideOr0~0_combout\);

-- Location: LCCOMB_X38_Y32_N8
\UART_unit|SRAM_address[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[13]~44_combout\ = (\UART_unit|SRAM_address\(13) & (!\UART_unit|SRAM_address[12]~43\)) # (!\UART_unit|SRAM_address\(13) & ((\UART_unit|SRAM_address[12]~43\) # (GND)))
-- \UART_unit|SRAM_address[13]~45\ = CARRY((!\UART_unit|SRAM_address[12]~43\) # (!\UART_unit|SRAM_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(13),
	datad => VCC,
	cin => \UART_unit|SRAM_address[12]~43\,
	combout => \UART_unit|SRAM_address[13]~44_combout\,
	cout => \UART_unit|SRAM_address[13]~45\);

-- Location: LCFF_X38_Y32_N9
\UART_unit|SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[13]~44_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(13));

-- Location: LCCOMB_X38_Y32_N14
\UART_unit|SRAM_address[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[16]~50_combout\ = (\UART_unit|SRAM_address\(16) & (\UART_unit|SRAM_address[15]~49\ $ (GND))) # (!\UART_unit|SRAM_address\(16) & (!\UART_unit|SRAM_address[15]~49\ & VCC))
-- \UART_unit|SRAM_address[16]~51\ = CARRY((\UART_unit|SRAM_address\(16) & !\UART_unit|SRAM_address[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(16),
	datad => VCC,
	cin => \UART_unit|SRAM_address[15]~49\,
	combout => \UART_unit|SRAM_address[16]~50_combout\,
	cout => \UART_unit|SRAM_address[16]~51\);

-- Location: LCFF_X38_Y32_N15
\UART_unit|SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[16]~50_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(16));

-- Location: LCCOMB_X38_Y32_N16
\UART_unit|SRAM_address[17]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[17]~52_combout\ = \UART_unit|SRAM_address\(17) $ (\UART_unit|SRAM_address[16]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(17),
	cin => \UART_unit|SRAM_address[16]~51\,
	combout => \UART_unit|SRAM_address[17]~52_combout\);

-- Location: LCFF_X38_Y32_N17
\UART_unit|SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[17]~52_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(17));

-- Location: LCCOMB_X50_Y33_N6
\M2_unit|FS_unit|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector28~0_combout\ = (\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & (((\M2_unit|FS_unit|Base_address\(14)) # (!\M2_unit|FS_unit|Base_address[11]~5_combout\)))) # (!\M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\ & 
-- (\M2_unit|FS_unit|state.S_FS_START~regout\ & (\M2_unit|FS_unit|Base_address\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_COMMON_CASE~regout\,
	datac => \M2_unit|FS_unit|Base_address\(14),
	datad => \M2_unit|FS_unit|Base_address[11]~5_combout\,
	combout => \M2_unit|FS_unit|Selector28~0_combout\);

-- Location: LCFF_X50_Y33_N7
\M2_unit|FS_unit|Base_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector28~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|Base_address\(14));

-- Location: LCCOMB_X50_Y33_N22
\M2_unit|FS_unit|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~14_combout\ = (\M2_unit|FS_unit|Add0~20_combout\ & ((\M2_unit|FS_unit|Base_address\(16) & (!\M2_unit|FS_unit|Add1~13\)) # (!\M2_unit|FS_unit|Base_address\(16) & (\M2_unit|FS_unit|Add1~13\ & VCC)))) # 
-- (!\M2_unit|FS_unit|Add0~20_combout\ & ((\M2_unit|FS_unit|Base_address\(16) & ((\M2_unit|FS_unit|Add1~13\) # (GND))) # (!\M2_unit|FS_unit|Base_address\(16) & (!\M2_unit|FS_unit|Add1~13\))))
-- \M2_unit|FS_unit|Add1~15\ = CARRY((\M2_unit|FS_unit|Add0~20_combout\ & (\M2_unit|FS_unit|Base_address\(16) & !\M2_unit|FS_unit|Add1~13\)) # (!\M2_unit|FS_unit|Add0~20_combout\ & ((\M2_unit|FS_unit|Base_address\(16)) # (!\M2_unit|FS_unit|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Add0~20_combout\,
	datab => \M2_unit|FS_unit|Base_address\(16),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add1~13\,
	combout => \M2_unit|FS_unit|Add1~14_combout\,
	cout => \M2_unit|FS_unit|Add1~15\);

-- Location: LCCOMB_X50_Y33_N24
\M2_unit|FS_unit|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add1~16_combout\ = \M2_unit|FS_unit|Add1~15\ $ (!\M2_unit|FS_unit|Base_address\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|Base_address\(14),
	cin => \M2_unit|FS_unit|Add1~15\,
	combout => \M2_unit|FS_unit|Add1~16_combout\);

-- Location: LCCOMB_X47_Y33_N22
\M2_unit|FS_unit|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector7~0_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (((\M2_unit|FS_unit|Add1~16_combout\ & \M2_unit|FS_unit|Selector17~0_combout\)))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(17)) # 
-- ((\M2_unit|FS_unit|Add1~16_combout\ & \M2_unit|FS_unit|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|SRAM_address\(17),
	datac => \M2_unit|FS_unit|Add1~16_combout\,
	datad => \M2_unit|FS_unit|Selector17~0_combout\,
	combout => \M2_unit|FS_unit|Selector7~0_combout\);

-- Location: LCCOMB_X49_Y33_N26
\M2_unit|FS_unit|Add4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~17_combout\ = (\M2_unit|FS_unit|Base_address\(16) & ((\M2_unit|FS_unit|Add4~16\) # (GND))) # (!\M2_unit|FS_unit|Base_address\(16) & (!\M2_unit|FS_unit|Add4~16\))
-- \M2_unit|FS_unit|Add4~18\ = CARRY((\M2_unit|FS_unit|Base_address\(16)) # (!\M2_unit|FS_unit|Add4~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Base_address\(16),
	datad => VCC,
	cin => \M2_unit|FS_unit|Add4~16\,
	combout => \M2_unit|FS_unit|Add4~17_combout\,
	cout => \M2_unit|FS_unit|Add4~18\);

-- Location: LCCOMB_X49_Y33_N28
\M2_unit|FS_unit|Add4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~19_combout\ = \M2_unit|FS_unit|Add4~18\ $ (!\M2_unit|FS_unit|Base_address\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \M2_unit|FS_unit|Base_address\(14),
	cin => \M2_unit|FS_unit|Add4~18\,
	combout => \M2_unit|FS_unit|Add4~19_combout\);

-- Location: LCCOMB_X47_Y33_N26
\M2_unit|FS_unit|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector7~1_combout\ = (\M2_unit|FS_unit|Selector7~0_combout\) # ((\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|WideOr2~0_combout\ & \M2_unit|FS_unit|Add4~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal0~1_combout\,
	datab => \M2_unit|FS_unit|Selector7~0_combout\,
	datac => \M2_unit|FS_unit|WideOr2~0_combout\,
	datad => \M2_unit|FS_unit|Add4~19_combout\,
	combout => \M2_unit|FS_unit|Selector7~1_combout\);

-- Location: LCFF_X47_Y33_N27
\M2_unit|FS_unit|SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector7~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(17));

-- Location: LCCOMB_X35_Y33_N12
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(17)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \state.S_TOP_IDLE~regout\,
	datac => \UART_unit|SRAM_address\(17),
	datad => \M2_unit|FS_unit|SRAM_address\(17),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X49_Y33_N8
\M2_unit|FS_unit|Add4~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Add4~21_combout\ = ((\M2_unit|FS_unit|Equal0~1_combout\ & ((\M2_unit|FS_unit|Add4~17_combout\))) # (!\M2_unit|FS_unit|Equal0~1_combout\ & (\M2_unit|FS_unit|Add1~14_combout\))) # (!\M2_unit|FS_unit|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|Equal0~1_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|Add1~14_combout\,
	datad => \M2_unit|FS_unit|Add4~17_combout\,
	combout => \M2_unit|FS_unit|Add4~21_combout\);

-- Location: LCFF_X49_Y33_N9
\M2_unit|FS_unit|SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Add4~21_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(16));

-- Location: LCCOMB_X35_Y33_N22
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.S_TOP_IDLE~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(16)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \state.S_TOP_IDLE~regout\,
	datac => \UART_unit|SRAM_address\(16),
	datad => \M2_unit|FS_unit|SRAM_address\(16),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X35_Y33_N0
\unit3|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~0_combout\ = (\Selector10~0_combout\) # (!\Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datad => \Selector11~0_combout\,
	combout => \unit3|Decoder0~0_combout\);

-- Location: LCCOMB_X35_Y33_N18
\unit3|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~1_combout\ = (\Selector11~0_combout\) # (!\Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datad => \Selector11~0_combout\,
	combout => \unit3|Decoder0~1_combout\);

-- Location: LCCOMB_X35_Y33_N20
\unit3|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~2_combout\ = (\state.S_TOP_M2~regout\ & (((\M2_unit|FS_unit|SRAM_address\(16))))) # (!\state.S_TOP_M2~regout\ & ((\UART_unit|SRAM_address\(17)) # ((\UART_unit|SRAM_address\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \UART_unit|SRAM_address\(17),
	datac => \UART_unit|SRAM_address\(16),
	datad => \M2_unit|FS_unit|SRAM_address\(16),
	combout => \unit3|Decoder0~2_combout\);

-- Location: LCCOMB_X35_Y33_N30
\unit3|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~3_combout\ = (\state.S_TOP_IDLE~regout\ & ((\unit3|Decoder0~2_combout\) # ((\state.S_TOP_M2~regout\ & \M2_unit|FS_unit|SRAM_address\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \state.S_TOP_IDLE~regout\,
	datac => \unit3|Decoder0~2_combout\,
	datad => \M2_unit|FS_unit|SRAM_address\(17),
	combout => \unit3|Decoder0~3_combout\);

-- Location: LCFF_X1_Y33_N7
\SRAM_unit|SRAM_read_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[3]~3\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(3));

-- Location: LCFF_X1_Y33_N1
\SRAM_unit|SRAM_read_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[0]~0\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(0));

-- Location: LCFF_X1_Y33_N13
\SRAM_unit|SRAM_read_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[2]~2\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(2));

-- Location: LCFF_X1_Y33_N3
\SRAM_unit|SRAM_read_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[1]~1\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(1));

-- Location: LCCOMB_X1_Y33_N16
\unit4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(3) & (\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(2) $ (\SRAM_unit|SRAM_read_data\(1))))) # (!\SRAM_unit|SRAM_read_data\(3) & (!\SRAM_unit|SRAM_read_data\(1) & 
-- (\SRAM_unit|SRAM_read_data\(0) $ (\SRAM_unit|SRAM_read_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(3),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(2),
	datad => \SRAM_unit|SRAM_read_data\(1),
	combout => \unit4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y33_N10
\unit4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(3) & ((\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(1)))) # (!\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(3) & 
-- (\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(0) $ (\SRAM_unit|SRAM_read_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(3),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(2),
	datad => \SRAM_unit|SRAM_read_data\(1),
	combout => \unit4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y33_N28
\unit4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(3) & (\SRAM_unit|SRAM_read_data\(2) & ((\SRAM_unit|SRAM_read_data\(1)) # (!\SRAM_unit|SRAM_read_data\(0))))) # (!\SRAM_unit|SRAM_read_data\(3) & (!\SRAM_unit|SRAM_read_data\(0) & 
-- (!\SRAM_unit|SRAM_read_data\(2) & \SRAM_unit|SRAM_read_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(3),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(2),
	datad => \SRAM_unit|SRAM_read_data\(1),
	combout => \unit4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y33_N0
\unit4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(2) $ ((!\SRAM_unit|SRAM_read_data\(1))))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(2) & (!\SRAM_unit|SRAM_read_data\(1) & 
-- !\SRAM_unit|SRAM_read_data\(3))) # (!\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(1) & \SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(2),
	datab => \SRAM_unit|SRAM_read_data\(1),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y33_N2
\unit4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(1) & (((\SRAM_unit|SRAM_read_data\(0) & !\SRAM_unit|SRAM_read_data\(3))))) # (!\SRAM_unit|SRAM_read_data\(1) & ((\SRAM_unit|SRAM_read_data\(2) & ((!\SRAM_unit|SRAM_read_data\(3)))) # 
-- (!\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(2),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(1),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y33_N12
\unit4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(1) & (!\SRAM_unit|SRAM_read_data\(3) & ((\SRAM_unit|SRAM_read_data\(0)) # (!\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(1) & (\SRAM_unit|SRAM_read_data\(0) & 
-- (\SRAM_unit|SRAM_read_data\(3) $ (!\SRAM_unit|SRAM_read_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(3),
	datab => \SRAM_unit|SRAM_read_data\(1),
	datac => \SRAM_unit|SRAM_read_data\(2),
	datad => \SRAM_unit|SRAM_read_data\(0),
	combout => \unit4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y33_N6
\unit4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(3)) # (\SRAM_unit|SRAM_read_data\(2) $ (\SRAM_unit|SRAM_read_data\(1))))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(1)) # 
-- (\SRAM_unit|SRAM_read_data\(2) $ (\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(2),
	datab => \SRAM_unit|SRAM_read_data\(1),
	datac => \SRAM_unit|SRAM_read_data\(3),
	datad => \SRAM_unit|SRAM_read_data\(0),
	combout => \unit4|WideOr0~0_combout\);

-- Location: LCFF_X1_Y30_N25
\SRAM_unit|SRAM_read_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[4]~4\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(4));

-- Location: LCFF_X1_Y30_N7
\SRAM_unit|SRAM_read_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[7]~7\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(7));

-- Location: LCFF_X1_Y30_N29
\SRAM_unit|SRAM_read_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[6]~6\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(6));

-- Location: LCFF_X1_Y30_N27
\SRAM_unit|SRAM_read_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[5]~5\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(5));

-- Location: LCCOMB_X1_Y30_N0
\unit5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(6) $ (\SRAM_unit|SRAM_read_data\(5))))) # (!\SRAM_unit|SRAM_read_data\(7) & (!\SRAM_unit|SRAM_read_data\(5) & 
-- (\SRAM_unit|SRAM_read_data\(4) $ (\SRAM_unit|SRAM_read_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y30_N18
\unit5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & ((\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5)))) # (!\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(6))))) # (!\SRAM_unit|SRAM_read_data\(7) & 
-- (\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(4) $ (\SRAM_unit|SRAM_read_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y30_N20
\unit5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(6) & ((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(4))))) # (!\SRAM_unit|SRAM_read_data\(7) & (!\SRAM_unit|SRAM_read_data\(4) & 
-- (!\SRAM_unit|SRAM_read_data\(6) & \SRAM_unit|SRAM_read_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y30_N24
\unit5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5) $ (!\SRAM_unit|SRAM_read_data\(6))))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(5) & 
-- !\SRAM_unit|SRAM_read_data\(6))) # (!\SRAM_unit|SRAM_read_data\(7) & (!\SRAM_unit|SRAM_read_data\(5) & \SRAM_unit|SRAM_read_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(7),
	datab => \SRAM_unit|SRAM_read_data\(5),
	datac => \SRAM_unit|SRAM_read_data\(4),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y30_N6
\unit5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(5) & (\SRAM_unit|SRAM_read_data\(4) & (!\SRAM_unit|SRAM_read_data\(7)))) # (!\SRAM_unit|SRAM_read_data\(5) & ((\SRAM_unit|SRAM_read_data\(6) & ((!\SRAM_unit|SRAM_read_data\(7)))) # 
-- (!\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(5),
	datac => \SRAM_unit|SRAM_read_data\(7),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y30_N26
\unit5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(7) $ (((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(6)))))) # (!\SRAM_unit|SRAM_read_data\(4) & (!\SRAM_unit|SRAM_read_data\(7) & 
-- (\SRAM_unit|SRAM_read_data\(5) & !\SRAM_unit|SRAM_read_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(5),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y30_N28
\unit5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(7)) # (\SRAM_unit|SRAM_read_data\(5) $ (\SRAM_unit|SRAM_read_data\(6))))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5)) # 
-- (\SRAM_unit|SRAM_read_data\(6) $ (\SRAM_unit|SRAM_read_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(5),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(7),
	combout => \unit5|WideOr0~0_combout\);

-- Location: LCFF_X1_Y28_N25
\SRAM_unit|SRAM_read_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[8]~8\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(8));

-- Location: LCFF_X1_Y28_N23
\SRAM_unit|SRAM_read_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[11]~11\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(11));

-- Location: LCFF_X1_Y28_N21
\SRAM_unit|SRAM_read_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[10]~10\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(10));

-- Location: LCFF_X1_Y28_N3
\SRAM_unit|SRAM_read_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[9]~9\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(9));

-- Location: LCCOMB_X1_Y28_N16
\unit6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(11) & (\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(10) $ (\SRAM_unit|SRAM_read_data\(9))))) # (!\SRAM_unit|SRAM_read_data\(11) & (!\SRAM_unit|SRAM_read_data\(9) & 
-- (\SRAM_unit|SRAM_read_data\(8) $ (\SRAM_unit|SRAM_read_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(11),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \unit6|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y28_N18
\unit6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(11) & ((\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(9)))) # (!\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(11) & 
-- (\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(8) $ (\SRAM_unit|SRAM_read_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(11),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \unit6|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y28_N12
\unit6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(11) & (\SRAM_unit|SRAM_read_data\(10) & ((\SRAM_unit|SRAM_read_data\(9)) # (!\SRAM_unit|SRAM_read_data\(8))))) # (!\SRAM_unit|SRAM_read_data\(11) & (!\SRAM_unit|SRAM_read_data\(8) & 
-- (!\SRAM_unit|SRAM_read_data\(10) & \SRAM_unit|SRAM_read_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(11),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \unit6|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y28_N24
\unit6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(10) $ ((!\SRAM_unit|SRAM_read_data\(9))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(10) & (!\SRAM_unit|SRAM_read_data\(9) & 
-- !\SRAM_unit|SRAM_read_data\(11))) # (!\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(9) & \SRAM_unit|SRAM_read_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(10),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(8),
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \unit6|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y28_N2
\unit6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(9) & (\SRAM_unit|SRAM_read_data\(8) & (!\SRAM_unit|SRAM_read_data\(11)))) # (!\SRAM_unit|SRAM_read_data\(9) & ((\SRAM_unit|SRAM_read_data\(10) & ((!\SRAM_unit|SRAM_read_data\(11)))) # 
-- (!\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(11),
	datac => \SRAM_unit|SRAM_read_data\(9),
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \unit6|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y28_N20
\unit6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(11) $ (((\SRAM_unit|SRAM_read_data\(9)) # (!\SRAM_unit|SRAM_read_data\(10)))))) # (!\SRAM_unit|SRAM_read_data\(8) & (!\SRAM_unit|SRAM_read_data\(11) & 
-- (!\SRAM_unit|SRAM_read_data\(10) & \SRAM_unit|SRAM_read_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(11),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \unit6|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y28_N22
\unit6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(11)) # (\SRAM_unit|SRAM_read_data\(9) $ (\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(9)) # 
-- (\SRAM_unit|SRAM_read_data\(11) $ (\SRAM_unit|SRAM_read_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(11),
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \unit6|WideOr0~0_combout\);

-- Location: LCFF_X16_Y35_N13
\SRAM_unit|SRAM_read_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[14]~14\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(14));

-- Location: LCFF_X16_Y35_N3
\SRAM_unit|SRAM_read_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[13]~13\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(13));

-- Location: LCFF_X16_Y35_N17
\SRAM_unit|SRAM_read_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[12]~12\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(12));

-- Location: LCFF_X16_Y35_N23
\SRAM_unit|SRAM_read_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[15]~15\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(15));

-- Location: LCCOMB_X16_Y35_N0
\unit7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(12) $ (!\SRAM_unit|SRAM_read_data\(15))))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12) & 
-- (\SRAM_unit|SRAM_read_data\(13) $ (!\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr6~0_combout\);

-- Location: LCCOMB_X16_Y35_N26
\unit7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(15)))) # (!\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(13) & 
-- (\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12) $ (\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr5~0_combout\);

-- Location: LCCOMB_X16_Y35_N20
\unit7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(15) & ((\SRAM_unit|SRAM_read_data\(13)) # (!\SRAM_unit|SRAM_read_data\(12))))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(13) & 
-- (!\SRAM_unit|SRAM_read_data\(12) & !\SRAM_unit|SRAM_read_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr4~0_combout\);

-- Location: LCCOMB_X16_Y35_N16
\unit7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(14) $ ((!\SRAM_unit|SRAM_read_data\(13))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(13) & 
-- !\SRAM_unit|SRAM_read_data\(15))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(13) & \SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr3~0_combout\);

-- Location: LCCOMB_X16_Y35_N2
\unit7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(12) & (!\SRAM_unit|SRAM_read_data\(15)))) # (!\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(14) & ((!\SRAM_unit|SRAM_read_data\(15)))) # 
-- (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(12),
	datab => \SRAM_unit|SRAM_read_data\(15),
	datac => \SRAM_unit|SRAM_read_data\(13),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr2~0_combout\);

-- Location: LCCOMB_X16_Y35_N12
\unit7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(15) $ (((\SRAM_unit|SRAM_read_data\(13)) # (!\SRAM_unit|SRAM_read_data\(14)))))) # (!\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(13) & 
-- (!\SRAM_unit|SRAM_read_data\(14) & !\SRAM_unit|SRAM_read_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(12),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(14),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr1~0_combout\);

-- Location: LCCOMB_X16_Y35_N22
\unit7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(15)) # (\SRAM_unit|SRAM_read_data\(13) $ (\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(13)) # 
-- (\SRAM_unit|SRAM_read_data\(15) $ (\SRAM_unit|SRAM_read_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(12),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr0~0_combout\);

-- Location: CLKCTRL_G2
\CLOCK_50_I~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_I~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50_I~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y32_N12
\VGA_unit|VGA_unit|H_Cont[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[1]~12_combout\ = (\VGA_unit|VGA_unit|H_Cont\(1) & (!\VGA_unit|VGA_unit|H_Cont[0]~11\)) # (!\VGA_unit|VGA_unit|H_Cont\(1) & ((\VGA_unit|VGA_unit|H_Cont[0]~11\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[1]~13\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[0]~11\) # (!\VGA_unit|VGA_unit|H_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[0]~11\,
	combout => \VGA_unit|VGA_unit|H_Cont[1]~12_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[1]~13\);

-- Location: LCCOMB_X32_Y32_N14
\VGA_unit|VGA_unit|H_Cont[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[2]~14_combout\ = (\VGA_unit|VGA_unit|H_Cont\(2) & (\VGA_unit|VGA_unit|H_Cont[1]~13\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(2) & (!\VGA_unit|VGA_unit|H_Cont[1]~13\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[2]~15\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(2) & !\VGA_unit|VGA_unit|H_Cont[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[1]~13\,
	combout => \VGA_unit|VGA_unit|H_Cont[2]~14_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[2]~15\);

-- Location: LCCOMB_X32_Y32_N16
\VGA_unit|VGA_unit|H_Cont[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[3]~16_combout\ = (\VGA_unit|VGA_unit|H_Cont\(3) & (!\VGA_unit|VGA_unit|H_Cont[2]~15\)) # (!\VGA_unit|VGA_unit|H_Cont\(3) & ((\VGA_unit|VGA_unit|H_Cont[2]~15\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[3]~17\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[2]~15\) # (!\VGA_unit|VGA_unit|H_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[2]~15\,
	combout => \VGA_unit|VGA_unit|H_Cont[3]~16_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[3]~17\);

-- Location: LCCOMB_X43_Y35_N26
\VGA_unit|VGA_unit|counter_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|counter_enable~0_combout\ = !\VGA_unit|VGA_unit|counter_enable~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|counter_enable~regout\,
	combout => \VGA_unit|VGA_unit|counter_enable~0_combout\);

-- Location: LCFF_X43_Y35_N27
\VGA_unit|VGA_unit|counter_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|counter_enable~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|counter_enable~regout\);

-- Location: LCFF_X32_Y32_N17
\VGA_unit|VGA_unit|H_Cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[3]~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(3));

-- Location: LCFF_X32_Y32_N13
\VGA_unit|VGA_unit|H_Cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[1]~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(1));

-- Location: LCCOMB_X32_Y32_N4
\VGA_unit|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(0) & (\VGA_unit|VGA_unit|H_Cont\(2) & (\VGA_unit|VGA_unit|H_Cont\(3) & \VGA_unit|VGA_unit|H_Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(0),
	datab => \VGA_unit|VGA_unit|H_Cont\(2),
	datac => \VGA_unit|VGA_unit|H_Cont\(3),
	datad => \VGA_unit|VGA_unit|H_Cont\(1),
	combout => \VGA_unit|always0~0_combout\);

-- Location: LCCOMB_X32_Y32_N20
\VGA_unit|VGA_unit|H_Cont[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[5]~20_combout\ = (\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont[4]~19\)) # (!\VGA_unit|VGA_unit|H_Cont\(5) & ((\VGA_unit|VGA_unit|H_Cont[4]~19\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[5]~21\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[4]~19\) # (!\VGA_unit|VGA_unit|H_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[4]~19\,
	combout => \VGA_unit|VGA_unit|H_Cont[5]~20_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[5]~21\);

-- Location: LCFF_X32_Y32_N21
\VGA_unit|VGA_unit|H_Cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[5]~20_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(5));

-- Location: LCCOMB_X33_Y32_N18
\VGA_unit|VGA_unit|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(7) & (!\VGA_unit|VGA_unit|H_Cont\(6) & !\VGA_unit|VGA_unit|H_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(7),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(5),
	combout => \VGA_unit|VGA_unit|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y32_N8
\VGA_unit|VGA_unit|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~1_combout\ = (\VGA_unit|always0~1_combout\ & (((\VGA_unit|VGA_unit|H_Cont\(4) & \VGA_unit|always0~0_combout\)) # (!\VGA_unit|VGA_unit|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~1_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(4),
	datac => \VGA_unit|always0~0_combout\,
	datad => \VGA_unit|VGA_unit|LessThan0~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan0~1_combout\);

-- Location: LCFF_X32_Y32_N15
\VGA_unit|VGA_unit|H_Cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[2]~14_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(2));

-- Location: LCCOMB_X32_Y32_N18
\VGA_unit|VGA_unit|H_Cont[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[4]~18_combout\ = (\VGA_unit|VGA_unit|H_Cont\(4) & (\VGA_unit|VGA_unit|H_Cont[3]~17\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(4) & (!\VGA_unit|VGA_unit|H_Cont[3]~17\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[4]~19\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[3]~17\,
	combout => \VGA_unit|VGA_unit|H_Cont[4]~18_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[4]~19\);

-- Location: LCFF_X32_Y32_N19
\VGA_unit|VGA_unit|H_Cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[4]~18_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(4));

-- Location: LCCOMB_X32_Y32_N22
\VGA_unit|VGA_unit|H_Cont[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[6]~22_combout\ = (\VGA_unit|VGA_unit|H_Cont\(6) & (\VGA_unit|VGA_unit|H_Cont[5]~21\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont[5]~21\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[6]~23\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(6) & !\VGA_unit|VGA_unit|H_Cont[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[5]~21\,
	combout => \VGA_unit|VGA_unit|H_Cont[6]~22_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[6]~23\);

-- Location: LCFF_X32_Y32_N23
\VGA_unit|VGA_unit|H_Cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[6]~22_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(6));

-- Location: LCCOMB_X32_Y32_N24
\VGA_unit|VGA_unit|H_Cont[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[7]~24_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7) & (!\VGA_unit|VGA_unit|H_Cont[6]~23\)) # (!\VGA_unit|VGA_unit|H_Cont\(7) & ((\VGA_unit|VGA_unit|H_Cont[6]~23\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[7]~25\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[6]~23\) # (!\VGA_unit|VGA_unit|H_Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[6]~23\,
	combout => \VGA_unit|VGA_unit|H_Cont[7]~24_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[7]~25\);

-- Location: LCCOMB_X32_Y32_N26
\VGA_unit|VGA_unit|H_Cont[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[8]~26_combout\ = (\VGA_unit|VGA_unit|H_Cont\(8) & (\VGA_unit|VGA_unit|H_Cont[7]~25\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(8) & (!\VGA_unit|VGA_unit|H_Cont[7]~25\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[8]~27\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(8) & !\VGA_unit|VGA_unit|H_Cont[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[7]~25\,
	combout => \VGA_unit|VGA_unit|H_Cont[8]~26_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[8]~27\);

-- Location: LCFF_X32_Y32_N27
\VGA_unit|VGA_unit|H_Cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[8]~26_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(8));

-- Location: LCCOMB_X32_Y32_N28
\VGA_unit|VGA_unit|H_Cont[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[9]~28_combout\ = \VGA_unit|VGA_unit|H_Cont[8]~27\ $ (\VGA_unit|VGA_unit|H_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|H_Cont\(9),
	cin => \VGA_unit|VGA_unit|H_Cont[8]~27\,
	combout => \VGA_unit|VGA_unit|H_Cont[9]~28_combout\);

-- Location: LCFF_X32_Y32_N29
\VGA_unit|VGA_unit|H_Cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[9]~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(9));

-- Location: LCCOMB_X33_Y32_N8
\VGA_unit|VGA_unit|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan1~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(8) & (!\VGA_unit|VGA_unit|H_Cont\(9) & ((!\VGA_unit|VGA_unit|H_Cont\(5)) # (!\VGA_unit|VGA_unit|H_Cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(8),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => \VGA_unit|VGA_unit|H_Cont\(9),
	combout => \VGA_unit|VGA_unit|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y32_N0
\VGA_unit|VGA_unit|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan1~1_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7)) # (!\VGA_unit|VGA_unit|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|VGA_unit|LessThan1~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan1~1_combout\);

-- Location: LCFF_X33_Y32_N1
\VGA_unit|VGA_unit|oVGA_H_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|LessThan1~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\);

-- Location: LCCOMB_X34_Y32_N4
\VGA_unit|VGA_unit|V_Cont[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[0]~10_combout\ = \VGA_unit|VGA_unit|V_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|V_Cont[0]~11\ = CARRY(\VGA_unit|VGA_unit|V_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|V_Cont[0]~10_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[0]~11\);

-- Location: LCCOMB_X34_Y32_N6
\VGA_unit|VGA_unit|V_Cont[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[1]~12_combout\ = (\VGA_unit|VGA_unit|V_Cont\(1) & (!\VGA_unit|VGA_unit|V_Cont[0]~11\)) # (!\VGA_unit|VGA_unit|V_Cont\(1) & ((\VGA_unit|VGA_unit|V_Cont[0]~11\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[1]~13\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[0]~11\) # (!\VGA_unit|VGA_unit|V_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[0]~11\,
	combout => \VGA_unit|VGA_unit|V_Cont[1]~12_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[1]~13\);

-- Location: LCFF_X32_Y32_N25
\VGA_unit|VGA_unit|H_Cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[7]~24_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(7));

-- Location: LCCOMB_X33_Y32_N10
\VGA_unit|VGA_unit|oVGA_V_SYNC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont\(7) & !\VGA_unit|VGA_unit|H_Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|VGA_unit|H_Cont\(4),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\);

-- Location: LCCOMB_X33_Y32_N12
\VGA_unit|VGA_unit|oVGA_V_SYNC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ & (\VGA_unit|VGA_unit|counter_enable~regout\ & \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	datab => \VGA_unit|VGA_unit|counter_enable~regout\,
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\);

-- Location: LCFF_X34_Y32_N7
\VGA_unit|VGA_unit|V_Cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[1]~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(1));

-- Location: LCCOMB_X34_Y32_N28
\VGA_unit|VGA_unit|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~1_combout\ = ((!\VGA_unit|VGA_unit|V_Cont\(2) & ((!\VGA_unit|VGA_unit|V_Cont\(1)) # (!\VGA_unit|VGA_unit|V_Cont\(0))))) # (!\VGA_unit|VGA_unit|V_Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(2),
	datab => \VGA_unit|VGA_unit|V_Cont\(3),
	datac => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => \VGA_unit|VGA_unit|V_Cont\(1),
	combout => \VGA_unit|VGA_unit|LessThan2~1_combout\);

-- Location: LCCOMB_X34_Y32_N10
\VGA_unit|VGA_unit|V_Cont[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[3]~16_combout\ = (\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont[2]~15\)) # (!\VGA_unit|VGA_unit|V_Cont\(3) & ((\VGA_unit|VGA_unit|V_Cont[2]~15\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[3]~17\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[2]~15\) # (!\VGA_unit|VGA_unit|V_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[2]~15\,
	combout => \VGA_unit|VGA_unit|V_Cont[3]~16_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[3]~17\);

-- Location: LCCOMB_X34_Y32_N12
\VGA_unit|VGA_unit|V_Cont[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[4]~18_combout\ = (\VGA_unit|VGA_unit|V_Cont\(4) & (\VGA_unit|VGA_unit|V_Cont[3]~17\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(4) & (!\VGA_unit|VGA_unit|V_Cont[3]~17\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[4]~19\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(4) & !\VGA_unit|VGA_unit|V_Cont[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[3]~17\,
	combout => \VGA_unit|VGA_unit|V_Cont[4]~18_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[4]~19\);

-- Location: LCCOMB_X34_Y32_N14
\VGA_unit|VGA_unit|V_Cont[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[5]~20_combout\ = (\VGA_unit|VGA_unit|V_Cont\(5) & (!\VGA_unit|VGA_unit|V_Cont[4]~19\)) # (!\VGA_unit|VGA_unit|V_Cont\(5) & ((\VGA_unit|VGA_unit|V_Cont[4]~19\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[5]~21\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[4]~19\) # (!\VGA_unit|VGA_unit|V_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[4]~19\,
	combout => \VGA_unit|VGA_unit|V_Cont[5]~20_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[5]~21\);

-- Location: LCFF_X34_Y32_N15
\VGA_unit|VGA_unit|V_Cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[5]~20_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(5));

-- Location: LCCOMB_X34_Y32_N16
\VGA_unit|VGA_unit|V_Cont[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[6]~22_combout\ = (\VGA_unit|VGA_unit|V_Cont\(6) & (\VGA_unit|VGA_unit|V_Cont[5]~21\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(6) & (!\VGA_unit|VGA_unit|V_Cont[5]~21\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[6]~23\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(6) & !\VGA_unit|VGA_unit|V_Cont[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[5]~21\,
	combout => \VGA_unit|VGA_unit|V_Cont[6]~22_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[6]~23\);

-- Location: LCCOMB_X34_Y32_N18
\VGA_unit|VGA_unit|V_Cont[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[7]~24_combout\ = (\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|V_Cont[6]~23\)) # (!\VGA_unit|VGA_unit|V_Cont\(7) & ((\VGA_unit|VGA_unit|V_Cont[6]~23\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[7]~25\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[6]~23\) # (!\VGA_unit|VGA_unit|V_Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[6]~23\,
	combout => \VGA_unit|VGA_unit|V_Cont[7]~24_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[7]~25\);

-- Location: LCFF_X34_Y32_N19
\VGA_unit|VGA_unit|V_Cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[7]~24_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(7));

-- Location: LCCOMB_X34_Y32_N20
\VGA_unit|VGA_unit|V_Cont[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[8]~26_combout\ = (\VGA_unit|VGA_unit|V_Cont\(8) & (\VGA_unit|VGA_unit|V_Cont[7]~25\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont[7]~25\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[8]~27\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(8) & !\VGA_unit|VGA_unit|V_Cont[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[7]~25\,
	combout => \VGA_unit|VGA_unit|V_Cont[8]~26_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[8]~27\);

-- Location: LCCOMB_X34_Y32_N22
\VGA_unit|VGA_unit|V_Cont[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[9]~28_combout\ = \VGA_unit|VGA_unit|V_Cont[8]~27\ $ (\VGA_unit|VGA_unit|V_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|V_Cont\(9),
	cin => \VGA_unit|VGA_unit|V_Cont[8]~27\,
	combout => \VGA_unit|VGA_unit|V_Cont[9]~28_combout\);

-- Location: LCFF_X34_Y32_N23
\VGA_unit|VGA_unit|V_Cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[9]~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(9));

-- Location: LCCOMB_X34_Y32_N30
\VGA_unit|VGA_unit|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~2_combout\ = (\VGA_unit|VGA_unit|V_Cont\(9) & (((\VGA_unit|VGA_unit|V_Cont\(5)) # (!\VGA_unit|VGA_unit|LessThan2~1_combout\)) # (!\VGA_unit|VGA_unit|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	datab => \VGA_unit|VGA_unit|LessThan2~1_combout\,
	datac => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => \VGA_unit|VGA_unit|V_Cont\(9),
	combout => \VGA_unit|VGA_unit|LessThan2~2_combout\);

-- Location: LCFF_X34_Y32_N5
\VGA_unit|VGA_unit|V_Cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[0]~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(0));

-- Location: LCCOMB_X34_Y32_N8
\VGA_unit|VGA_unit|V_Cont[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[2]~14_combout\ = (\VGA_unit|VGA_unit|V_Cont\(2) & (\VGA_unit|VGA_unit|V_Cont[1]~13\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(2) & (!\VGA_unit|VGA_unit|V_Cont[1]~13\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[2]~15\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(2) & !\VGA_unit|VGA_unit|V_Cont[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[1]~13\,
	combout => \VGA_unit|VGA_unit|V_Cont[2]~14_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[2]~15\);

-- Location: LCFF_X34_Y32_N9
\VGA_unit|VGA_unit|V_Cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[2]~14_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(2));

-- Location: LCFF_X34_Y32_N11
\VGA_unit|VGA_unit|V_Cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[3]~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(3));

-- Location: LCCOMB_X33_Y32_N30
\VGA_unit|VGA_unit|oVGA_R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont\(2) & !\VGA_unit|VGA_unit|V_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(3),
	datac => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => \VGA_unit|VGA_unit|V_Cont\(1),
	combout => \VGA_unit|VGA_unit|oVGA_R~0_combout\);

-- Location: LCFF_X34_Y32_N13
\VGA_unit|VGA_unit|V_Cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[4]~18_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(4));

-- Location: LCFF_X34_Y32_N21
\VGA_unit|VGA_unit|V_Cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[8]~26_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(8));

-- Location: LCCOMB_X34_Y32_N0
\VGA_unit|VGA_unit|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(6) & (!\VGA_unit|VGA_unit|V_Cont\(4) & (!\VGA_unit|VGA_unit|V_Cont\(8) & !\VGA_unit|VGA_unit|V_Cont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(6),
	datab => \VGA_unit|VGA_unit|V_Cont\(4),
	datac => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => \VGA_unit|VGA_unit|V_Cont\(7),
	combout => \VGA_unit|VGA_unit|LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y32_N24
\VGA_unit|VGA_unit|oVGA_R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~1_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(5) & (\VGA_unit|VGA_unit|oVGA_R~0_combout\ & \VGA_unit|VGA_unit|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(5),
	datab => \VGA_unit|VGA_unit|oVGA_R~0_combout\,
	datac => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~1_combout\);

-- Location: LCCOMB_X33_Y32_N26
\VGA_unit|VGA_unit|oVGA_V_SYNC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & ((\VGA_unit|VGA_unit|V_Cont\(9)) # ((!\VGA_unit|VGA_unit|oVGA_R~1_combout\)))) # (!\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & 
-- (((\VGA_unit|VGA_unit|oVGA_V_SYNC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	datab => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\);

-- Location: LCFF_X33_Y32_N27
\VGA_unit|VGA_unit|oVGA_V_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\);

-- Location: LCCOMB_X33_Y32_N20
\VGA_unit|VGA_unit|oVGA_BLANK\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_BLANK~combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~regout\ & \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	datad => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\,
	combout => \VGA_unit|VGA_unit|oVGA_BLANK~combout\);

-- Location: LCCOMB_X33_Y32_N28
\VGA_unit|VGA_unit|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan4~1_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(5) & !\VGA_unit|VGA_unit|H_Cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|LessThan4~1_combout\);

-- Location: LCFF_X34_Y32_N17
\VGA_unit|VGA_unit|V_Cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[6]~22_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(6));

-- Location: LCCOMB_X35_Y32_N8
\VGA_unit|VGA_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~4_combout\ = (\VGA_unit|VGA_unit|V_Cont\(2) & ((GND) # (!\VGA_unit|VGA_unit|Add1~3\))) # (!\VGA_unit|VGA_unit|V_Cont\(2) & (\VGA_unit|VGA_unit|Add1~3\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~5\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(2)) # (!\VGA_unit|VGA_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~3\,
	combout => \VGA_unit|VGA_unit|Add1~4_combout\,
	cout => \VGA_unit|VGA_unit|Add1~5\);

-- Location: LCCOMB_X35_Y32_N10
\VGA_unit|VGA_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~6_combout\ = (\VGA_unit|VGA_unit|V_Cont\(3) & (\VGA_unit|VGA_unit|Add1~5\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|Add1~5\))
-- \VGA_unit|VGA_unit|Add1~7\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(3) & !\VGA_unit|VGA_unit|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~5\,
	combout => \VGA_unit|VGA_unit|Add1~6_combout\,
	cout => \VGA_unit|VGA_unit|Add1~7\);

-- Location: LCCOMB_X35_Y32_N16
\VGA_unit|VGA_unit|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~12_combout\ = (\VGA_unit|VGA_unit|V_Cont\(6) & ((GND) # (!\VGA_unit|VGA_unit|Add1~11\))) # (!\VGA_unit|VGA_unit|V_Cont\(6) & (\VGA_unit|VGA_unit|Add1~11\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~13\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(6)) # (!\VGA_unit|VGA_unit|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~11\,
	combout => \VGA_unit|VGA_unit|Add1~12_combout\,
	cout => \VGA_unit|VGA_unit|Add1~13\);

-- Location: LCCOMB_X35_Y32_N18
\VGA_unit|VGA_unit|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~14_combout\ = (\VGA_unit|VGA_unit|V_Cont\(7) & (\VGA_unit|VGA_unit|Add1~13\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|Add1~13\))
-- \VGA_unit|VGA_unit|Add1~15\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(7) & !\VGA_unit|VGA_unit|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~13\,
	combout => \VGA_unit|VGA_unit|Add1~14_combout\,
	cout => \VGA_unit|VGA_unit|Add1~15\);

-- Location: LCCOMB_X35_Y32_N2
\VGA_unit|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~1_combout\ = (\VGA_unit|VGA_unit|Add1~8_combout\ & (\VGA_unit|VGA_unit|Add1~4_combout\ & (\VGA_unit|VGA_unit|Add1~12_combout\ & \VGA_unit|VGA_unit|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~8_combout\,
	datab => \VGA_unit|VGA_unit|Add1~4_combout\,
	datac => \VGA_unit|VGA_unit|Add1~12_combout\,
	datad => \VGA_unit|VGA_unit|Add1~6_combout\,
	combout => \VGA_unit|Equal4~1_combout\);

-- Location: LCCOMB_X35_Y32_N0
\VGA_unit|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~2_combout\ = (\VGA_unit|Equal4~0_combout\ & (\VGA_unit|VGA_unit|Add1~14_combout\ & (\VGA_unit|VGA_unit|Add1~16_combout\ & \VGA_unit|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal4~0_combout\,
	datab => \VGA_unit|VGA_unit|Add1~14_combout\,
	datac => \VGA_unit|VGA_unit|Add1~16_combout\,
	datad => \VGA_unit|Equal4~1_combout\,
	combout => \VGA_unit|Equal4~2_combout\);

-- Location: LCCOMB_X32_Y32_N30
\VGA_unit|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~1_combout\ = (\VGA_unit|VGA_unit|H_Cont\(8) & \VGA_unit|VGA_unit|H_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_unit|H_Cont\(9),
	combout => \VGA_unit|always0~1_combout\);

-- Location: LCCOMB_X32_Y32_N6
\VGA_unit|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~2_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(7) & (\VGA_unit|always0~1_combout\ & (\VGA_unit|always0~0_combout\ & !\VGA_unit|VGA_unit|H_Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(7),
	datab => \VGA_unit|always0~1_combout\,
	datac => \VGA_unit|always0~0_combout\,
	datad => \VGA_unit|VGA_unit|H_Cont\(4),
	combout => \VGA_unit|always0~2_combout\);

-- Location: LCCOMB_X33_Y32_N22
\VGA_unit|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~3_combout\ = (\VGA_unit|always0~2_combout\) # ((\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ & (\VGA_unit|VGA_unit|H_Cont\(4) & \VGA_unit|VGA_unit|H_Cont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(4),
	datac => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|always0~2_combout\,
	combout => \VGA_unit|always0~3_combout\);

-- Location: LCCOMB_X33_Y32_N2
\VGA_unit|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~4_combout\ = (\VGA_unit|Equal3~2_combout\) # ((\VGA_unit|Equal4~2_combout\) # ((\VGA_unit|VGA_unit|LessThan4~1_combout\ & \VGA_unit|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal3~2_combout\,
	datab => \VGA_unit|VGA_unit|LessThan4~1_combout\,
	datac => \VGA_unit|Equal4~2_combout\,
	datad => \VGA_unit|always0~3_combout\,
	combout => \VGA_unit|always0~4_combout\);

-- Location: LCFF_X33_Y32_N3
\VGA_unit|VGA_blue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|always0~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(0));

-- Location: LCCOMB_X33_Y32_N4
\VGA_unit|VGA_unit|oVGA_R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~2_combout\ = ((\VGA_unit|VGA_unit|oVGA_R~1_combout\ & !\VGA_unit|VGA_unit|V_Cont\(0))) # (!\VGA_unit|VGA_unit|V_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datad => \VGA_unit|VGA_unit|V_Cont\(0),
	combout => \VGA_unit|VGA_unit|oVGA_R~2_combout\);

-- Location: LCCOMB_X34_Y32_N26
\VGA_unit|VGA_unit|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(6) & (!\VGA_unit|VGA_unit|V_Cont\(9) & (!\VGA_unit|VGA_unit|V_Cont\(8) & !\VGA_unit|VGA_unit|V_Cont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(6),
	datab => \VGA_unit|VGA_unit|V_Cont\(9),
	datac => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => \VGA_unit|VGA_unit|V_Cont\(7),
	combout => \VGA_unit|VGA_unit|LessThan6~0_combout\);

-- Location: LCCOMB_X34_Y32_N2
\VGA_unit|VGA_unit|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~2_combout\ = (\VGA_unit|VGA_unit|LessThan6~0_combout\ & (((\VGA_unit|VGA_unit|LessThan6~1_combout\ & !\VGA_unit|VGA_unit|V_Cont\(0))) # (!\VGA_unit|VGA_unit|V_Cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan6~1_combout\,
	datab => \VGA_unit|VGA_unit|V_Cont\(5),
	datac => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => \VGA_unit|VGA_unit|LessThan6~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan6~2_combout\);

-- Location: LCCOMB_X33_Y32_N6
\VGA_unit|VGA_unit|oVGA_R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~4_combout\ = (\VGA_unit|VGA_unit|oVGA_R~3_combout\ & (\VGA_unit|VGA_blue\(0) & (\VGA_unit|VGA_unit|oVGA_R~2_combout\ & !\VGA_unit|VGA_unit|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_R~3_combout\,
	datab => \VGA_unit|VGA_blue\(0),
	datac => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	datad => \VGA_unit|VGA_unit|LessThan6~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~4_combout\);

-- Location: LCFF_X43_Y35_N1
\VGA_unit|VGA_unit|oVGA_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(0));

-- Location: LCFF_X43_Y35_N3
\VGA_unit|VGA_unit|oVGA_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(1));

-- Location: LCFF_X43_Y35_N5
\VGA_unit|VGA_unit|oVGA_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(2));

-- Location: LCCOMB_X22_Y35_N0
\VGA_unit|VGA_unit|oVGA_R[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R[3]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R[3]~feeder_combout\);

-- Location: LCFF_X22_Y35_N1
\VGA_unit|VGA_unit|oVGA_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R[3]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(3));

-- Location: LCFF_X43_Y35_N23
\VGA_unit|VGA_unit|oVGA_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(4));

-- Location: LCCOMB_X22_Y35_N18
\VGA_unit|VGA_unit|oVGA_R[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R[5]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R[5]~feeder_combout\);

-- Location: LCFF_X22_Y35_N19
\VGA_unit|VGA_unit|oVGA_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R[5]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(5));

-- Location: LCFF_X33_Y32_N7
\VGA_unit|VGA_unit|oVGA_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(6));

-- Location: LCFF_X43_Y35_N9
\VGA_unit|VGA_unit|oVGA_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(7));

-- Location: LCCOMB_X22_Y35_N20
\VGA_unit|VGA_unit|oVGA_R[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R[8]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R[8]~feeder_combout\);

-- Location: LCFF_X22_Y35_N21
\VGA_unit|VGA_unit|oVGA_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R[8]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(8));

-- Location: LCFF_X43_Y35_N19
\VGA_unit|VGA_unit|oVGA_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(9));

-- Location: LCFF_X43_Y35_N29
\VGA_unit|VGA_unit|oVGA_G[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(0));

-- Location: LCCOMB_X22_Y35_N22
\VGA_unit|VGA_unit|oVGA_G[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\);

-- Location: LCFF_X22_Y35_N23
\VGA_unit|VGA_unit|oVGA_G[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(1));

-- Location: LCCOMB_X22_Y35_N16
\VGA_unit|VGA_unit|oVGA_G[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[2]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[2]~feeder_combout\);

-- Location: LCFF_X22_Y35_N17
\VGA_unit|VGA_unit|oVGA_G[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[2]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(2));

-- Location: LCCOMB_X22_Y35_N10
\VGA_unit|VGA_unit|oVGA_G[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[3]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[3]~feeder_combout\);

-- Location: LCFF_X22_Y35_N11
\VGA_unit|VGA_unit|oVGA_G[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[3]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(3));

-- Location: LCCOMB_X22_Y35_N12
\VGA_unit|VGA_unit|oVGA_G[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[4]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[4]~feeder_combout\);

-- Location: LCFF_X22_Y35_N13
\VGA_unit|VGA_unit|oVGA_G[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[4]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(4));

-- Location: LCFF_X43_Y35_N31
\VGA_unit|VGA_unit|oVGA_G[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(5));

-- Location: LCCOMB_X22_Y35_N14
\VGA_unit|VGA_unit|oVGA_G[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[6]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[6]~feeder_combout\);

-- Location: LCFF_X22_Y35_N15
\VGA_unit|VGA_unit|oVGA_G[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[6]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(6));

-- Location: LCCOMB_X22_Y35_N8
\VGA_unit|VGA_unit|oVGA_G[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[7]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[7]~feeder_combout\);

-- Location: LCFF_X22_Y35_N9
\VGA_unit|VGA_unit|oVGA_G[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[7]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(7));

-- Location: LCCOMB_X22_Y35_N26
\VGA_unit|VGA_unit|oVGA_G[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[8]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[8]~feeder_combout\);

-- Location: LCFF_X22_Y35_N27
\VGA_unit|VGA_unit|oVGA_G[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[8]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(8));

-- Location: LCCOMB_X22_Y35_N28
\VGA_unit|VGA_unit|oVGA_G[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[9]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[9]~feeder_combout\);

-- Location: LCFF_X22_Y35_N29
\VGA_unit|VGA_unit|oVGA_G[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[9]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(9));

-- Location: LCCOMB_X22_Y35_N6
\VGA_unit|VGA_unit|oVGA_B[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\);

-- Location: LCFF_X22_Y35_N7
\VGA_unit|VGA_unit|oVGA_B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(0));

-- Location: LCCOMB_X22_Y35_N24
\VGA_unit|VGA_unit|oVGA_B[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B[1]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B[1]~feeder_combout\);

-- Location: LCFF_X22_Y35_N25
\VGA_unit|VGA_unit|oVGA_B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B[1]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(1));

-- Location: LCCOMB_X22_Y35_N2
\VGA_unit|VGA_unit|oVGA_B[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B[2]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B[2]~feeder_combout\);

-- Location: LCFF_X22_Y35_N3
\VGA_unit|VGA_unit|oVGA_B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B[2]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(2));

-- Location: LCFF_X43_Y35_N25
\VGA_unit|VGA_unit|oVGA_B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(3));

-- Location: LCFF_X43_Y35_N11
\VGA_unit|VGA_unit|oVGA_B[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(4));

-- Location: LCFF_X43_Y35_N21
\VGA_unit|VGA_unit|oVGA_B[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(5));

-- Location: LCFF_X43_Y35_N7
\VGA_unit|VGA_unit|oVGA_B[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(6));

-- Location: LCCOMB_X22_Y35_N4
\VGA_unit|VGA_unit|oVGA_B[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B[7]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B[7]~feeder_combout\);

-- Location: LCFF_X22_Y35_N5
\VGA_unit|VGA_unit|oVGA_B[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B[7]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(7));

-- Location: LCCOMB_X22_Y35_N30
\VGA_unit|VGA_unit|oVGA_B[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B[8]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B[8]~feeder_combout\);

-- Location: LCFF_X22_Y35_N31
\VGA_unit|VGA_unit|oVGA_B[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B[8]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(8));

-- Location: LCFF_X43_Y35_N17
\VGA_unit|VGA_unit|oVGA_B[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(9));

-- Location: LCCOMB_X47_Y33_N28
\M2_unit|FS_unit|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector24~0_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (\M2_unit|FS_unit|WideOr2~0_combout\ & ((\M2_unit|FS_unit|SC\(0))))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(0)) # 
-- ((\M2_unit|FS_unit|WideOr2~0_combout\ & \M2_unit|FS_unit|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|SRAM_address\(0),
	datad => \M2_unit|FS_unit|SC\(0),
	combout => \M2_unit|FS_unit|Selector24~0_combout\);

-- Location: LCFF_X47_Y33_N29
\M2_unit|FS_unit|SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector24~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(0));

-- Location: LCCOMB_X37_Y33_N16
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(0)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \UART_unit|SRAM_address\(0),
	datad => \M2_unit|FS_unit|SRAM_address\(0),
	combout => \Selector27~0_combout\);

-- Location: LCFF_X37_Y33_N17
\SRAM_unit|SRAM_ADDRESS_O[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector27~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \ALT_INV_state.S_TOP_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(0));

-- Location: LCFF_X38_Y33_N17
\UART_unit|SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_address[1]~20_combout\,
	sdata => VCC,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|ALT_INV_UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	sload => \UART_unit|LessThan1~5_combout\,
	ena => \UART_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(1));

-- Location: LCCOMB_X47_Y33_N6
\M2_unit|FS_unit|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector23~0_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (\M2_unit|FS_unit|WideOr2~0_combout\ & ((\M2_unit|FS_unit|SC\(1))))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(1)) # 
-- ((\M2_unit|FS_unit|WideOr2~0_combout\ & \M2_unit|FS_unit|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|SRAM_address\(1),
	datad => \M2_unit|FS_unit|SC\(1),
	combout => \M2_unit|FS_unit|Selector23~0_combout\);

-- Location: LCFF_X47_Y33_N7
\M2_unit|FS_unit|SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector23~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(1));

-- Location: LCCOMB_X37_Y33_N10
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(1)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \UART_unit|SRAM_address\(1),
	datad => \M2_unit|FS_unit|SRAM_address\(1),
	combout => \Selector26~0_combout\);

-- Location: LCFF_X37_Y33_N11
\SRAM_unit|SRAM_ADDRESS_O[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector26~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \ALT_INV_state.S_TOP_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(1));

-- Location: LCFF_X47_Y33_N13
\M2_unit|FS_unit|SC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|SC[2]~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|SC[3]~14_combout\,
	ena => \M2_unit|FS_unit|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SC\(2));

-- Location: LCCOMB_X47_Y33_N0
\M2_unit|FS_unit|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector22~0_combout\ = (\M2_unit|FS_unit|WideOr1~0_combout\ & (\M2_unit|FS_unit|WideOr2~0_combout\ & ((\M2_unit|FS_unit|SC\(2))))) # (!\M2_unit|FS_unit|WideOr1~0_combout\ & ((\M2_unit|FS_unit|SRAM_address\(2)) # 
-- ((\M2_unit|FS_unit|WideOr2~0_combout\ & \M2_unit|FS_unit|SC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr1~0_combout\,
	datab => \M2_unit|FS_unit|WideOr2~0_combout\,
	datac => \M2_unit|FS_unit|SRAM_address\(2),
	datad => \M2_unit|FS_unit|SC\(2),
	combout => \M2_unit|FS_unit|Selector22~0_combout\);

-- Location: LCFF_X47_Y33_N1
\M2_unit|FS_unit|SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector22~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(2));

-- Location: LCCOMB_X37_Y33_N20
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|SRAM_address\(2))) # (!\state.S_TOP_M2~regout\ & ((\UART_unit|SRAM_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \M2_unit|FS_unit|SRAM_address\(2),
	datad => \UART_unit|SRAM_address\(2),
	combout => \Selector25~0_combout\);

-- Location: LCFF_X37_Y33_N21
\SRAM_unit|SRAM_ADDRESS_O[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector25~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \ALT_INV_state.S_TOP_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(2));

-- Location: LCCOMB_X54_Y33_N6
\M2_unit|FS_unit|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|Selector21~0_combout\ = (\M2_unit|FS_unit|WideOr2~0_combout\ & ((\M2_unit|FS_unit|CB\(0)) # ((\M2_unit|FS_unit|SRAM_address\(3) & !\M2_unit|FS_unit|WideOr1~0_combout\)))) # (!\M2_unit|FS_unit|WideOr2~0_combout\ & 
-- (((\M2_unit|FS_unit|SRAM_address\(3) & !\M2_unit|FS_unit|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|WideOr2~0_combout\,
	datab => \M2_unit|FS_unit|CB\(0),
	datac => \M2_unit|FS_unit|SRAM_address\(3),
	datad => \M2_unit|FS_unit|WideOr1~0_combout\,
	combout => \M2_unit|FS_unit|Selector21~0_combout\);

-- Location: LCFF_X54_Y33_N7
\M2_unit|FS_unit|SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|Selector21~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(3));

-- Location: LCCOMB_X54_Y33_N24
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(3)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(3),
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(3),
	combout => \Selector24~0_combout\);

-- Location: LCFF_X54_Y33_N25
\SRAM_unit|SRAM_ADDRESS_O[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector24~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \ALT_INV_state.S_TOP_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(3));

-- Location: LCFF_X54_Y33_N29
\SRAM_unit|SRAM_ADDRESS_O[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector23~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(4));

-- Location: LCFF_X54_Y33_N1
\SRAM_unit|SRAM_ADDRESS_O[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector22~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(5));

-- Location: LCFF_X54_Y33_N13
\SRAM_unit|SRAM_ADDRESS_O[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector21~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(6));

-- Location: LCFF_X54_Y33_N31
\SRAM_unit|SRAM_ADDRESS_O[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(7));

-- Location: LCFF_X37_Y33_N31
\SRAM_unit|SRAM_ADDRESS_O[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(8));

-- Location: LCFF_X37_Y33_N25
\SRAM_unit|SRAM_ADDRESS_O[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(9));

-- Location: LCFF_X37_Y33_N27
\SRAM_unit|SRAM_ADDRESS_O[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(10));

-- Location: LCFF_X37_Y33_N29
\SRAM_unit|SRAM_ADDRESS_O[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(11));

-- Location: LCFF_X48_Y33_N27
\SRAM_unit|SRAM_ADDRESS_O[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(12));

-- Location: LCFF_X48_Y33_N21
\SRAM_unit|SRAM_ADDRESS_O[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(13));

-- Location: LCFF_X48_Y33_N25
\SRAM_unit|SRAM_ADDRESS_O[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(14));

-- Location: LCFF_X48_Y33_N19
\SRAM_unit|SRAM_ADDRESS_O[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(15));

-- Location: LCFF_X35_Y33_N23
\SRAM_unit|SRAM_ADDRESS_O[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(16));

-- Location: LCFF_X35_Y33_N13
\SRAM_unit|SRAM_ADDRESS_O[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(17));

-- Location: CLKCTRL_G3
\SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y17_N0
\SRAM_unit|SRAM_LB_N_O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_LB_N_O~0_combout\ = !\CLOCK_50_I~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLOCK_50_I~combout\,
	combout => \SRAM_unit|SRAM_LB_N_O~0_combout\);

-- Location: LCFF_X1_Y17_N1
\SRAM_unit|SRAM_LB_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_LB_N_O~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_LB_N_O~regout\);

-- Location: LCCOMB_X1_Y25_N0
\SRAM_unit|SRAM_CE_N_O~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_CE_N_O~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \SRAM_unit|SRAM_CE_N_O~feeder_combout\);

-- Location: LCFF_X1_Y25_N1
\SRAM_unit|SRAM_CE_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_CE_N_O~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_CE_N_O~regout\);

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(1));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(2));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(3));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(0));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(1));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(3));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(4));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(5));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(6));

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(7));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(8));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(9));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(10));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(11));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(12));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(13));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(14));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(15));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(16));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resetn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_resetn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resetn);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(0));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(1));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(2));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(3));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(4));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(5));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(6));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(1));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(4));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(6));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(0));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(1));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(4));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(5));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(6));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|ALT_INV_Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(0));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|ALT_INV_Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|ALT_INV_Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(3));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(5));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(0));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(1));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(2));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(3));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(4));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(5));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit5|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(0));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit5|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(1));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit5|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit5|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(3));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit5|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(4));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit5|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit5|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit6|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(0));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit6|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(1));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit6|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit6|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit6|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(4));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit6|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(5));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit6|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(6));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit7|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit7|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit7|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit7|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit7|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(4));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit7|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(5));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit7|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(6));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(0));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(1));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(2));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(3));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(4));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(5));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(6));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(7));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(8));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLOCK_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CLOCK_50_I~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLOCK_O);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HSYNC_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HSYNC_O);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VSYNC_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VSYNC_O);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_BLANK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK_O);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_SYNC_O);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(1));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(2));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(3));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(4));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(5));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(8));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_R\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(9));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(1));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(2));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(3));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(4));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(7));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(8));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_G\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(9));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(0));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(2));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(3));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(4));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(5));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(7));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(8));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA_unit|VGA_unit|oVGA_B\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(9));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(1));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(2));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(3));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(4));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(5));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(6));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(7));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(8));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(9));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(10));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(11));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(12));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(13));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(14));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(15));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(16));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_ADDRESS_O\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(17));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_LB_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_UB_N_O);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_LB_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N_O);

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N_O);

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_CE_N_O);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N_O);

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TX_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TX_O);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(0));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RX_I~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UART_RX_I);
END structure;


