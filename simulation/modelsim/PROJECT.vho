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

-- DATE "11/22/2018 17:41:42"

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
-- SRAM_DATA_IO[0]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[1]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[2]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[4]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[5]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[6]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[7]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[8]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[9]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[10]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[11]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[12]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[13]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[14]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[15]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PUSH_BUTTON_I[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[2]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[3]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[1]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[2]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[4]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[5]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[6]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[7]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[8]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[9]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[10]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[11]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[12]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[13]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[14]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[15]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[16]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][4]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][5]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][6]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][5]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][6]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][0]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][1]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][2]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][3]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][4]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][0]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][1]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][2]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][4]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][5]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][6]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][1]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][2]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][4]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][6]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][0]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][1]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][2]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][3]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][4]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][5]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][6]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][0]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][1]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][2]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][3]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][4]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][5]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][6]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[0]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[2]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[3]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[4]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[5]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[6]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[7]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[8]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLOCK_O	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HSYNC_O	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VSYNC_O	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK_O	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC_O	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[1]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[2]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[3]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[4]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[5]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[6]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[7]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[8]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[9]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[0]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[1]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[2]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[4]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[5]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[6]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[8]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[9]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[0]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[3]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[6]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[7]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[8]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[9]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[3]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[5]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[8]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[9]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[10]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[11]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[12]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[13]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[14]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[15]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[16]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[17]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N_O	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N_O	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N_O	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N_O	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N_O	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TX_O	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SWITCH_I[17]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50_I	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RX_I	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \UART_unit|Add1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~1\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~3\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~5\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~7\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~9\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~18_combout\ : std_logic;
SIGNAL \UART_timer[0]~26_combout\ : std_logic;
SIGNAL \UART_timer[2]~30_combout\ : std_logic;
SIGNAL \UART_timer[3]~32_combout\ : std_logic;
SIGNAL \UART_timer[7]~40_combout\ : std_logic;
SIGNAL \UART_timer[19]~64_combout\ : std_logic;
SIGNAL \UART_timer[22]~71\ : std_logic;
SIGNAL \UART_timer[23]~73\ : std_logic;
SIGNAL \UART_timer[23]~72_combout\ : std_logic;
SIGNAL \UART_timer[24]~75\ : std_logic;
SIGNAL \UART_timer[24]~74_combout\ : std_logic;
SIGNAL \UART_timer[25]~76_combout\ : std_logic;
SIGNAL \UART_unit|UART_rx_enable~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[0]~10_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[3]~20_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[5]~24_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[7]~28_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_done~regout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_IDLE~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan4~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \always1~7_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Equal2~0_combout\ : std_logic;
SIGNAL \UART_done~0_combout\ : std_logic;
SIGNAL \UART_done~1_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_IDLE~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~2_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan4~1_combout\ : std_logic;
SIGNAL \VGA_unit|always0~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~3_combout\ : std_logic;
SIGNAL \VGA_unit|always0~4_combout\ : std_logic;
SIGNAL \UART_state~10_combout\ : std_logic;
SIGNAL \UART_state~11_combout\ : std_logic;
SIGNAL \UART_unit|Selector26~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector26~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~14_combout\ : std_logic;
SIGNAL \UART_unit|Selector3~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector0~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector7~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector7~1_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~0_combout\ : std_logic;
SIGNAL \UART_unit|new_line_count[1]~2_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector24~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector2~6_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[5]~feeder_combout\ : std_logic;
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
SIGNAL \CLOCK_50_I~combout\ : std_logic;
SIGNAL \CLOCK_50_I~clkctrl_outclk\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[0]~11\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[1]~17\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[2]~18_combout\ : std_logic;
SIGNAL \SWITCH_I[17]~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\ : std_logic;
SIGNAL \resetn~0_combout\ : std_logic;
SIGNAL \resetn~0clkctrl_outclk\ : std_logic;
SIGNAL \UART_RX_I~combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data_in~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector0~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector0~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~13_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[6]~27\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[7]~29\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~30_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~31\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[9]~32_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[2]~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|always0~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[1]~16_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|always0~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|always0~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[0]~4_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[0]~5_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[1]~3_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Add1~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[2]~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[2]~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[2]~6_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector2~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector2~3_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector3~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~15_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[2]~19\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[3]~21\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~22_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~23\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[5]~25\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[6]~26_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Equal2~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Equal2~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Empty~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector2~4_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector1~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~12_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector2~5_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector27~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~34_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector28~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector29~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[0]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[7]~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~0_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][0]~0_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[0]~16_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[3]~23\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[4]~24_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[4]~25\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[5]~27\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[6]~29\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[7]~30_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[7]~31\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[8]~32_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[5]~26_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~2_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[8]~33\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[9]~34_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[9]~35\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[10]~37\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[11]~38_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[11]~39\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[12]~41\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[13]~42_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[13]~43\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[14]~44_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[14]~45\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[15]~46_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[12]~40_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[10]~36_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~1_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~2_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~1_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~3_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[0]~17\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[1]~18_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[1]~19\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[2]~20_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[2]~21\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[3]~22_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[6]~28_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~3_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~4_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~5_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz~0_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz~regout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_buf~regout\ : std_logic;
SIGNAL \PB_unit|always3~0_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][0]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][1]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][2]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][3]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][4]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][5]~regout\ : std_logic;
SIGNAL \PB_unit|WideOr0~1_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][6]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][7]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][8]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][8]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][9]~regout\ : std_logic;
SIGNAL \PB_unit|WideOr0~0_combout\ : std_logic;
SIGNAL \PB_unit|WideOr0~2_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_START~feeder_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|state.S_FS_START~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.S_TOP_UART~regout\ : std_logic;
SIGNAL \UART_state~13_combout\ : std_logic;
SIGNAL \UART_state.S_ENABLE_UART_RX~regout\ : std_logic;
SIGNAL \UART_rx_enable~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector22~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector23~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[7]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|new_line_count[1]~0_combout\ : std_logic;
SIGNAL \UART_timer[0]~27\ : std_logic;
SIGNAL \UART_timer[1]~28_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~21_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ : std_logic;
SIGNAL \UART_unit|SRAM_we_n~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_we_n~1_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_we_n~regout\ : std_logic;
SIGNAL \always1~9_combout\ : std_logic;
SIGNAL \UART_timer[1]~29\ : std_logic;
SIGNAL \UART_timer[2]~31\ : std_logic;
SIGNAL \UART_timer[3]~33\ : std_logic;
SIGNAL \UART_timer[4]~34_combout\ : std_logic;
SIGNAL \UART_timer[4]~35\ : std_logic;
SIGNAL \UART_timer[5]~37\ : std_logic;
SIGNAL \UART_timer[6]~38_combout\ : std_logic;
SIGNAL \UART_timer[6]~39\ : std_logic;
SIGNAL \UART_timer[7]~41\ : std_logic;
SIGNAL \UART_timer[8]~42_combout\ : std_logic;
SIGNAL \UART_timer[8]~43\ : std_logic;
SIGNAL \UART_timer[9]~45\ : std_logic;
SIGNAL \UART_timer[10]~46_combout\ : std_logic;
SIGNAL \UART_timer[10]~47\ : std_logic;
SIGNAL \UART_timer[11]~48_combout\ : std_logic;
SIGNAL \UART_timer[11]~49\ : std_logic;
SIGNAL \UART_timer[12]~50_combout\ : std_logic;
SIGNAL \UART_timer[12]~51\ : std_logic;
SIGNAL \UART_timer[13]~52_combout\ : std_logic;
SIGNAL \UART_timer[13]~53\ : std_logic;
SIGNAL \UART_timer[14]~54_combout\ : std_logic;
SIGNAL \UART_timer[14]~55\ : std_logic;
SIGNAL \UART_timer[15]~56_combout\ : std_logic;
SIGNAL \UART_timer[15]~57\ : std_logic;
SIGNAL \UART_timer[16]~59\ : std_logic;
SIGNAL \UART_timer[17]~60_combout\ : std_logic;
SIGNAL \UART_timer[17]~61\ : std_logic;
SIGNAL \UART_timer[18]~62_combout\ : std_logic;
SIGNAL \UART_timer[16]~58_combout\ : std_logic;
SIGNAL \always1~5_combout\ : std_logic;
SIGNAL \UART_timer[18]~63\ : std_logic;
SIGNAL \UART_timer[19]~65\ : std_logic;
SIGNAL \UART_timer[20]~66_combout\ : std_logic;
SIGNAL \UART_timer[20]~67\ : std_logic;
SIGNAL \UART_timer[21]~68_combout\ : std_logic;
SIGNAL \UART_timer[21]~69\ : std_logic;
SIGNAL \UART_timer[22]~70_combout\ : std_logic;
SIGNAL \always1~6_combout\ : std_logic;
SIGNAL \UART_timer[9]~44_combout\ : std_logic;
SIGNAL \always1~2_combout\ : std_logic;
SIGNAL \UART_timer[5]~36_combout\ : std_logic;
SIGNAL \always1~1_combout\ : std_logic;
SIGNAL \always1~3_combout\ : std_logic;
SIGNAL \always1~4_combout\ : std_logic;
SIGNAL \always1~8_combout\ : std_logic;
SIGNAL \UART_unit|Add1~1\ : std_logic;
SIGNAL \UART_unit|Add1~2_combout\ : std_logic;
SIGNAL \UART_unit|Add1~52_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[16]~1_combout\ : std_logic;
SIGNAL \UART_unit|Add1~3\ : std_logic;
SIGNAL \UART_unit|Add1~4_combout\ : std_logic;
SIGNAL \UART_unit|Add1~51_combout\ : std_logic;
SIGNAL \UART_unit|Add1~5\ : std_logic;
SIGNAL \UART_unit|Add1~6_combout\ : std_logic;
SIGNAL \UART_unit|Add1~50_combout\ : std_logic;
SIGNAL \UART_unit|Add1~7\ : std_logic;
SIGNAL \UART_unit|Add1~8_combout\ : std_logic;
SIGNAL \UART_unit|Add1~10_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~3_combout\ : std_logic;
SIGNAL \UART_unit|Add1~9\ : std_logic;
SIGNAL \UART_unit|Add1~11_combout\ : std_logic;
SIGNAL \UART_unit|Add1~13_combout\ : std_logic;
SIGNAL \UART_unit|Add1~12\ : std_logic;
SIGNAL \UART_unit|Add1~15\ : std_logic;
SIGNAL \UART_unit|Add1~18\ : std_logic;
SIGNAL \UART_unit|Add1~21\ : std_logic;
SIGNAL \UART_unit|Add1~23_combout\ : std_logic;
SIGNAL \UART_unit|Add1~25_combout\ : std_logic;
SIGNAL \UART_unit|Add1~24\ : std_logic;
SIGNAL \UART_unit|Add1~26_combout\ : std_logic;
SIGNAL \UART_unit|Add1~28_combout\ : std_logic;
SIGNAL \UART_unit|Add1~27\ : std_logic;
SIGNAL \UART_unit|Add1~29_combout\ : std_logic;
SIGNAL \UART_unit|Add1~31_combout\ : std_logic;
SIGNAL \UART_unit|Add1~30\ : std_logic;
SIGNAL \UART_unit|Add1~32_combout\ : std_logic;
SIGNAL \UART_unit|Add1~34_combout\ : std_logic;
SIGNAL \UART_unit|Add1~33\ : std_logic;
SIGNAL \UART_unit|Add1~35_combout\ : std_logic;
SIGNAL \UART_unit|Add1~37_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_unit|Add1~17_combout\ : std_logic;
SIGNAL \UART_unit|Add1~19_combout\ : std_logic;
SIGNAL \UART_unit|Add1~14_combout\ : std_logic;
SIGNAL \UART_unit|Add1~16_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~4_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~5_combout\ : std_logic;
SIGNAL \UART_unit|Add1~53_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \UART_state.S_WAIT_UART_RX~regout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \UART_rx_initialize~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector25~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[4]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector26~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[3]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|new_line_count[1]~1_combout\ : std_logic;
SIGNAL \UART_unit|new_line_count[1]~3_combout\ : std_logic;
SIGNAL \UART_unit|new_line_count[0]~4_combout\ : std_logic;
SIGNAL \UART_unit|Add0~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector1~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector1~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~26_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\ : std_logic;
SIGNAL \UART_unit|Selector26~2_combout\ : std_logic;
SIGNAL \UART_unit|Selector26~3_combout\ : std_logic;
SIGNAL \UART_unit|UART_rx_unload_data~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Empty~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Empty~regout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~22_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~23_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_IDLE~regout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[16]~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector3~1_combout\ : std_logic;
SIGNAL \UART_unit|Selector3~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~25_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~24_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[1]~1_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \UART_state~12_combout\ : std_logic;
SIGNAL \UART_state.S_UART_IDLE~regout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_WE_N_O~regout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~2_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~3_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~4_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~5_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~7_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[6]~feeder_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~8_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[7]~feeder_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[8]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[15]~9_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[10]~feeder_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~6_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \unit0|WideOr6~0_combout\ : std_logic;
SIGNAL \unit0|WideOr5~0_combout\ : std_logic;
SIGNAL \unit0|WideOr4~0_combout\ : std_logic;
SIGNAL \unit0|WideOr3~0_combout\ : std_logic;
SIGNAL \unit0|WideOr2~0_combout\ : std_logic;
SIGNAL \unit0|WideOr1~0_combout\ : std_logic;
SIGNAL \unit0|WideOr0~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|SRAM_address[10]~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~20_combout\ : std_logic;
SIGNAL \UART_unit|Add1~22_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \unit1|WideOr6~0_combout\ : std_logic;
SIGNAL \unit1|WideOr5~0_combout\ : std_logic;
SIGNAL \unit1|WideOr4~0_combout\ : std_logic;
SIGNAL \unit1|WideOr3~0_combout\ : std_logic;
SIGNAL \unit1|WideOr2~0_combout\ : std_logic;
SIGNAL \unit1|WideOr1~0_combout\ : std_logic;
SIGNAL \unit1|WideOr0~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.S_TOP_M2~regout\ : std_logic;
SIGNAL \UART_unit|Add1~36\ : std_logic;
SIGNAL \UART_unit|Add1~39\ : std_logic;
SIGNAL \UART_unit|Add1~41_combout\ : std_logic;
SIGNAL \UART_unit|Add1~43_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~38_combout\ : std_logic;
SIGNAL \UART_unit|Add1~40_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \unit2|WideOr6~0_combout\ : std_logic;
SIGNAL \unit2|WideOr5~0_combout\ : std_logic;
SIGNAL \unit2|WideOr4~0_combout\ : std_logic;
SIGNAL \unit2|WideOr3~0_combout\ : std_logic;
SIGNAL \unit2|WideOr2~0_combout\ : std_logic;
SIGNAL \unit2|WideOr1~0_combout\ : std_logic;
SIGNAL \unit2|WideOr0~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~42\ : std_logic;
SIGNAL \UART_unit|Add1~44_combout\ : std_logic;
SIGNAL \UART_unit|Add1~49_combout\ : std_logic;
SIGNAL \UART_unit|Add1~45\ : std_logic;
SIGNAL \UART_unit|Add1~46_combout\ : std_logic;
SIGNAL \UART_unit|Add1~48_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \unit3|Decoder0~0_combout\ : std_logic;
SIGNAL \unit3|Decoder0~1_combout\ : std_logic;
SIGNAL \unit3|Decoder0~2_combout\ : std_logic;
SIGNAL \unit3|Decoder0~3_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
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
SIGNAL \VGA_unit|VGA_unit|H_Cont[0]~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|always0~1_combout\ : std_logic;
SIGNAL \VGA_unit|always0~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_BLANK~combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~4_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~regout\ : std_logic;
SIGNAL \SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|data_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_unit|new_line_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA_unit|VGA_blue\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|RX_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|H_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|V_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PUSH_BUTTON_I~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_G\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_unit|SRAM_write_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|clock_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|data_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL UART_timer : std_logic_vector(25 DOWNTO 0);
SIGNAL \M2_unit|FS_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PB_unit|push_button_status_buf\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PB_unit|push_button_status\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PB_unit|clock_1kHz_div_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_write_data_buf\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_read_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_ADDRESS_O\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_state.S_TOP_UART~regout\ : std_logic;
SIGNAL \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ : std_logic;
SIGNAL \unit7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \unit3|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \unit3|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \unit2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \M2_unit|FS_unit|ALT_INV_state.S_FS_START~regout\ : std_logic;
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
\ALT_INV_state.S_TOP_UART~regout\ <= NOT \state.S_TOP_UART~regout\;
\SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\ <= NOT \SRAM_unit|SRAM_WE_N_O~regout\;
\SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ <= NOT \SRAM_unit|SRAM_CE_N_O~regout\;
\unit7|ALT_INV_WideOr0~0_combout\ <= NOT \unit7|WideOr0~0_combout\;
\unit6|ALT_INV_WideOr0~0_combout\ <= NOT \unit6|WideOr0~0_combout\;
\unit5|ALT_INV_WideOr0~0_combout\ <= NOT \unit5|WideOr0~0_combout\;
\unit4|ALT_INV_WideOr0~0_combout\ <= NOT \unit4|WideOr0~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\unit3|ALT_INV_Decoder0~1_combout\ <= NOT \unit3|Decoder0~1_combout\;
\unit3|ALT_INV_Decoder0~0_combout\ <= NOT \unit3|Decoder0~0_combout\;
\unit2|ALT_INV_WideOr0~0_combout\ <= NOT \unit2|WideOr0~0_combout\;
\unit1|ALT_INV_WideOr0~0_combout\ <= NOT \unit1|WideOr0~0_combout\;
\unit0|ALT_INV_WideOr0~0_combout\ <= NOT \unit0|WideOr0~0_combout\;
\M2_unit|FS_unit|ALT_INV_state.S_FS_START~regout\ <= NOT \M2_unit|FS_unit|state.S_FS_START~regout\;
\ALT_INV_resetn~0_combout\ <= NOT \resetn~0_combout\;

-- Location: LCCOMB_X37_Y34_N14
\UART_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~0_combout\ = \UART_unit|SRAM_address\(0) $ (VCC)
-- \UART_unit|Add1~1\ = CARRY(\UART_unit|SRAM_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(0),
	datad => VCC,
	combout => \UART_unit|Add1~0_combout\,
	cout => \UART_unit|Add1~1\);

-- Location: LCFF_X50_Y33_N21
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

-- Location: LCFF_X50_Y33_N11
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

-- Location: LCFF_X35_Y33_N7
\UART_timer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[0]~26_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(0));

-- Location: LCFF_X35_Y33_N11
\UART_timer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[2]~30_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(2));

-- Location: LCFF_X35_Y33_N13
\UART_timer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[3]~32_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(3));

-- Location: LCFF_X35_Y33_N21
\UART_timer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[7]~40_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(7));

-- Location: LCFF_X35_Y32_N13
\UART_timer[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[19]~64_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(19));

-- Location: LCFF_X35_Y32_N21
\UART_timer[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[23]~72_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(23));

-- Location: LCFF_X35_Y32_N25
\UART_timer[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[25]~76_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(25));

-- Location: LCFF_X35_Y32_N23
\UART_timer[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[24]~74_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(24));

-- Location: LCFF_X43_Y30_N11
\UART_unit|UART_RX|clock_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[0]~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(0));

-- Location: LCFF_X43_Y30_N25
\UART_unit|UART_RX|clock_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[7]~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(7));

-- Location: LCFF_X43_Y30_N17
\UART_unit|UART_RX|clock_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[3]~20_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(3));

-- Location: LCFF_X43_Y30_N21
\UART_unit|UART_RX|clock_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[5]~24_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(5));

-- Location: LCCOMB_X50_Y33_N10
\VGA_unit|VGA_unit|V_Cont[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[3]~16_combout\ = (\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont[2]~15\)) # (!\VGA_unit|VGA_unit|V_Cont\(3) & ((\VGA_unit|VGA_unit|V_Cont[2]~15\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[3]~17\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[2]~15\) # (!\VGA_unit|VGA_unit|V_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[2]~15\,
	combout => \VGA_unit|VGA_unit|V_Cont[3]~16_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[3]~17\);

-- Location: LCCOMB_X50_Y33_N20
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

-- Location: LCCOMB_X49_Y33_N10
\VGA_unit|VGA_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~0_combout\ = \VGA_unit|VGA_unit|V_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|Add1~1\ = CARRY(\VGA_unit|VGA_unit|V_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|Add1~0_combout\,
	cout => \VGA_unit|VGA_unit|Add1~1\);

-- Location: LCCOMB_X49_Y33_N12
\VGA_unit|VGA_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~2_combout\ = (\VGA_unit|VGA_unit|V_Cont\(1) & (\VGA_unit|VGA_unit|Add1~1\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(1) & (!\VGA_unit|VGA_unit|Add1~1\))
-- \VGA_unit|VGA_unit|Add1~3\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(1) & !\VGA_unit|VGA_unit|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~1\,
	combout => \VGA_unit|VGA_unit|Add1~2_combout\,
	cout => \VGA_unit|VGA_unit|Add1~3\);

-- Location: LCCOMB_X49_Y33_N14
\VGA_unit|VGA_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~4_combout\ = (\VGA_unit|VGA_unit|V_Cont\(2) & ((GND) # (!\VGA_unit|VGA_unit|Add1~3\))) # (!\VGA_unit|VGA_unit|V_Cont\(2) & (\VGA_unit|VGA_unit|Add1~3\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~5\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(2)) # (!\VGA_unit|VGA_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~3\,
	combout => \VGA_unit|VGA_unit|Add1~4_combout\,
	cout => \VGA_unit|VGA_unit|Add1~5\);

-- Location: LCCOMB_X49_Y33_N16
\VGA_unit|VGA_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~6_combout\ = (\VGA_unit|VGA_unit|V_Cont\(3) & (\VGA_unit|VGA_unit|Add1~5\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|Add1~5\))
-- \VGA_unit|VGA_unit|Add1~7\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(3) & !\VGA_unit|VGA_unit|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~5\,
	combout => \VGA_unit|VGA_unit|Add1~6_combout\,
	cout => \VGA_unit|VGA_unit|Add1~7\);

-- Location: LCCOMB_X49_Y33_N18
\VGA_unit|VGA_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~8_combout\ = (\VGA_unit|VGA_unit|V_Cont\(4) & ((GND) # (!\VGA_unit|VGA_unit|Add1~7\))) # (!\VGA_unit|VGA_unit|V_Cont\(4) & (\VGA_unit|VGA_unit|Add1~7\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~9\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(4)) # (!\VGA_unit|VGA_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~7\,
	combout => \VGA_unit|VGA_unit|Add1~8_combout\,
	cout => \VGA_unit|VGA_unit|Add1~9\);

-- Location: LCCOMB_X49_Y33_N20
\VGA_unit|VGA_unit|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~10_combout\ = (\VGA_unit|VGA_unit|V_Cont\(5) & (!\VGA_unit|VGA_unit|Add1~9\)) # (!\VGA_unit|VGA_unit|V_Cont\(5) & ((\VGA_unit|VGA_unit|Add1~9\) # (GND)))
-- \VGA_unit|VGA_unit|Add1~11\ = CARRY((!\VGA_unit|VGA_unit|Add1~9\) # (!\VGA_unit|VGA_unit|V_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~9\,
	combout => \VGA_unit|VGA_unit|Add1~10_combout\,
	cout => \VGA_unit|VGA_unit|Add1~11\);

-- Location: LCCOMB_X49_Y33_N22
\VGA_unit|VGA_unit|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~12_combout\ = (\VGA_unit|VGA_unit|V_Cont\(6) & ((GND) # (!\VGA_unit|VGA_unit|Add1~11\))) # (!\VGA_unit|VGA_unit|V_Cont\(6) & (\VGA_unit|VGA_unit|Add1~11\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~13\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(6)) # (!\VGA_unit|VGA_unit|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~11\,
	combout => \VGA_unit|VGA_unit|Add1~12_combout\,
	cout => \VGA_unit|VGA_unit|Add1~13\);

-- Location: LCCOMB_X49_Y33_N24
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

-- Location: LCCOMB_X49_Y33_N26
\VGA_unit|VGA_unit|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~16_combout\ = (\VGA_unit|VGA_unit|V_Cont\(8) & ((GND) # (!\VGA_unit|VGA_unit|Add1~15\))) # (!\VGA_unit|VGA_unit|V_Cont\(8) & (\VGA_unit|VGA_unit|Add1~15\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~17\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(8)) # (!\VGA_unit|VGA_unit|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~15\,
	combout => \VGA_unit|VGA_unit|Add1~16_combout\,
	cout => \VGA_unit|VGA_unit|Add1~17\);

-- Location: LCCOMB_X49_Y33_N28
\VGA_unit|VGA_unit|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~18_combout\ = \VGA_unit|VGA_unit|V_Cont\(9) $ (!\VGA_unit|VGA_unit|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	cin => \VGA_unit|VGA_unit|Add1~17\,
	combout => \VGA_unit|VGA_unit|Add1~18_combout\);

-- Location: LCCOMB_X35_Y33_N6
\UART_timer[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[0]~26_combout\ = UART_timer(0) $ (VCC)
-- \UART_timer[0]~27\ = CARRY(UART_timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(0),
	datad => VCC,
	combout => \UART_timer[0]~26_combout\,
	cout => \UART_timer[0]~27\);

-- Location: LCCOMB_X35_Y33_N10
\UART_timer[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[2]~30_combout\ = (UART_timer(2) & (\UART_timer[1]~29\ $ (GND))) # (!UART_timer(2) & (!\UART_timer[1]~29\ & VCC))
-- \UART_timer[2]~31\ = CARRY((UART_timer(2) & !\UART_timer[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(2),
	datad => VCC,
	cin => \UART_timer[1]~29\,
	combout => \UART_timer[2]~30_combout\,
	cout => \UART_timer[2]~31\);

-- Location: LCCOMB_X35_Y33_N12
\UART_timer[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[3]~32_combout\ = (UART_timer(3) & (!\UART_timer[2]~31\)) # (!UART_timer(3) & ((\UART_timer[2]~31\) # (GND)))
-- \UART_timer[3]~33\ = CARRY((!\UART_timer[2]~31\) # (!UART_timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(3),
	datad => VCC,
	cin => \UART_timer[2]~31\,
	combout => \UART_timer[3]~32_combout\,
	cout => \UART_timer[3]~33\);

-- Location: LCCOMB_X35_Y33_N20
\UART_timer[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[7]~40_combout\ = (UART_timer(7) & (!\UART_timer[6]~39\)) # (!UART_timer(7) & ((\UART_timer[6]~39\) # (GND)))
-- \UART_timer[7]~41\ = CARRY((!\UART_timer[6]~39\) # (!UART_timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(7),
	datad => VCC,
	cin => \UART_timer[6]~39\,
	combout => \UART_timer[7]~40_combout\,
	cout => \UART_timer[7]~41\);

-- Location: LCCOMB_X35_Y32_N12
\UART_timer[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[19]~64_combout\ = (UART_timer(19) & (!\UART_timer[18]~63\)) # (!UART_timer(19) & ((\UART_timer[18]~63\) # (GND)))
-- \UART_timer[19]~65\ = CARRY((!\UART_timer[18]~63\) # (!UART_timer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(19),
	datad => VCC,
	cin => \UART_timer[18]~63\,
	combout => \UART_timer[19]~64_combout\,
	cout => \UART_timer[19]~65\);

-- Location: LCCOMB_X35_Y32_N18
\UART_timer[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[22]~70_combout\ = (UART_timer(22) & (\UART_timer[21]~69\ $ (GND))) # (!UART_timer(22) & (!\UART_timer[21]~69\ & VCC))
-- \UART_timer[22]~71\ = CARRY((UART_timer(22) & !\UART_timer[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(22),
	datad => VCC,
	cin => \UART_timer[21]~69\,
	combout => \UART_timer[22]~70_combout\,
	cout => \UART_timer[22]~71\);

-- Location: LCCOMB_X35_Y32_N20
\UART_timer[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[23]~72_combout\ = (UART_timer(23) & (!\UART_timer[22]~71\)) # (!UART_timer(23) & ((\UART_timer[22]~71\) # (GND)))
-- \UART_timer[23]~73\ = CARRY((!\UART_timer[22]~71\) # (!UART_timer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(23),
	datad => VCC,
	cin => \UART_timer[22]~71\,
	combout => \UART_timer[23]~72_combout\,
	cout => \UART_timer[23]~73\);

-- Location: LCCOMB_X35_Y32_N22
\UART_timer[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[24]~74_combout\ = (UART_timer(24) & (\UART_timer[23]~73\ $ (GND))) # (!UART_timer(24) & (!\UART_timer[23]~73\ & VCC))
-- \UART_timer[24]~75\ = CARRY((UART_timer(24) & !\UART_timer[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(24),
	datad => VCC,
	cin => \UART_timer[23]~73\,
	combout => \UART_timer[24]~74_combout\,
	cout => \UART_timer[24]~75\);

-- Location: LCCOMB_X35_Y32_N24
\UART_timer[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[25]~76_combout\ = UART_timer(25) $ (\UART_timer[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(25),
	cin => \UART_timer[24]~75\,
	combout => \UART_timer[25]~76_combout\);

-- Location: LCFF_X35_Y34_N1
\UART_unit|UART_rx_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector7~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_rx_initialize~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_rx_enable~regout\);

-- Location: LCCOMB_X43_Y30_N10
\UART_unit|UART_RX|clock_count[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[0]~10_combout\ = \UART_unit|UART_RX|clock_count\(0) $ (VCC)
-- \UART_unit|UART_RX|clock_count[0]~11\ = CARRY(\UART_unit|UART_RX|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(0),
	datad => VCC,
	combout => \UART_unit|UART_RX|clock_count[0]~10_combout\,
	cout => \UART_unit|UART_RX|clock_count[0]~11\);

-- Location: LCCOMB_X43_Y30_N16
\UART_unit|UART_RX|clock_count[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[3]~20_combout\ = (\UART_unit|UART_RX|clock_count\(3) & (!\UART_unit|UART_RX|clock_count[2]~19\)) # (!\UART_unit|UART_RX|clock_count\(3) & ((\UART_unit|UART_RX|clock_count[2]~19\) # (GND)))
-- \UART_unit|UART_RX|clock_count[3]~21\ = CARRY((!\UART_unit|UART_RX|clock_count[2]~19\) # (!\UART_unit|UART_RX|clock_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(3),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[2]~19\,
	combout => \UART_unit|UART_RX|clock_count[3]~20_combout\,
	cout => \UART_unit|UART_RX|clock_count[3]~21\);

-- Location: LCCOMB_X43_Y30_N20
\UART_unit|UART_RX|clock_count[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[5]~24_combout\ = (\UART_unit|UART_RX|clock_count\(5) & (!\UART_unit|UART_RX|clock_count[4]~23\)) # (!\UART_unit|UART_RX|clock_count\(5) & ((\UART_unit|UART_RX|clock_count[4]~23\) # (GND)))
-- \UART_unit|UART_RX|clock_count[5]~25\ = CARRY((!\UART_unit|UART_RX|clock_count[4]~23\) # (!\UART_unit|UART_RX|clock_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(5),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[4]~23\,
	combout => \UART_unit|UART_RX|clock_count[5]~24_combout\,
	cout => \UART_unit|UART_RX|clock_count[5]~25\);

-- Location: LCCOMB_X43_Y30_N24
\UART_unit|UART_RX|clock_count[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[7]~28_combout\ = (\UART_unit|UART_RX|clock_count\(7) & (!\UART_unit|UART_RX|clock_count[6]~27\)) # (!\UART_unit|UART_RX|clock_count\(7) & ((\UART_unit|UART_RX|clock_count[6]~27\) # (GND)))
-- \UART_unit|UART_RX|clock_count[7]~29\ = CARRY((!\UART_unit|UART_RX|clock_count[6]~27\) # (!\UART_unit|UART_RX|clock_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(7),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[6]~27\,
	combout => \UART_unit|UART_RX|clock_count[7]~28_combout\,
	cout => \UART_unit|UART_RX|clock_count[7]~29\);

-- Location: LCCOMB_X36_Y34_N12
\UART_unit|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~0_combout\ = (((!\UART_unit|SRAM_address\(17)) # (!\UART_unit|SRAM_address\(15))) # (!\UART_unit|SRAM_address\(14))) # (!\UART_unit|SRAM_address\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(16),
	datab => \UART_unit|SRAM_address\(14),
	datac => \UART_unit|SRAM_address\(15),
	datad => \UART_unit|SRAM_address\(17),
	combout => \UART_unit|LessThan1~0_combout\);

-- Location: LCFF_X35_Y34_N15
UART_done : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_done~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_done~regout\);

-- Location: LCFF_X36_Y34_N17
\M2_unit|FS_unit|state.S_FS_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|state.S_FS_IDLE~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_IDLE~regout\);

-- Location: LCFF_X50_Y34_N11
\VGA_unit|VGA_blue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|always0~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(0));

-- Location: LCCOMB_X50_Y34_N12
\VGA_unit|VGA_unit|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan4~0_combout\ = ((!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont\(6)))) # (!\VGA_unit|VGA_unit|H_Cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|LessThan4~0_combout\);

-- Location: LCCOMB_X50_Y33_N24
\VGA_unit|VGA_unit|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~1_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont\(1) & (!\VGA_unit|VGA_unit|V_Cont\(2) & !\VGA_unit|VGA_unit|V_Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datab => \VGA_unit|VGA_unit|V_Cont\(1),
	datac => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => \VGA_unit|VGA_unit|V_Cont\(4),
	combout => \VGA_unit|VGA_unit|LessThan6~1_combout\);

-- Location: LCCOMB_X35_Y34_N6
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\UART_state.S_UART_IDLE~regout\ & (((!\PB_unit|push_button_status_buf\(0) & \PB_unit|push_button_status\(0))) # (!\UART_RX_I~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|push_button_status_buf\(0),
	datab => \PB_unit|push_button_status\(0),
	datac => \UART_state.S_UART_IDLE~regout\,
	datad => \UART_RX_I~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X35_Y33_N0
\always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (UART_timer(2) & (UART_timer(0) & (UART_timer(1) & UART_timer(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(2),
	datab => UART_timer(0),
	datac => UART_timer(1),
	datad => UART_timer(3),
	combout => \always1~0_combout\);

-- Location: LCCOMB_X36_Y32_N10
\always1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~7_combout\ = (UART_timer(25) & !UART_timer(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(25),
	datad => UART_timer(24),
	combout => \always1~7_combout\);

-- Location: LCCOMB_X36_Y34_N18
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\UART_unit|SRAM_address\(16) & (!\UART_unit|SRAM_address\(14) & (!\UART_unit|SRAM_address\(15) & !\UART_unit|SRAM_address\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(16),
	datab => \UART_unit|SRAM_address\(14),
	datac => \UART_unit|SRAM_address\(15),
	datad => \UART_unit|SRAM_address\(17),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X37_Y35_N26
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\UART_unit|SRAM_address\(11) & (!\UART_unit|SRAM_address\(12) & (!\UART_unit|SRAM_address\(13) & !\UART_unit|SRAM_address\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(11),
	datab => \UART_unit|SRAM_address\(12),
	datac => \UART_unit|SRAM_address\(13),
	datad => \UART_unit|SRAM_address\(10),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X37_Y34_N8
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\UART_unit|SRAM_address\(8) & (!\UART_unit|SRAM_address\(7) & (!\UART_unit|SRAM_address\(6) & !\UART_unit|SRAM_address\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datab => \UART_unit|SRAM_address\(7),
	datac => \UART_unit|SRAM_address\(6),
	datad => \UART_unit|SRAM_address\(9),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X37_Y34_N10
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\UART_unit|SRAM_address\(5) & (!\UART_unit|SRAM_address\(4) & (!\UART_unit|SRAM_address\(2) & !\UART_unit|SRAM_address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(5),
	datab => \UART_unit|SRAM_address\(4),
	datac => \UART_unit|SRAM_address\(2),
	datad => \UART_unit|SRAM_address\(3),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X37_Y34_N12
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X43_Y30_N0
\UART_unit|UART_RX|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Equal2~0_combout\ = (\UART_unit|UART_RX|clock_count\(7) & (\UART_unit|UART_RX|clock_count\(4) & (!\UART_unit|UART_RX|clock_count\(3) & \UART_unit|UART_RX|clock_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(7),
	datab => \UART_unit|UART_RX|clock_count\(4),
	datac => \UART_unit|UART_RX|clock_count\(3),
	datad => \UART_unit|UART_RX|clock_count\(0),
	combout => \UART_unit|UART_RX|Equal2~0_combout\);

-- Location: LCCOMB_X35_Y34_N22
\UART_done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_done~0_combout\ = (\UART_state.S_WAIT_UART_RX~regout\ & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_state.S_WAIT_UART_RX~regout\,
	datad => \state.S_TOP_UART~regout\,
	combout => \UART_done~0_combout\);

-- Location: LCCOMB_X35_Y34_N14
\UART_done~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_done~1_combout\ = (\UART_done~regout\) # ((!\Equal1~5_combout\ & (\always1~8_combout\ & \UART_done~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \always1~8_combout\,
	datac => \UART_done~regout\,
	datad => \UART_done~0_combout\,
	combout => \UART_done~1_combout\);

-- Location: LCCOMB_X36_Y34_N16
\M2_unit|FS_unit|state.S_FS_IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|state.S_FS_IDLE~0_combout\ = (\M2_unit|FS_unit|state.S_FS_IDLE~regout\) # (!\M2_unit|FS_unit|state.S_FS_START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_unit|FS_unit|state.S_FS_IDLE~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_START~regout\,
	combout => \M2_unit|FS_unit|state.S_FS_IDLE~0_combout\);

-- Location: LCCOMB_X50_Y33_N28
\VGA_unit|VGA_unit|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~1_combout\ = ((!\VGA_unit|VGA_unit|V_Cont\(2) & ((!\VGA_unit|VGA_unit|V_Cont\(1)) # (!\VGA_unit|VGA_unit|V_Cont\(0))))) # (!\VGA_unit|VGA_unit|V_Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datab => \VGA_unit|VGA_unit|V_Cont\(2),
	datac => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => \VGA_unit|VGA_unit|V_Cont\(1),
	combout => \VGA_unit|VGA_unit|LessThan2~1_combout\);

-- Location: LCCOMB_X49_Y33_N8
\VGA_unit|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~0_combout\ = (\VGA_unit|VGA_unit|Add1~2_combout\ & (!\VGA_unit|VGA_unit|Add1~18_combout\ & (!\VGA_unit|VGA_unit|Add1~10_combout\ & \VGA_unit|VGA_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~2_combout\,
	datab => \VGA_unit|VGA_unit|Add1~18_combout\,
	datac => \VGA_unit|VGA_unit|Add1~10_combout\,
	datad => \VGA_unit|VGA_unit|Add1~0_combout\,
	combout => \VGA_unit|Equal4~0_combout\);

-- Location: LCCOMB_X49_Y33_N2
\VGA_unit|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~1_combout\ = (\VGA_unit|VGA_unit|Add1~6_combout\ & (\VGA_unit|VGA_unit|Add1~12_combout\ & (\VGA_unit|VGA_unit|Add1~4_combout\ & \VGA_unit|VGA_unit|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~6_combout\,
	datab => \VGA_unit|VGA_unit|Add1~12_combout\,
	datac => \VGA_unit|VGA_unit|Add1~4_combout\,
	datad => \VGA_unit|VGA_unit|Add1~8_combout\,
	combout => \VGA_unit|Equal4~1_combout\);

-- Location: LCCOMB_X49_Y33_N4
\VGA_unit|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~2_combout\ = (\VGA_unit|VGA_unit|Add1~14_combout\ & (\VGA_unit|Equal4~1_combout\ & (\VGA_unit|Equal4~0_combout\ & \VGA_unit|VGA_unit|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~14_combout\,
	datab => \VGA_unit|Equal4~1_combout\,
	datac => \VGA_unit|Equal4~0_combout\,
	datad => \VGA_unit|VGA_unit|Add1~16_combout\,
	combout => \VGA_unit|Equal4~2_combout\);

-- Location: LCCOMB_X49_Y33_N30
\VGA_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~0_combout\ = (!\VGA_unit|VGA_unit|Add1~2_combout\ & (!\VGA_unit|VGA_unit|Add1~18_combout\ & (!\VGA_unit|VGA_unit|Add1~10_combout\ & !\VGA_unit|VGA_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~2_combout\,
	datab => \VGA_unit|VGA_unit|Add1~18_combout\,
	datac => \VGA_unit|VGA_unit|Add1~10_combout\,
	datad => \VGA_unit|VGA_unit|Add1~0_combout\,
	combout => \VGA_unit|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y33_N0
\VGA_unit|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~1_combout\ = (!\VGA_unit|VGA_unit|Add1~6_combout\ & (!\VGA_unit|VGA_unit|Add1~12_combout\ & (!\VGA_unit|VGA_unit|Add1~4_combout\ & !\VGA_unit|VGA_unit|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~6_combout\,
	datab => \VGA_unit|VGA_unit|Add1~12_combout\,
	datac => \VGA_unit|VGA_unit|Add1~4_combout\,
	datad => \VGA_unit|VGA_unit|Add1~8_combout\,
	combout => \VGA_unit|Equal3~1_combout\);

-- Location: LCCOMB_X49_Y33_N6
\VGA_unit|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~2_combout\ = (\VGA_unit|Equal3~1_combout\ & (!\VGA_unit|VGA_unit|Add1~16_combout\ & (!\VGA_unit|VGA_unit|Add1~14_combout\ & \VGA_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal3~1_combout\,
	datab => \VGA_unit|VGA_unit|Add1~16_combout\,
	datac => \VGA_unit|VGA_unit|Add1~14_combout\,
	datad => \VGA_unit|Equal3~0_combout\,
	combout => \VGA_unit|Equal3~2_combout\);

-- Location: LCCOMB_X50_Y34_N30
\VGA_unit|VGA_unit|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan4~1_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(6) & !\VGA_unit|VGA_unit|H_Cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(6),
	datad => \VGA_unit|VGA_unit|H_Cont\(5),
	combout => \VGA_unit|VGA_unit|LessThan4~1_combout\);

-- Location: LCCOMB_X50_Y34_N8
\VGA_unit|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~2_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(4) & (!\VGA_unit|VGA_unit|H_Cont\(7) & (\VGA_unit|always0~0_combout\ & \VGA_unit|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(4),
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|always0~0_combout\,
	datad => \VGA_unit|always0~1_combout\,
	combout => \VGA_unit|always0~2_combout\);

-- Location: LCCOMB_X50_Y34_N2
\VGA_unit|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~3_combout\ = (\VGA_unit|always0~2_combout\) # ((\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ & (\VGA_unit|VGA_unit|H_Cont\(7) & \VGA_unit|VGA_unit|H_Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|always0~2_combout\,
	datad => \VGA_unit|VGA_unit|H_Cont\(4),
	combout => \VGA_unit|always0~3_combout\);

-- Location: LCCOMB_X50_Y34_N10
\VGA_unit|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~4_combout\ = (\VGA_unit|Equal4~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # ((\VGA_unit|VGA_unit|LessThan4~1_combout\ & \VGA_unit|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal4~2_combout\,
	datab => \VGA_unit|VGA_unit|LessThan4~1_combout\,
	datac => \VGA_unit|Equal3~2_combout\,
	datad => \VGA_unit|always0~3_combout\,
	combout => \VGA_unit|always0~4_combout\);

-- Location: LCCOMB_X34_Y34_N18
\UART_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_state~10_combout\ = (!\UART_state.S_UART_IDLE~regout\ & (\UART_RX_I~combout\ & ((\PB_unit|push_button_status_buf\(0)) # (!\PB_unit|push_button_status\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|push_button_status\(0),
	datab => \UART_state.S_UART_IDLE~regout\,
	datac => \PB_unit|push_button_status_buf\(0),
	datad => \UART_RX_I~combout\,
	combout => \UART_state~10_combout\);

-- Location: LCCOMB_X35_Y34_N10
\UART_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_state~11_combout\ = (\UART_state~10_combout\) # (!\state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_state~10_combout\,
	datad => \state.S_TOP_UART~regout\,
	combout => \UART_state~11_combout\);

-- Location: LCCOMB_X38_Y30_N6
\UART_unit|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~0_combout\ = (\UART_unit|UART_rx_unload_data~regout\) # (\UART_unit|UART_RX|Empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_rx_unload_data~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector26~0_combout\);

-- Location: LCCOMB_X38_Y30_N16
\UART_unit|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~1_combout\ = (\UART_unit|Selector26~0_combout\ & ((\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\) # ((\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\) # 
-- (\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Selector26~0_combout\,
	datab => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\,
	combout => \UART_unit|Selector26~1_combout\);

-- Location: LCCOMB_X41_Y30_N12
\UART_unit|UART_RX|clock_count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[4]~14_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\ & (((\UART_unit|UART_RX|RX_data_in~regout\ & \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\)))) # (!\UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\ & 
-- (((\UART_unit|UART_RX|RX_data_in~regout\)) # (!\UART_unit|UART_rx_enable~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_rx_enable~regout\,
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\,
	datac => \UART_unit|UART_RX|RX_data_in~regout\,
	datad => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	combout => \UART_unit|UART_RX|clock_count[4]~14_combout\);

-- Location: LCFF_X36_Y30_N3
\UART_unit|SRAM_write_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|SRAM_write_data~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(5));

-- Location: LCCOMB_X38_Y30_N24
\UART_unit|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector3~0_combout\ = (\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\ & (\UART_unit|new_line_count\(0) & (\UART_unit|new_line_count\(1) & !\UART_unit|UART_RX|Empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\,
	datab => \UART_unit|new_line_count\(0),
	datac => \UART_unit|new_line_count\(1),
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector3~0_combout\);

-- Location: LCCOMB_X41_Y30_N16
\UART_unit|UART_RX|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector0~0_combout\ = (!\UART_unit|UART_RX|Selector2~3_combout\ & (((!\UART_unit|UART_RX|RX_data_in~regout\ & !\UART_unit|UART_RX|always0~2_combout\)) # (!\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data_in~regout\,
	datab => \UART_unit|UART_RX|always0~2_combout\,
	datac => \UART_unit|UART_RX|Selector2~3_combout\,
	datad => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	combout => \UART_unit|UART_RX|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y34_N30
\UART_unit|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector7~0_combout\ = (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & (!\UART_unit|LessThan1~5_combout\ & !\UART_unit|UART_RX|Empty~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector7~0_combout\);

-- Location: LCCOMB_X35_Y34_N0
\UART_unit|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector7~1_combout\ = (\UART_unit|UART_SRAM_state.S_US_IDLE~regout\ & (((\UART_unit|UART_rx_enable~regout\ & !\UART_unit|Selector7~0_combout\)))) # (!\UART_unit|UART_SRAM_state.S_US_IDLE~regout\ & ((\UART_rx_enable~regout\) # 
-- ((\UART_unit|UART_rx_enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_enable~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\,
	datac => \UART_unit|UART_rx_enable~regout\,
	datad => \UART_unit|Selector7~0_combout\,
	combout => \UART_unit|Selector7~1_combout\);

-- Location: LCCOMB_X21_Y11_N20
\PB_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~0_combout\ = (!\PB_unit|clock_1kHz_div_count\(8) & (!\PB_unit|clock_1kHz_div_count\(14) & !\PB_unit|clock_1kHz_div_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(8),
	datac => \PB_unit|clock_1kHz_div_count\(14),
	datad => \PB_unit|clock_1kHz_div_count\(13),
	combout => \PB_unit|Equal0~0_combout\);

-- Location: LCFF_X40_Y30_N17
\UART_unit|UART_RX|RX_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[5]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(5));

-- Location: LCCOMB_X36_Y30_N10
\UART_unit|new_line_count[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|new_line_count[1]~2_combout\ = (((\UART_unit|UART_RX|RX_data\(0)) # (!\UART_unit|UART_RX|RX_data\(1))) # (!\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\)) # (!\UART_unit|UART_RX|Empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\,
	datac => \UART_unit|UART_RX|RX_data\(1),
	datad => \UART_unit|UART_RX|RX_data\(0),
	combout => \UART_unit|new_line_count[1]~2_combout\);

-- Location: LCCOMB_X21_Y11_N24
\PB_unit|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~0_combout\ = (!\PB_unit|clock_1kHz_div_count\(15) & ((!\PB_unit|clock_1kHz_div_count\(13)) # (!\PB_unit|clock_1kHz_div_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(14),
	datac => \PB_unit|clock_1kHz_div_count\(15),
	datad => \PB_unit|clock_1kHz_div_count\(13),
	combout => \PB_unit|LessThan0~0_combout\);

-- Location: LCFF_X40_Y30_N7
\UART_unit|UART_RX|data_buffer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector24~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(5));

-- Location: LCCOMB_X40_Y30_N6
\UART_unit|UART_RX|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector24~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|data_buffer\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datac => \UART_unit|UART_RX|data_buffer\(6),
	combout => \UART_unit|UART_RX|Selector24~0_combout\);

-- Location: LCCOMB_X41_Y30_N6
\UART_unit|UART_RX|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector2~6_combout\ = (\UART_unit|UART_RX|RX_data_in~regout\ & (((\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\)))) # (!\UART_unit|UART_RX|RX_data_in~regout\ & (\UART_unit|UART_rx_enable~regout\ & 
-- (!\UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_rx_enable~regout\,
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\,
	datac => \UART_unit|UART_RX|RX_data_in~regout\,
	datad => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	combout => \UART_unit|UART_RX|Selector2~6_combout\);

-- Location: LCCOMB_X40_Y30_N16
\UART_unit|UART_RX|RX_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[5]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(5),
	combout => \UART_unit|UART_RX|RX_data[5]~feeder_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(0),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(0),
	combout => \SRAM_DATA_IO[0]~0\);

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(1),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(1),
	combout => \SRAM_DATA_IO[1]~1\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(2),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(2),
	combout => \SRAM_DATA_IO[2]~2\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(3),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(3),
	combout => \SRAM_DATA_IO[3]~3\);

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(4),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(4),
	combout => \SRAM_DATA_IO[4]~4\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(5),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(5),
	combout => \SRAM_DATA_IO[5]~5\);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(6),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(6),
	combout => \SRAM_DATA_IO[6]~6\);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(7),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(7),
	combout => \SRAM_DATA_IO[7]~7\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(8),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(8),
	combout => \SRAM_DATA_IO[8]~8\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(9),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(9),
	combout => \SRAM_DATA_IO[9]~9\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(10),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(10),
	combout => \SRAM_DATA_IO[10]~10\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(11),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(11),
	combout => \SRAM_DATA_IO[11]~11\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(12),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(12),
	combout => \SRAM_DATA_IO[12]~12\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(13),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(13),
	combout => \SRAM_DATA_IO[13]~13\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(14),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(14),
	combout => \SRAM_DATA_IO[14]~14\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(15),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(15),
	combout => \SRAM_DATA_IO[15]~15\);

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

-- Location: LCCOMB_X43_Y30_N12
\UART_unit|UART_RX|clock_count[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[1]~16_combout\ = (\UART_unit|UART_RX|clock_count\(1) & (!\UART_unit|UART_RX|clock_count[0]~11\)) # (!\UART_unit|UART_RX|clock_count\(1) & ((\UART_unit|UART_RX|clock_count[0]~11\) # (GND)))
-- \UART_unit|UART_RX|clock_count[1]~17\ = CARRY((!\UART_unit|UART_RX|clock_count[0]~11\) # (!\UART_unit|UART_RX|clock_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(1),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[0]~11\,
	combout => \UART_unit|UART_RX|clock_count[1]~16_combout\,
	cout => \UART_unit|UART_RX|clock_count[1]~17\);

-- Location: LCCOMB_X43_Y30_N14
\UART_unit|UART_RX|clock_count[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[2]~18_combout\ = (\UART_unit|UART_RX|clock_count\(2) & (\UART_unit|UART_RX|clock_count[1]~17\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(2) & (!\UART_unit|UART_RX|clock_count[1]~17\ & VCC))
-- \UART_unit|UART_RX|clock_count[2]~19\ = CARRY((\UART_unit|UART_RX|clock_count\(2) & !\UART_unit|UART_RX|clock_count[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(2),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[1]~17\,
	combout => \UART_unit|UART_RX|clock_count[2]~18_combout\,
	cout => \UART_unit|UART_RX|clock_count[2]~19\);

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
	pll_compensation_delay => 5370,
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_UART_RX_I,
	combout => \UART_RX_I~combout\);

-- Location: LCFF_X42_Y30_N17
\UART_unit|UART_RX|RX_data_in\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_RX_I~combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data_in~regout\);

-- Location: LCCOMB_X41_Y30_N26
\UART_unit|UART_RX|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector0~1_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\ & \UART_unit|UART_RX|RX_data_in~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	datac => \UART_unit|UART_RX|RX_data_in~regout\,
	combout => \UART_unit|UART_RX|Selector0~1_combout\);

-- Location: LCCOMB_X41_Y30_N2
\UART_unit|UART_RX|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector0~2_combout\ = (!\UART_unit|UART_RX|Empty~0_combout\ & (!\UART_unit|UART_RX|Selector0~1_combout\ & ((\UART_unit|UART_RX|Selector2~4_combout\) # (\UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Selector2~4_combout\,
	datab => \UART_unit|UART_RX|Empty~0_combout\,
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\,
	datad => \UART_unit|UART_RX|Selector0~1_combout\,
	combout => \UART_unit|UART_RX|Selector0~2_combout\);

-- Location: LCFF_X41_Y30_N3
\UART_unit|UART_RX|RXC_state.S_RXC_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector0~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\);

-- Location: LCCOMB_X41_Y30_N18
\UART_unit|UART_RX|clock_count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[4]~13_combout\ = ((\UART_unit|UART_RX|clock_count[4]~12_combout\) # ((\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|Equal2~2_combout\))) # (!\UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\,
	datac => \UART_unit|UART_RX|clock_count[4]~12_combout\,
	datad => \UART_unit|UART_RX|Equal2~2_combout\,
	combout => \UART_unit|UART_RX|clock_count[4]~13_combout\);

-- Location: LCCOMB_X43_Y30_N22
\UART_unit|UART_RX|clock_count[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[6]~26_combout\ = (\UART_unit|UART_RX|clock_count\(6) & (\UART_unit|UART_RX|clock_count[5]~25\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(6) & (!\UART_unit|UART_RX|clock_count[5]~25\ & VCC))
-- \UART_unit|UART_RX|clock_count[6]~27\ = CARRY((\UART_unit|UART_RX|clock_count\(6) & !\UART_unit|UART_RX|clock_count[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(6),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[5]~25\,
	combout => \UART_unit|UART_RX|clock_count[6]~26_combout\,
	cout => \UART_unit|UART_RX|clock_count[6]~27\);

-- Location: LCCOMB_X43_Y30_N26
\UART_unit|UART_RX|clock_count[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[8]~30_combout\ = (\UART_unit|UART_RX|clock_count\(8) & (\UART_unit|UART_RX|clock_count[7]~29\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(8) & (!\UART_unit|UART_RX|clock_count[7]~29\ & VCC))
-- \UART_unit|UART_RX|clock_count[8]~31\ = CARRY((\UART_unit|UART_RX|clock_count\(8) & !\UART_unit|UART_RX|clock_count[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(8),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[7]~29\,
	combout => \UART_unit|UART_RX|clock_count[8]~30_combout\,
	cout => \UART_unit|UART_RX|clock_count[8]~31\);

-- Location: LCFF_X43_Y30_N27
\UART_unit|UART_RX|clock_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[8]~30_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(8));

-- Location: LCCOMB_X43_Y30_N28
\UART_unit|UART_RX|clock_count[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[9]~32_combout\ = \UART_unit|UART_RX|clock_count[8]~31\ $ (\UART_unit|UART_RX|clock_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|clock_count\(9),
	cin => \UART_unit|UART_RX|clock_count[8]~31\,
	combout => \UART_unit|UART_RX|clock_count[9]~32_combout\);

-- Location: LCFF_X43_Y30_N29
\UART_unit|UART_RX|clock_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[9]~32_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(9));

-- Location: LCCOMB_X41_Y30_N28
\UART_unit|UART_RX|data_count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[2]~0_combout\ = ((\UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\) # (\UART_unit|UART_RX|RX_data_in~regout\)) # (!\UART_unit|UART_rx_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_rx_enable~regout\,
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_IDLE~regout\,
	datac => \UART_unit|UART_RX|RX_data_in~regout\,
	combout => \UART_unit|UART_RX|data_count[2]~0_combout\);

-- Location: LCCOMB_X42_Y30_N18
\UART_unit|UART_RX|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|always0~1_combout\ = (!\UART_unit|UART_RX|clock_count\(8) & \UART_unit|UART_RX|clock_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_RX|clock_count\(8),
	datad => \UART_unit|UART_RX|clock_count\(6),
	combout => \UART_unit|UART_RX|always0~1_combout\);

-- Location: LCFF_X43_Y30_N13
\UART_unit|UART_RX|clock_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[1]~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(1));

-- Location: LCCOMB_X42_Y30_N16
\UART_unit|UART_RX|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|always0~0_combout\ = (!\UART_unit|UART_RX|clock_count\(5) & (\UART_unit|UART_RX|clock_count\(1) & (!\UART_unit|UART_RX|RX_data_in~regout\ & \UART_unit|UART_RX|clock_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(5),
	datab => \UART_unit|UART_RX|clock_count\(1),
	datac => \UART_unit|UART_RX|RX_data_in~regout\,
	datad => \UART_unit|UART_RX|clock_count\(2),
	combout => \UART_unit|UART_RX|always0~0_combout\);

-- Location: LCCOMB_X42_Y30_N20
\UART_unit|UART_RX|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|always0~2_combout\ = (\UART_unit|UART_RX|Equal2~0_combout\ & (\UART_unit|UART_RX|always0~1_combout\ & (\UART_unit|UART_RX|always0~0_combout\ & !\UART_unit|UART_RX|clock_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~0_combout\,
	datab => \UART_unit|UART_RX|always0~1_combout\,
	datac => \UART_unit|UART_RX|always0~0_combout\,
	datad => \UART_unit|UART_RX|clock_count\(9),
	combout => \UART_unit|UART_RX|always0~2_combout\);

-- Location: LCCOMB_X42_Y30_N10
\UART_unit|UART_RX|data_count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[0]~4_combout\ = (\UART_unit|UART_RX|data_count[2]~0_combout\ & ((!\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\) # (!\UART_unit|UART_RX|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|always0~2_combout\,
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	datad => \UART_unit|UART_RX|data_count[2]~0_combout\,
	combout => \UART_unit|UART_RX|data_count[0]~4_combout\);

-- Location: LCCOMB_X42_Y30_N24
\UART_unit|UART_RX|data_count[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[0]~5_combout\ = (\UART_unit|UART_RX|data_count\(0) & (\UART_unit|UART_RX|data_count[2]~1_combout\ & ((\UART_unit|UART_RX|data_count[0]~4_combout\)))) # (!\UART_unit|UART_RX|data_count\(0) & 
-- (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & ((!\UART_unit|UART_RX|data_count[0]~4_combout\) # (!\UART_unit|UART_RX|data_count[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|data_count[2]~1_combout\,
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datac => \UART_unit|UART_RX|data_count\(0),
	datad => \UART_unit|UART_RX|data_count[0]~4_combout\,
	combout => \UART_unit|UART_RX|data_count[0]~5_combout\);

-- Location: LCFF_X42_Y30_N25
\UART_unit|UART_RX|data_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|data_count[0]~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_count\(0));

-- Location: LCCOMB_X42_Y30_N22
\UART_unit|UART_RX|data_count[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[1]~3_combout\ = (\UART_unit|UART_RX|data_count[2]~2_combout\ & (((\UART_unit|UART_RX|data_count\(1))))) # (!\UART_unit|UART_RX|data_count[2]~2_combout\ & (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & 
-- (\UART_unit|UART_RX|data_count\(0) $ (\UART_unit|UART_RX|data_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|data_count\(0),
	datab => \UART_unit|UART_RX|data_count[2]~2_combout\,
	datac => \UART_unit|UART_RX|data_count\(1),
	datad => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	combout => \UART_unit|UART_RX|data_count[1]~3_combout\);

-- Location: LCFF_X42_Y30_N23
\UART_unit|UART_RX|data_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|data_count[1]~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_count\(1));

-- Location: LCCOMB_X42_Y30_N2
\UART_unit|UART_RX|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Add1~0_combout\ = (\UART_unit|UART_RX|data_count\(0) & \UART_unit|UART_RX|data_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_RX|data_count\(0),
	datad => \UART_unit|UART_RX|data_count\(1),
	combout => \UART_unit|UART_RX|Add1~0_combout\);

-- Location: LCCOMB_X42_Y30_N6
\UART_unit|UART_RX|data_count[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[2]~1_combout\ = (((\UART_unit|UART_RX|data_count\(2) & \UART_unit|UART_RX|Add1~0_combout\)) # (!\UART_unit|UART_RX|Equal2~2_combout\)) # (!\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|data_count\(2),
	datab => \UART_unit|UART_RX|Add1~0_combout\,
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datad => \UART_unit|UART_RX|Equal2~2_combout\,
	combout => \UART_unit|UART_RX|data_count[2]~1_combout\);

-- Location: LCCOMB_X42_Y30_N8
\UART_unit|UART_RX|data_count[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[2]~2_combout\ = (\UART_unit|UART_RX|data_count[2]~0_combout\ & (\UART_unit|UART_RX|data_count[2]~1_combout\ & ((!\UART_unit|UART_RX|always0~2_combout\) # (!\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	datab => \UART_unit|UART_RX|data_count[2]~0_combout\,
	datac => \UART_unit|UART_RX|always0~2_combout\,
	datad => \UART_unit|UART_RX|data_count[2]~1_combout\,
	combout => \UART_unit|UART_RX|data_count[2]~2_combout\);

-- Location: LCCOMB_X42_Y30_N12
\UART_unit|UART_RX|data_count[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[2]~6_combout\ = (\UART_unit|UART_RX|data_count[2]~2_combout\ & (((\UART_unit|UART_RX|data_count\(2))))) # (!\UART_unit|UART_RX|data_count[2]~2_combout\ & (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & 
-- (\UART_unit|UART_RX|data_count\(2) $ (\UART_unit|UART_RX|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datab => \UART_unit|UART_RX|data_count[2]~2_combout\,
	datac => \UART_unit|UART_RX|data_count\(2),
	datad => \UART_unit|UART_RX|Add1~0_combout\,
	combout => \UART_unit|UART_RX|data_count[2]~6_combout\);

-- Location: LCFF_X42_Y30_N13
\UART_unit|UART_RX|data_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|data_count[2]~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_count\(2));

-- Location: LCCOMB_X42_Y30_N30
\UART_unit|UART_RX|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector2~2_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & (!\UART_unit|UART_RX|clock_count\(9) & (\UART_unit|UART_RX|clock_count\(8) & \UART_unit|UART_RX|data_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datab => \UART_unit|UART_RX|clock_count\(9),
	datac => \UART_unit|UART_RX|clock_count\(8),
	datad => \UART_unit|UART_RX|data_count\(2),
	combout => \UART_unit|UART_RX|Selector2~2_combout\);

-- Location: LCCOMB_X42_Y30_N0
\UART_unit|UART_RX|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector2~3_combout\ = (\UART_unit|UART_RX|Equal2~0_combout\ & (\UART_unit|UART_RX|Selector2~2_combout\ & (\UART_unit|UART_RX|Add1~0_combout\ & \UART_unit|UART_RX|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~0_combout\,
	datab => \UART_unit|UART_RX|Selector2~2_combout\,
	datac => \UART_unit|UART_RX|Add1~0_combout\,
	datad => \UART_unit|UART_RX|Equal2~1_combout\,
	combout => \UART_unit|UART_RX|Selector2~3_combout\);

-- Location: LCCOMB_X41_Y30_N10
\UART_unit|UART_RX|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector3~2_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\ & (!\UART_unit|UART_RX|Equal2~2_combout\ & ((\UART_unit|UART_RX|Selector2~3_combout\) # (!\UART_unit|UART_RX|Selector2~4_combout\)))) # 
-- (!\UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\ & (((\UART_unit|UART_RX|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Selector2~4_combout\,
	datab => \UART_unit|UART_RX|Selector2~3_combout\,
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\,
	datad => \UART_unit|UART_RX|Equal2~2_combout\,
	combout => \UART_unit|UART_RX|Selector3~2_combout\);

-- Location: LCFF_X41_Y30_N11
\UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector3~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\);

-- Location: LCCOMB_X41_Y30_N30
\UART_unit|UART_RX|clock_count[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[4]~15_combout\ = (!\UART_unit|UART_RX|clock_count[4]~14_combout\ & ((!\UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\) # (!\UART_unit|UART_RX|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count[4]~14_combout\,
	datab => \UART_unit|UART_RX|Equal2~2_combout\,
	datad => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\,
	combout => \UART_unit|UART_RX|clock_count[4]~15_combout\);

-- Location: LCFF_X43_Y30_N15
\UART_unit|UART_RX|clock_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[2]~18_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(2));

-- Location: LCCOMB_X43_Y30_N18
\UART_unit|UART_RX|clock_count[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[4]~22_combout\ = (\UART_unit|UART_RX|clock_count\(4) & (\UART_unit|UART_RX|clock_count[3]~21\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(4) & (!\UART_unit|UART_RX|clock_count[3]~21\ & VCC))
-- \UART_unit|UART_RX|clock_count[4]~23\ = CARRY((\UART_unit|UART_RX|clock_count\(4) & !\UART_unit|UART_RX|clock_count[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(4),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[3]~21\,
	combout => \UART_unit|UART_RX|clock_count[4]~22_combout\,
	cout => \UART_unit|UART_RX|clock_count[4]~23\);

-- Location: LCFF_X43_Y30_N19
\UART_unit|UART_RX|clock_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[4]~22_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(4));

-- Location: LCFF_X43_Y30_N23
\UART_unit|UART_RX|clock_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[6]~26_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[4]~13_combout\,
	ena => \UART_unit|UART_RX|clock_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(6));

-- Location: LCCOMB_X42_Y30_N26
\UART_unit|UART_RX|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Equal2~1_combout\ = (\UART_unit|UART_RX|clock_count\(5) & (!\UART_unit|UART_RX|clock_count\(6) & (!\UART_unit|UART_RX|clock_count\(1) & !\UART_unit|UART_RX|clock_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(5),
	datab => \UART_unit|UART_RX|clock_count\(6),
	datac => \UART_unit|UART_RX|clock_count\(1),
	datad => \UART_unit|UART_RX|clock_count\(2),
	combout => \UART_unit|UART_RX|Equal2~1_combout\);

-- Location: LCCOMB_X42_Y30_N28
\UART_unit|UART_RX|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Equal2~2_combout\ = (\UART_unit|UART_RX|Equal2~0_combout\ & (\UART_unit|UART_RX|Equal2~1_combout\ & (\UART_unit|UART_RX|clock_count\(8) & !\UART_unit|UART_RX|clock_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~0_combout\,
	datab => \UART_unit|UART_RX|Equal2~1_combout\,
	datac => \UART_unit|UART_RX|clock_count\(8),
	datad => \UART_unit|UART_RX|clock_count\(9),
	combout => \UART_unit|UART_RX|Equal2~2_combout\);

-- Location: LCCOMB_X41_Y30_N4
\UART_unit|UART_RX|Empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Empty~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\ & \UART_unit|UART_RX|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\,
	datad => \UART_unit|UART_RX|Equal2~2_combout\,
	combout => \UART_unit|UART_RX|Empty~0_combout\);

-- Location: LCCOMB_X41_Y30_N22
\UART_unit|UART_RX|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector2~4_combout\ = (\UART_unit|UART_RX|Selector2~6_combout\) # ((\UART_unit|UART_RX|Selector2~3_combout\) # ((\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\ & \UART_unit|UART_RX|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Selector2~6_combout\,
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	datac => \UART_unit|UART_RX|Selector2~3_combout\,
	datad => \UART_unit|UART_RX|always0~2_combout\,
	combout => \UART_unit|UART_RX|Selector2~4_combout\);

-- Location: LCCOMB_X41_Y30_N0
\UART_unit|UART_RX|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector1~0_combout\ = (!\UART_unit|UART_RX|Empty~0_combout\ & ((\UART_unit|UART_RX|Selector2~4_combout\ & (\UART_unit|UART_RX|Selector0~0_combout\)) # (!\UART_unit|UART_RX|Selector2~4_combout\ & 
-- ((\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Selector0~0_combout\,
	datab => \UART_unit|UART_RX|Empty~0_combout\,
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	datad => \UART_unit|UART_RX|Selector2~4_combout\,
	combout => \UART_unit|UART_RX|Selector1~0_combout\);

-- Location: LCFF_X41_Y30_N1
\UART_unit|UART_RX|RXC_state.S_RXC_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector1~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\);

-- Location: LCCOMB_X41_Y30_N8
\UART_unit|UART_RX|clock_count[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[4]~12_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\ & \UART_unit|UART_RX|always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	datad => \UART_unit|UART_RX|always0~2_combout\,
	combout => \UART_unit|UART_RX|clock_count[4]~12_combout\);

-- Location: LCCOMB_X41_Y30_N14
\UART_unit|UART_RX|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector2~5_combout\ = (!\UART_unit|UART_RX|Empty~0_combout\ & ((\UART_unit|UART_RX|Selector2~4_combout\ & (\UART_unit|UART_RX|clock_count[4]~12_combout\)) # (!\UART_unit|UART_RX|Selector2~4_combout\ & 
-- ((\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~0_combout\,
	datab => \UART_unit|UART_RX|clock_count[4]~12_combout\,
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datad => \UART_unit|UART_RX|Selector2~4_combout\,
	combout => \UART_unit|UART_RX|Selector2~5_combout\);

-- Location: LCFF_X41_Y30_N15
\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector2~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\);

-- Location: LCCOMB_X40_Y30_N30
\UART_unit|UART_RX|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector27~0_combout\ = (\UART_unit|UART_RX|data_buffer\(3) & \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|data_buffer\(3),
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	combout => \UART_unit|UART_RX|Selector27~0_combout\);

-- Location: LCCOMB_X40_Y30_N4
\UART_unit|UART_RX|clock_count[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[4]~34_combout\ = (\UART_unit|UART_RX|always0~2_combout\ & ((\UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\) # ((\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|Equal2~2_combout\)))) # 
-- (!\UART_unit|UART_RX|always0~2_combout\ & (((\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|always0~2_combout\,
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_SYNC~regout\,
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datad => \UART_unit|UART_RX|Equal2~2_combout\,
	combout => \UART_unit|UART_RX|clock_count[4]~34_combout\);

-- Location: LCFF_X40_Y30_N31
\UART_unit|UART_RX|data_buffer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector27~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(2));

-- Location: LCCOMB_X40_Y30_N24
\UART_unit|UART_RX|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector28~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|data_buffer\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datac => \UART_unit|UART_RX|data_buffer\(2),
	combout => \UART_unit|UART_RX|Selector28~0_combout\);

-- Location: LCFF_X40_Y30_N25
\UART_unit|UART_RX|data_buffer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector28~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(1));

-- Location: LCCOMB_X40_Y30_N28
\UART_unit|UART_RX|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector29~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|data_buffer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datac => \UART_unit|UART_RX|data_buffer\(1),
	combout => \UART_unit|UART_RX|Selector29~0_combout\);

-- Location: LCFF_X40_Y30_N29
\UART_unit|UART_RX|data_buffer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector29~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(0));

-- Location: LCCOMB_X40_Y30_N20
\UART_unit|UART_RX|RX_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[0]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(0),
	combout => \UART_unit|UART_RX|RX_data[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y30_N20
\UART_unit|UART_RX|RX_data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[7]~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\ & (\UART_unit|UART_RX|Equal2~2_combout\ & \UART_unit|UART_RX|RX_data_in~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~regout\,
	datab => \UART_unit|UART_RX|Equal2~2_combout\,
	datac => \UART_unit|UART_RX|RX_data_in~regout\,
	combout => \UART_unit|UART_RX|RX_data[7]~0_combout\);

-- Location: LCFF_X40_Y30_N21
\UART_unit|UART_RX|RX_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[0]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(0));

-- Location: LCCOMB_X36_Y30_N24
\UART_unit|SRAM_write_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~0_combout\ = (!\UART_rx_initialize~regout\ & \UART_unit|UART_RX|RX_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_RX|RX_data\(0),
	combout => \UART_unit|SRAM_write_data~0_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_PUSH_BUTTON_I(0),
	combout => \PUSH_BUTTON_I~combout\(0));

-- Location: LCCOMB_X34_Y34_N6
\PB_unit|debounce_shift_reg[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][0]~0_combout\ = !\PUSH_BUTTON_I~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PUSH_BUTTON_I~combout\(0),
	combout => \PB_unit|debounce_shift_reg[0][0]~0_combout\);

-- Location: LCCOMB_X20_Y11_N0
\PB_unit|clock_1kHz_div_count[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[0]~16_combout\ = \PB_unit|clock_1kHz_div_count\(0) $ (VCC)
-- \PB_unit|clock_1kHz_div_count[0]~17\ = CARRY(\PB_unit|clock_1kHz_div_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(0),
	datad => VCC,
	combout => \PB_unit|clock_1kHz_div_count[0]~16_combout\,
	cout => \PB_unit|clock_1kHz_div_count[0]~17\);

-- Location: LCCOMB_X20_Y11_N6
\PB_unit|clock_1kHz_div_count[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[3]~22_combout\ = (\PB_unit|clock_1kHz_div_count\(3) & (!\PB_unit|clock_1kHz_div_count[2]~21\)) # (!\PB_unit|clock_1kHz_div_count\(3) & ((\PB_unit|clock_1kHz_div_count[2]~21\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[3]~23\ = CARRY((!\PB_unit|clock_1kHz_div_count[2]~21\) # (!\PB_unit|clock_1kHz_div_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(3),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[2]~21\,
	combout => \PB_unit|clock_1kHz_div_count[3]~22_combout\,
	cout => \PB_unit|clock_1kHz_div_count[3]~23\);

-- Location: LCCOMB_X20_Y11_N8
\PB_unit|clock_1kHz_div_count[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[4]~24_combout\ = (\PB_unit|clock_1kHz_div_count\(4) & (\PB_unit|clock_1kHz_div_count[3]~23\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(4) & (!\PB_unit|clock_1kHz_div_count[3]~23\ & VCC))
-- \PB_unit|clock_1kHz_div_count[4]~25\ = CARRY((\PB_unit|clock_1kHz_div_count\(4) & !\PB_unit|clock_1kHz_div_count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(4),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[3]~23\,
	combout => \PB_unit|clock_1kHz_div_count[4]~24_combout\,
	cout => \PB_unit|clock_1kHz_div_count[4]~25\);

-- Location: LCFF_X20_Y11_N9
\PB_unit|clock_1kHz_div_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[4]~24_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(4));

-- Location: LCCOMB_X20_Y11_N10
\PB_unit|clock_1kHz_div_count[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[5]~26_combout\ = (\PB_unit|clock_1kHz_div_count\(5) & (!\PB_unit|clock_1kHz_div_count[4]~25\)) # (!\PB_unit|clock_1kHz_div_count\(5) & ((\PB_unit|clock_1kHz_div_count[4]~25\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[5]~27\ = CARRY((!\PB_unit|clock_1kHz_div_count[4]~25\) # (!\PB_unit|clock_1kHz_div_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(5),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[4]~25\,
	combout => \PB_unit|clock_1kHz_div_count[5]~26_combout\,
	cout => \PB_unit|clock_1kHz_div_count[5]~27\);

-- Location: LCCOMB_X20_Y11_N12
\PB_unit|clock_1kHz_div_count[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[6]~28_combout\ = (\PB_unit|clock_1kHz_div_count\(6) & (\PB_unit|clock_1kHz_div_count[5]~27\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(6) & (!\PB_unit|clock_1kHz_div_count[5]~27\ & VCC))
-- \PB_unit|clock_1kHz_div_count[6]~29\ = CARRY((\PB_unit|clock_1kHz_div_count\(6) & !\PB_unit|clock_1kHz_div_count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(6),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[5]~27\,
	combout => \PB_unit|clock_1kHz_div_count[6]~28_combout\,
	cout => \PB_unit|clock_1kHz_div_count[6]~29\);

-- Location: LCCOMB_X20_Y11_N14
\PB_unit|clock_1kHz_div_count[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[7]~30_combout\ = (\PB_unit|clock_1kHz_div_count\(7) & (!\PB_unit|clock_1kHz_div_count[6]~29\)) # (!\PB_unit|clock_1kHz_div_count\(7) & ((\PB_unit|clock_1kHz_div_count[6]~29\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[7]~31\ = CARRY((!\PB_unit|clock_1kHz_div_count[6]~29\) # (!\PB_unit|clock_1kHz_div_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(7),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[6]~29\,
	combout => \PB_unit|clock_1kHz_div_count[7]~30_combout\,
	cout => \PB_unit|clock_1kHz_div_count[7]~31\);

-- Location: LCFF_X20_Y11_N15
\PB_unit|clock_1kHz_div_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[7]~30_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(7));

-- Location: LCCOMB_X20_Y11_N16
\PB_unit|clock_1kHz_div_count[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[8]~32_combout\ = (\PB_unit|clock_1kHz_div_count\(8) & (\PB_unit|clock_1kHz_div_count[7]~31\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(8) & (!\PB_unit|clock_1kHz_div_count[7]~31\ & VCC))
-- \PB_unit|clock_1kHz_div_count[8]~33\ = CARRY((\PB_unit|clock_1kHz_div_count\(8) & !\PB_unit|clock_1kHz_div_count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(8),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[7]~31\,
	combout => \PB_unit|clock_1kHz_div_count[8]~32_combout\,
	cout => \PB_unit|clock_1kHz_div_count[8]~33\);

-- Location: LCFF_X20_Y11_N17
\PB_unit|clock_1kHz_div_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[8]~32_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(8));

-- Location: LCFF_X20_Y11_N11
\PB_unit|clock_1kHz_div_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[5]~26_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(5));

-- Location: LCCOMB_X21_Y11_N28
\PB_unit|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~2_combout\ = (((!\PB_unit|clock_1kHz_div_count\(6) & !\PB_unit|clock_1kHz_div_count\(5))) # (!\PB_unit|clock_1kHz_div_count\(7))) # (!\PB_unit|clock_1kHz_div_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(6),
	datab => \PB_unit|clock_1kHz_div_count\(8),
	datac => \PB_unit|clock_1kHz_div_count\(7),
	datad => \PB_unit|clock_1kHz_div_count\(5),
	combout => \PB_unit|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y11_N18
\PB_unit|clock_1kHz_div_count[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[9]~34_combout\ = (\PB_unit|clock_1kHz_div_count\(9) & (!\PB_unit|clock_1kHz_div_count[8]~33\)) # (!\PB_unit|clock_1kHz_div_count\(9) & ((\PB_unit|clock_1kHz_div_count[8]~33\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[9]~35\ = CARRY((!\PB_unit|clock_1kHz_div_count[8]~33\) # (!\PB_unit|clock_1kHz_div_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(9),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[8]~33\,
	combout => \PB_unit|clock_1kHz_div_count[9]~34_combout\,
	cout => \PB_unit|clock_1kHz_div_count[9]~35\);

-- Location: LCFF_X20_Y11_N19
\PB_unit|clock_1kHz_div_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[9]~34_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(9));

-- Location: LCCOMB_X20_Y11_N20
\PB_unit|clock_1kHz_div_count[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[10]~36_combout\ = (\PB_unit|clock_1kHz_div_count\(10) & (\PB_unit|clock_1kHz_div_count[9]~35\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(10) & (!\PB_unit|clock_1kHz_div_count[9]~35\ & VCC))
-- \PB_unit|clock_1kHz_div_count[10]~37\ = CARRY((\PB_unit|clock_1kHz_div_count\(10) & !\PB_unit|clock_1kHz_div_count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(10),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[9]~35\,
	combout => \PB_unit|clock_1kHz_div_count[10]~36_combout\,
	cout => \PB_unit|clock_1kHz_div_count[10]~37\);

-- Location: LCCOMB_X20_Y11_N22
\PB_unit|clock_1kHz_div_count[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[11]~38_combout\ = (\PB_unit|clock_1kHz_div_count\(11) & (!\PB_unit|clock_1kHz_div_count[10]~37\)) # (!\PB_unit|clock_1kHz_div_count\(11) & ((\PB_unit|clock_1kHz_div_count[10]~37\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[11]~39\ = CARRY((!\PB_unit|clock_1kHz_div_count[10]~37\) # (!\PB_unit|clock_1kHz_div_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(11),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[10]~37\,
	combout => \PB_unit|clock_1kHz_div_count[11]~38_combout\,
	cout => \PB_unit|clock_1kHz_div_count[11]~39\);

-- Location: LCFF_X20_Y11_N23
\PB_unit|clock_1kHz_div_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[11]~38_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(11));

-- Location: LCCOMB_X20_Y11_N24
\PB_unit|clock_1kHz_div_count[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[12]~40_combout\ = (\PB_unit|clock_1kHz_div_count\(12) & (\PB_unit|clock_1kHz_div_count[11]~39\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(12) & (!\PB_unit|clock_1kHz_div_count[11]~39\ & VCC))
-- \PB_unit|clock_1kHz_div_count[12]~41\ = CARRY((\PB_unit|clock_1kHz_div_count\(12) & !\PB_unit|clock_1kHz_div_count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(12),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[11]~39\,
	combout => \PB_unit|clock_1kHz_div_count[12]~40_combout\,
	cout => \PB_unit|clock_1kHz_div_count[12]~41\);

-- Location: LCCOMB_X20_Y11_N26
\PB_unit|clock_1kHz_div_count[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[13]~42_combout\ = (\PB_unit|clock_1kHz_div_count\(13) & (!\PB_unit|clock_1kHz_div_count[12]~41\)) # (!\PB_unit|clock_1kHz_div_count\(13) & ((\PB_unit|clock_1kHz_div_count[12]~41\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[13]~43\ = CARRY((!\PB_unit|clock_1kHz_div_count[12]~41\) # (!\PB_unit|clock_1kHz_div_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(13),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[12]~41\,
	combout => \PB_unit|clock_1kHz_div_count[13]~42_combout\,
	cout => \PB_unit|clock_1kHz_div_count[13]~43\);

-- Location: LCFF_X20_Y11_N27
\PB_unit|clock_1kHz_div_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[13]~42_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(13));

-- Location: LCCOMB_X20_Y11_N28
\PB_unit|clock_1kHz_div_count[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[14]~44_combout\ = (\PB_unit|clock_1kHz_div_count\(14) & (\PB_unit|clock_1kHz_div_count[13]~43\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(14) & (!\PB_unit|clock_1kHz_div_count[13]~43\ & VCC))
-- \PB_unit|clock_1kHz_div_count[14]~45\ = CARRY((\PB_unit|clock_1kHz_div_count\(14) & !\PB_unit|clock_1kHz_div_count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(14),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[13]~43\,
	combout => \PB_unit|clock_1kHz_div_count[14]~44_combout\,
	cout => \PB_unit|clock_1kHz_div_count[14]~45\);

-- Location: LCFF_X20_Y11_N29
\PB_unit|clock_1kHz_div_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[14]~44_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(14));

-- Location: LCCOMB_X20_Y11_N30
\PB_unit|clock_1kHz_div_count[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[15]~46_combout\ = \PB_unit|clock_1kHz_div_count[14]~45\ $ (\PB_unit|clock_1kHz_div_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|clock_1kHz_div_count\(15),
	cin => \PB_unit|clock_1kHz_div_count[14]~45\,
	combout => \PB_unit|clock_1kHz_div_count[15]~46_combout\);

-- Location: LCFF_X20_Y11_N31
\PB_unit|clock_1kHz_div_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[15]~46_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(15));

-- Location: LCFF_X20_Y11_N25
\PB_unit|clock_1kHz_div_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[12]~40_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(12));

-- Location: LCFF_X20_Y11_N21
\PB_unit|clock_1kHz_div_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[10]~36_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(10));

-- Location: LCCOMB_X21_Y11_N6
\PB_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~1_combout\ = (!\PB_unit|clock_1kHz_div_count\(9) & (!\PB_unit|clock_1kHz_div_count\(12) & (!\PB_unit|clock_1kHz_div_count\(10) & !\PB_unit|clock_1kHz_div_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(9),
	datab => \PB_unit|clock_1kHz_div_count\(12),
	datac => \PB_unit|clock_1kHz_div_count\(10),
	datad => \PB_unit|clock_1kHz_div_count\(11),
	combout => \PB_unit|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y11_N16
\PB_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~2_combout\ = (!\PB_unit|clock_1kHz_div_count\(15) & \PB_unit|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB_unit|clock_1kHz_div_count\(15),
	datad => \PB_unit|Equal0~1_combout\,
	combout => \PB_unit|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y11_N10
\PB_unit|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~1_combout\ = (\PB_unit|Equal0~3_combout\ & (((!\PB_unit|clock_1kHz_div_count\(0)) # (!\PB_unit|clock_1kHz_div_count\(2))) # (!\PB_unit|clock_1kHz_div_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(1),
	datab => \PB_unit|clock_1kHz_div_count\(2),
	datac => \PB_unit|clock_1kHz_div_count\(0),
	datad => \PB_unit|Equal0~3_combout\,
	combout => \PB_unit|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y11_N30
\PB_unit|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~3_combout\ = (!\PB_unit|LessThan0~0_combout\ & (((!\PB_unit|LessThan0~2_combout\ & !\PB_unit|LessThan0~1_combout\)) # (!\PB_unit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|LessThan0~0_combout\,
	datab => \PB_unit|LessThan0~2_combout\,
	datac => \PB_unit|Equal0~2_combout\,
	datad => \PB_unit|LessThan0~1_combout\,
	combout => \PB_unit|LessThan0~3_combout\);

-- Location: LCFF_X20_Y11_N1
\PB_unit|clock_1kHz_div_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[0]~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(0));

-- Location: LCCOMB_X20_Y11_N2
\PB_unit|clock_1kHz_div_count[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[1]~18_combout\ = (\PB_unit|clock_1kHz_div_count\(1) & (!\PB_unit|clock_1kHz_div_count[0]~17\)) # (!\PB_unit|clock_1kHz_div_count\(1) & ((\PB_unit|clock_1kHz_div_count[0]~17\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[1]~19\ = CARRY((!\PB_unit|clock_1kHz_div_count[0]~17\) # (!\PB_unit|clock_1kHz_div_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(1),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[0]~17\,
	combout => \PB_unit|clock_1kHz_div_count[1]~18_combout\,
	cout => \PB_unit|clock_1kHz_div_count[1]~19\);

-- Location: LCFF_X20_Y11_N3
\PB_unit|clock_1kHz_div_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[1]~18_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(1));

-- Location: LCCOMB_X20_Y11_N4
\PB_unit|clock_1kHz_div_count[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[2]~20_combout\ = (\PB_unit|clock_1kHz_div_count\(2) & (\PB_unit|clock_1kHz_div_count[1]~19\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(2) & (!\PB_unit|clock_1kHz_div_count[1]~19\ & VCC))
-- \PB_unit|clock_1kHz_div_count[2]~21\ = CARRY((\PB_unit|clock_1kHz_div_count\(2) & !\PB_unit|clock_1kHz_div_count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(2),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[1]~19\,
	combout => \PB_unit|clock_1kHz_div_count[2]~20_combout\,
	cout => \PB_unit|clock_1kHz_div_count[2]~21\);

-- Location: LCFF_X20_Y11_N5
\PB_unit|clock_1kHz_div_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[2]~20_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(2));

-- Location: LCFF_X20_Y11_N7
\PB_unit|clock_1kHz_div_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[3]~22_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(3));

-- Location: LCFF_X20_Y11_N13
\PB_unit|clock_1kHz_div_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[6]~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(6));

-- Location: LCCOMB_X21_Y11_N26
\PB_unit|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~3_combout\ = (!\PB_unit|clock_1kHz_div_count\(4) & (!\PB_unit|clock_1kHz_div_count\(3) & !\PB_unit|clock_1kHz_div_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(4),
	datac => \PB_unit|clock_1kHz_div_count\(3),
	datad => \PB_unit|clock_1kHz_div_count\(6),
	combout => \PB_unit|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y11_N12
\PB_unit|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~4_combout\ = (!\PB_unit|clock_1kHz_div_count\(1) & (!\PB_unit|clock_1kHz_div_count\(7) & (!\PB_unit|clock_1kHz_div_count\(2) & !\PB_unit|clock_1kHz_div_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(1),
	datab => \PB_unit|clock_1kHz_div_count\(7),
	datac => \PB_unit|clock_1kHz_div_count\(2),
	datad => \PB_unit|clock_1kHz_div_count\(5),
	combout => \PB_unit|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y11_N22
\PB_unit|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~5_combout\ = (!\PB_unit|clock_1kHz_div_count\(0) & (\PB_unit|Equal0~3_combout\ & (\PB_unit|Equal0~2_combout\ & \PB_unit|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(0),
	datab => \PB_unit|Equal0~3_combout\,
	datac => \PB_unit|Equal0~2_combout\,
	datad => \PB_unit|Equal0~4_combout\,
	combout => \PB_unit|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y11_N2
\PB_unit|clock_1kHz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz~0_combout\ = \PB_unit|clock_1kHz~regout\ $ (((\PB_unit|Equal0~0_combout\ & \PB_unit|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|Equal0~0_combout\,
	datab => \PB_unit|Equal0~5_combout\,
	datac => \PB_unit|clock_1kHz~regout\,
	combout => \PB_unit|clock_1kHz~0_combout\);

-- Location: LCFF_X21_Y11_N3
\PB_unit|clock_1kHz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz~regout\);

-- Location: LCFF_X21_Y11_N1
\PB_unit|clock_1kHz_buf\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|clock_1kHz~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_buf~regout\);

-- Location: LCCOMB_X21_Y11_N0
\PB_unit|always3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|always3~0_combout\ = (\PB_unit|clock_1kHz_buf~regout\ & !\PB_unit|clock_1kHz~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB_unit|clock_1kHz_buf~regout\,
	datad => \PB_unit|clock_1kHz~regout\,
	combout => \PB_unit|always3~0_combout\);

-- Location: LCFF_X34_Y34_N7
\PB_unit|debounce_shift_reg[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][0]~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][0]~regout\);

-- Location: LCCOMB_X34_Y34_N12
\PB_unit|debounce_shift_reg[0][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][1]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][0]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][1]~feeder_combout\);

-- Location: LCFF_X34_Y34_N13
\PB_unit|debounce_shift_reg[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][1]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][1]~regout\);

-- Location: LCCOMB_X34_Y34_N26
\PB_unit|debounce_shift_reg[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][2]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][1]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][1]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][2]~feeder_combout\);

-- Location: LCFF_X34_Y34_N27
\PB_unit|debounce_shift_reg[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][2]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][2]~regout\);

-- Location: LCCOMB_X34_Y34_N24
\PB_unit|debounce_shift_reg[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][3]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][2]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][3]~feeder_combout\);

-- Location: LCFF_X34_Y34_N25
\PB_unit|debounce_shift_reg[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][3]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][3]~regout\);

-- Location: LCFF_X34_Y34_N23
\PB_unit|debounce_shift_reg[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|debounce_shift_reg[0][3]~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][4]~regout\);

-- Location: LCCOMB_X34_Y34_N28
\PB_unit|debounce_shift_reg[0][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][5]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][4]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][4]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][5]~feeder_combout\);

-- Location: LCFF_X34_Y34_N29
\PB_unit|debounce_shift_reg[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][5]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][5]~regout\);

-- Location: LCCOMB_X34_Y34_N22
\PB_unit|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|WideOr0~1_combout\ = (\PB_unit|debounce_shift_reg[0][3]~regout\) # ((\PB_unit|debounce_shift_reg[0][5]~regout\) # ((\PB_unit|debounce_shift_reg[0][4]~regout\) # (\PB_unit|debounce_shift_reg[0][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|debounce_shift_reg[0][3]~regout\,
	datab => \PB_unit|debounce_shift_reg[0][5]~regout\,
	datac => \PB_unit|debounce_shift_reg[0][4]~regout\,
	datad => \PB_unit|debounce_shift_reg[0][2]~regout\,
	combout => \PB_unit|WideOr0~1_combout\);

-- Location: LCCOMB_X34_Y34_N2
\PB_unit|debounce_shift_reg[0][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][6]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][5]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][5]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][6]~feeder_combout\);

-- Location: LCFF_X34_Y34_N3
\PB_unit|debounce_shift_reg[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][6]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][6]~regout\);

-- Location: LCCOMB_X34_Y34_N0
\PB_unit|debounce_shift_reg[0][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][7]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][6]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][6]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][7]~feeder_combout\);

-- Location: LCFF_X34_Y34_N1
\PB_unit|debounce_shift_reg[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][7]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][7]~regout\);

-- Location: LCCOMB_X34_Y34_N30
\PB_unit|debounce_shift_reg[0][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][8]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][7]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][7]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][8]~feeder_combout\);

-- Location: LCFF_X34_Y34_N31
\PB_unit|debounce_shift_reg[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][8]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][8]~regout\);

-- Location: LCFF_X34_Y34_N21
\PB_unit|debounce_shift_reg[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|debounce_shift_reg[0][8]~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][9]~regout\);

-- Location: LCCOMB_X34_Y34_N20
\PB_unit|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|WideOr0~0_combout\ = (\PB_unit|debounce_shift_reg[0][6]~regout\) # ((\PB_unit|debounce_shift_reg[0][8]~regout\) # ((\PB_unit|debounce_shift_reg[0][9]~regout\) # (\PB_unit|debounce_shift_reg[0][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|debounce_shift_reg[0][6]~regout\,
	datab => \PB_unit|debounce_shift_reg[0][8]~regout\,
	datac => \PB_unit|debounce_shift_reg[0][9]~regout\,
	datad => \PB_unit|debounce_shift_reg[0][7]~regout\,
	combout => \PB_unit|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y34_N16
\PB_unit|WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|WideOr0~2_combout\ = (\PB_unit|debounce_shift_reg[0][1]~regout\) # ((\PB_unit|WideOr0~1_combout\) # ((\PB_unit|WideOr0~0_combout\) # (\PB_unit|debounce_shift_reg[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|debounce_shift_reg[0][1]~regout\,
	datab => \PB_unit|WideOr0~1_combout\,
	datac => \PB_unit|WideOr0~0_combout\,
	datad => \PB_unit|debounce_shift_reg[0][0]~regout\,
	combout => \PB_unit|WideOr0~2_combout\);

-- Location: LCFF_X34_Y34_N17
\PB_unit|push_button_status[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|WideOr0~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|push_button_status\(0));

-- Location: LCFF_X34_Y34_N19
\PB_unit|push_button_status_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|push_button_status\(0),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|push_button_status_buf\(0));

-- Location: LCCOMB_X35_Y34_N16
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.S_TOP_UART~regout\ & ((\UART_done~regout\) # ((\PB_unit|push_button_status\(0) & !\PB_unit|push_button_status_buf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_done~regout\,
	datab => \PB_unit|push_button_status\(0),
	datac => \PB_unit|push_button_status_buf\(0),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X36_Y34_N26
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

-- Location: LCFF_X36_Y34_N27
\M2_unit|FS_unit|state.S_FS_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|state.S_FS_START~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|state.S_FS_START~regout\);

-- Location: LCCOMB_X36_Y34_N30
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\Selector5~0_combout\ & ((\state.S_TOP_UART~regout\) # (!\M2_unit|FS_unit|state.S_FS_START~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \state.S_TOP_UART~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_START~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X36_Y34_N31
\state.S_TOP_UART\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_TOP_UART~regout\);

-- Location: LCCOMB_X35_Y34_N28
\UART_state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_state~13_combout\ = (\Selector6~0_combout\ & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datad => \state.S_TOP_UART~regout\,
	combout => \UART_state~13_combout\);

-- Location: LCFF_X35_Y34_N29
\UART_state.S_ENABLE_UART_RX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_state~13_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_state.S_ENABLE_UART_RX~regout\);

-- Location: LCFF_X35_Y30_N1
UART_rx_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_state.S_ENABLE_UART_RX~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_rx_enable~regout\);

-- Location: LCCOMB_X40_Y30_N10
\UART_unit|UART_RX|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector22~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|RX_data_in~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datad => \UART_unit|UART_RX|RX_data_in~regout\,
	combout => \UART_unit|UART_RX|Selector22~0_combout\);

-- Location: LCFF_X40_Y30_N11
\UART_unit|UART_RX|data_buffer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector22~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(7));

-- Location: LCCOMB_X40_Y30_N8
\UART_unit|UART_RX|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector23~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\ & \UART_unit|UART_RX|data_buffer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	datad => \UART_unit|UART_RX|data_buffer\(7),
	combout => \UART_unit|UART_RX|Selector23~0_combout\);

-- Location: LCFF_X40_Y30_N9
\UART_unit|UART_RX|data_buffer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector23~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(6));

-- Location: LCFF_X40_Y30_N3
\UART_unit|UART_RX|RX_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|UART_RX|data_buffer\(6),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(6));

-- Location: LCCOMB_X40_Y30_N18
\UART_unit|UART_RX|RX_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[7]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(7),
	combout => \UART_unit|UART_RX|RX_data[7]~feeder_combout\);

-- Location: LCFF_X40_Y30_N19
\UART_unit|UART_RX|RX_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[7]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(7));

-- Location: LCCOMB_X40_Y30_N2
\UART_unit|new_line_count[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|new_line_count[1]~0_combout\ = (\UART_unit|UART_RX|RX_data\(6)) # ((\UART_unit|UART_RX|RX_data\(7)) # ((\UART_unit|new_line_count\(1) & \UART_unit|new_line_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|new_line_count\(1),
	datab => \UART_unit|new_line_count\(0),
	datac => \UART_unit|UART_RX|RX_data\(6),
	datad => \UART_unit|UART_RX|RX_data\(7),
	combout => \UART_unit|new_line_count[1]~0_combout\);

-- Location: LCCOMB_X35_Y33_N8
\UART_timer[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[1]~28_combout\ = (UART_timer(1) & (!\UART_timer[0]~27\)) # (!UART_timer(1) & ((\UART_timer[0]~27\) # (GND)))
-- \UART_timer[1]~29\ = CARRY((!\UART_timer[0]~27\) # (!UART_timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(1),
	datad => VCC,
	cin => \UART_timer[0]~27\,
	combout => \UART_timer[1]~28_combout\,
	cout => \UART_timer[1]~29\);

-- Location: LCCOMB_X38_Y30_N0
\UART_unit|UART_SRAM_state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~21_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\) # (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|UART_SRAM_state~21_combout\);

-- Location: LCFF_X38_Y30_N1
\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~21_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\);

-- Location: LCCOMB_X35_Y34_N24
\UART_unit|SRAM_we_n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_we_n~0_combout\ = (!\UART_unit|SRAM_we_n~regout\ & (((\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\) # (!\UART_unit|UART_RX|Empty~regout\)) # (!\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	datac => \UART_unit|SRAM_we_n~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|SRAM_we_n~0_combout\);

-- Location: LCCOMB_X35_Y34_N2
\UART_unit|SRAM_we_n~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_we_n~1_combout\ = (!\UART_rx_initialize~regout\ & (!\UART_unit|SRAM_we_n~0_combout\ & ((\UART_unit|UART_RX|Empty~regout\) # (!\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	datac => \UART_unit|SRAM_we_n~0_combout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|SRAM_we_n~1_combout\);

-- Location: LCFF_X35_Y34_N3
\UART_unit|SRAM_we_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_we_n~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_we_n~regout\);

-- Location: LCCOMB_X35_Y34_N4
\always1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~9_combout\ = (\UART_unit|SRAM_we_n~regout\) # (\UART_rx_initialize~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_we_n~regout\,
	datad => \UART_rx_initialize~regout\,
	combout => \always1~9_combout\);

-- Location: LCFF_X35_Y33_N9
\UART_timer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[1]~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(1));

-- Location: LCCOMB_X35_Y33_N14
\UART_timer[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[4]~34_combout\ = (UART_timer(4) & (\UART_timer[3]~33\ $ (GND))) # (!UART_timer(4) & (!\UART_timer[3]~33\ & VCC))
-- \UART_timer[4]~35\ = CARRY((UART_timer(4) & !\UART_timer[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(4),
	datad => VCC,
	cin => \UART_timer[3]~33\,
	combout => \UART_timer[4]~34_combout\,
	cout => \UART_timer[4]~35\);

-- Location: LCFF_X35_Y33_N15
\UART_timer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[4]~34_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(4));

-- Location: LCCOMB_X35_Y33_N16
\UART_timer[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[5]~36_combout\ = (UART_timer(5) & (!\UART_timer[4]~35\)) # (!UART_timer(5) & ((\UART_timer[4]~35\) # (GND)))
-- \UART_timer[5]~37\ = CARRY((!\UART_timer[4]~35\) # (!UART_timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(5),
	datad => VCC,
	cin => \UART_timer[4]~35\,
	combout => \UART_timer[5]~36_combout\,
	cout => \UART_timer[5]~37\);

-- Location: LCCOMB_X35_Y33_N18
\UART_timer[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[6]~38_combout\ = (UART_timer(6) & (\UART_timer[5]~37\ $ (GND))) # (!UART_timer(6) & (!\UART_timer[5]~37\ & VCC))
-- \UART_timer[6]~39\ = CARRY((UART_timer(6) & !\UART_timer[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(6),
	datad => VCC,
	cin => \UART_timer[5]~37\,
	combout => \UART_timer[6]~38_combout\,
	cout => \UART_timer[6]~39\);

-- Location: LCFF_X35_Y33_N19
\UART_timer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[6]~38_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(6));

-- Location: LCCOMB_X35_Y33_N22
\UART_timer[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[8]~42_combout\ = (UART_timer(8) & (\UART_timer[7]~41\ $ (GND))) # (!UART_timer(8) & (!\UART_timer[7]~41\ & VCC))
-- \UART_timer[8]~43\ = CARRY((UART_timer(8) & !\UART_timer[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(8),
	datad => VCC,
	cin => \UART_timer[7]~41\,
	combout => \UART_timer[8]~42_combout\,
	cout => \UART_timer[8]~43\);

-- Location: LCFF_X35_Y33_N23
\UART_timer[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[8]~42_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(8));

-- Location: LCCOMB_X35_Y33_N24
\UART_timer[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[9]~44_combout\ = (UART_timer(9) & (!\UART_timer[8]~43\)) # (!UART_timer(9) & ((\UART_timer[8]~43\) # (GND)))
-- \UART_timer[9]~45\ = CARRY((!\UART_timer[8]~43\) # (!UART_timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(9),
	datad => VCC,
	cin => \UART_timer[8]~43\,
	combout => \UART_timer[9]~44_combout\,
	cout => \UART_timer[9]~45\);

-- Location: LCCOMB_X35_Y33_N26
\UART_timer[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[10]~46_combout\ = (UART_timer(10) & (\UART_timer[9]~45\ $ (GND))) # (!UART_timer(10) & (!\UART_timer[9]~45\ & VCC))
-- \UART_timer[10]~47\ = CARRY((UART_timer(10) & !\UART_timer[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(10),
	datad => VCC,
	cin => \UART_timer[9]~45\,
	combout => \UART_timer[10]~46_combout\,
	cout => \UART_timer[10]~47\);

-- Location: LCFF_X35_Y33_N27
\UART_timer[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[10]~46_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(10));

-- Location: LCCOMB_X35_Y33_N28
\UART_timer[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[11]~48_combout\ = (UART_timer(11) & (!\UART_timer[10]~47\)) # (!UART_timer(11) & ((\UART_timer[10]~47\) # (GND)))
-- \UART_timer[11]~49\ = CARRY((!\UART_timer[10]~47\) # (!UART_timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(11),
	datad => VCC,
	cin => \UART_timer[10]~47\,
	combout => \UART_timer[11]~48_combout\,
	cout => \UART_timer[11]~49\);

-- Location: LCFF_X35_Y33_N29
\UART_timer[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[11]~48_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(11));

-- Location: LCCOMB_X35_Y33_N30
\UART_timer[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[12]~50_combout\ = (UART_timer(12) & (\UART_timer[11]~49\ $ (GND))) # (!UART_timer(12) & (!\UART_timer[11]~49\ & VCC))
-- \UART_timer[12]~51\ = CARRY((UART_timer(12) & !\UART_timer[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(12),
	datad => VCC,
	cin => \UART_timer[11]~49\,
	combout => \UART_timer[12]~50_combout\,
	cout => \UART_timer[12]~51\);

-- Location: LCFF_X35_Y33_N31
\UART_timer[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[12]~50_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(12));

-- Location: LCCOMB_X35_Y32_N0
\UART_timer[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[13]~52_combout\ = (UART_timer(13) & (!\UART_timer[12]~51\)) # (!UART_timer(13) & ((\UART_timer[12]~51\) # (GND)))
-- \UART_timer[13]~53\ = CARRY((!\UART_timer[12]~51\) # (!UART_timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(13),
	datad => VCC,
	cin => \UART_timer[12]~51\,
	combout => \UART_timer[13]~52_combout\,
	cout => \UART_timer[13]~53\);

-- Location: LCFF_X35_Y32_N1
\UART_timer[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[13]~52_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(13));

-- Location: LCCOMB_X35_Y32_N2
\UART_timer[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[14]~54_combout\ = (UART_timer(14) & (\UART_timer[13]~53\ $ (GND))) # (!UART_timer(14) & (!\UART_timer[13]~53\ & VCC))
-- \UART_timer[14]~55\ = CARRY((UART_timer(14) & !\UART_timer[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(14),
	datad => VCC,
	cin => \UART_timer[13]~53\,
	combout => \UART_timer[14]~54_combout\,
	cout => \UART_timer[14]~55\);

-- Location: LCFF_X35_Y32_N3
\UART_timer[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[14]~54_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(14));

-- Location: LCCOMB_X35_Y32_N4
\UART_timer[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[15]~56_combout\ = (UART_timer(15) & (!\UART_timer[14]~55\)) # (!UART_timer(15) & ((\UART_timer[14]~55\) # (GND)))
-- \UART_timer[15]~57\ = CARRY((!\UART_timer[14]~55\) # (!UART_timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(15),
	datad => VCC,
	cin => \UART_timer[14]~55\,
	combout => \UART_timer[15]~56_combout\,
	cout => \UART_timer[15]~57\);

-- Location: LCFF_X35_Y32_N5
\UART_timer[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[15]~56_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(15));

-- Location: LCCOMB_X35_Y32_N6
\UART_timer[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[16]~58_combout\ = (UART_timer(16) & (\UART_timer[15]~57\ $ (GND))) # (!UART_timer(16) & (!\UART_timer[15]~57\ & VCC))
-- \UART_timer[16]~59\ = CARRY((UART_timer(16) & !\UART_timer[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(16),
	datad => VCC,
	cin => \UART_timer[15]~57\,
	combout => \UART_timer[16]~58_combout\,
	cout => \UART_timer[16]~59\);

-- Location: LCCOMB_X35_Y32_N8
\UART_timer[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[17]~60_combout\ = (UART_timer(17) & (!\UART_timer[16]~59\)) # (!UART_timer(17) & ((\UART_timer[16]~59\) # (GND)))
-- \UART_timer[17]~61\ = CARRY((!\UART_timer[16]~59\) # (!UART_timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(17),
	datad => VCC,
	cin => \UART_timer[16]~59\,
	combout => \UART_timer[17]~60_combout\,
	cout => \UART_timer[17]~61\);

-- Location: LCFF_X35_Y32_N9
\UART_timer[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[17]~60_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(17));

-- Location: LCCOMB_X35_Y32_N10
\UART_timer[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[18]~62_combout\ = (UART_timer(18) & (\UART_timer[17]~61\ $ (GND))) # (!UART_timer(18) & (!\UART_timer[17]~61\ & VCC))
-- \UART_timer[18]~63\ = CARRY((UART_timer(18) & !\UART_timer[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(18),
	datad => VCC,
	cin => \UART_timer[17]~61\,
	combout => \UART_timer[18]~62_combout\,
	cout => \UART_timer[18]~63\);

-- Location: LCFF_X35_Y32_N11
\UART_timer[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[18]~62_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(18));

-- Location: LCFF_X35_Y32_N7
\UART_timer[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[16]~58_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(16));

-- Location: LCCOMB_X35_Y32_N28
\always1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~5_combout\ = (UART_timer(19) & (!UART_timer(18) & (UART_timer(17) & !UART_timer(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(19),
	datab => UART_timer(18),
	datac => UART_timer(17),
	datad => UART_timer(16),
	combout => \always1~5_combout\);

-- Location: LCCOMB_X35_Y32_N14
\UART_timer[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[20]~66_combout\ = (UART_timer(20) & (\UART_timer[19]~65\ $ (GND))) # (!UART_timer(20) & (!\UART_timer[19]~65\ & VCC))
-- \UART_timer[20]~67\ = CARRY((UART_timer(20) & !\UART_timer[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(20),
	datad => VCC,
	cin => \UART_timer[19]~65\,
	combout => \UART_timer[20]~66_combout\,
	cout => \UART_timer[20]~67\);

-- Location: LCFF_X35_Y32_N15
\UART_timer[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[20]~66_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(20));

-- Location: LCCOMB_X35_Y32_N16
\UART_timer[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[21]~68_combout\ = (UART_timer(21) & (!\UART_timer[20]~67\)) # (!UART_timer(21) & ((\UART_timer[20]~67\) # (GND)))
-- \UART_timer[21]~69\ = CARRY((!\UART_timer[20]~67\) # (!UART_timer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(21),
	datad => VCC,
	cin => \UART_timer[20]~67\,
	combout => \UART_timer[21]~68_combout\,
	cout => \UART_timer[21]~69\);

-- Location: LCFF_X35_Y32_N17
\UART_timer[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[21]~68_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(21));

-- Location: LCFF_X35_Y32_N19
\UART_timer[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[22]~70_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(22));

-- Location: LCCOMB_X35_Y32_N30
\always1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~6_combout\ = (UART_timer(23) & (UART_timer(20) & (UART_timer(21) & UART_timer(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(23),
	datab => UART_timer(20),
	datac => UART_timer(21),
	datad => UART_timer(22),
	combout => \always1~6_combout\);

-- Location: LCFF_X35_Y33_N25
\UART_timer[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[9]~44_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(9));

-- Location: LCCOMB_X35_Y33_N4
\always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~2_combout\ = (!UART_timer(11) & (!UART_timer(10) & (!UART_timer(9) & !UART_timer(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(11),
	datab => UART_timer(10),
	datac => UART_timer(9),
	datad => UART_timer(8),
	combout => \always1~2_combout\);

-- Location: LCFF_X35_Y33_N17
\UART_timer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[5]~36_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \always1~9_combout\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(5));

-- Location: LCCOMB_X35_Y33_N2
\always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~1_combout\ = (!UART_timer(7) & (UART_timer(4) & (UART_timer(5) & UART_timer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(7),
	datab => UART_timer(4),
	datac => UART_timer(5),
	datad => UART_timer(6),
	combout => \always1~1_combout\);

-- Location: LCCOMB_X35_Y32_N26
\always1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~3_combout\ = (UART_timer(15) & (UART_timer(14) & (UART_timer(12) & UART_timer(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(15),
	datab => UART_timer(14),
	datac => UART_timer(12),
	datad => UART_timer(13),
	combout => \always1~3_combout\);

-- Location: LCCOMB_X36_Y32_N0
\always1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~4_combout\ = (\always1~0_combout\ & (\always1~2_combout\ & (\always1~1_combout\ & \always1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => \always1~2_combout\,
	datac => \always1~1_combout\,
	datad => \always1~3_combout\,
	combout => \always1~4_combout\);

-- Location: LCCOMB_X36_Y32_N4
\always1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~8_combout\ = (\always1~7_combout\ & (\always1~5_combout\ & (\always1~6_combout\ & \always1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~7_combout\,
	datab => \always1~5_combout\,
	datac => \always1~6_combout\,
	datad => \always1~4_combout\,
	combout => \always1~8_combout\);

-- Location: LCCOMB_X37_Y34_N16
\UART_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~2_combout\ = (\UART_unit|SRAM_address\(1) & (!\UART_unit|Add1~1\)) # (!\UART_unit|SRAM_address\(1) & ((\UART_unit|Add1~1\) # (GND)))
-- \UART_unit|Add1~3\ = CARRY((!\UART_unit|Add1~1\) # (!\UART_unit|SRAM_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(1),
	datad => VCC,
	cin => \UART_unit|Add1~1\,
	combout => \UART_unit|Add1~2_combout\,
	cout => \UART_unit|Add1~3\);

-- Location: LCCOMB_X38_Y34_N14
\UART_unit|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~52_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~2_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~2_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~52_combout\);

-- Location: LCCOMB_X38_Y34_N20
\UART_unit|SRAM_address[16]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[16]~1_combout\ = (\UART_rx_initialize~regout\) # (((\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & !\UART_unit|UART_RX|Empty~regout\)) # (!\UART_unit|SRAM_address[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	datab => \UART_rx_initialize~regout\,
	datac => \UART_unit|SRAM_address[16]~0_combout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|SRAM_address[16]~1_combout\);

-- Location: LCFF_X38_Y34_N15
\UART_unit|SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~52_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(1));

-- Location: LCCOMB_X37_Y34_N18
\UART_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~4_combout\ = (\UART_unit|SRAM_address\(2) & (\UART_unit|Add1~3\ $ (GND))) # (!\UART_unit|SRAM_address\(2) & (!\UART_unit|Add1~3\ & VCC))
-- \UART_unit|Add1~5\ = CARRY((\UART_unit|SRAM_address\(2) & !\UART_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(2),
	datad => VCC,
	cin => \UART_unit|Add1~3\,
	combout => \UART_unit|Add1~4_combout\,
	cout => \UART_unit|Add1~5\);

-- Location: LCCOMB_X38_Y34_N12
\UART_unit|Add1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~51_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~4_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~4_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~51_combout\);

-- Location: LCFF_X38_Y34_N13
\UART_unit|SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~51_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(2));

-- Location: LCCOMB_X37_Y34_N20
\UART_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~6_combout\ = (\UART_unit|SRAM_address\(3) & (!\UART_unit|Add1~5\)) # (!\UART_unit|SRAM_address\(3) & ((\UART_unit|Add1~5\) # (GND)))
-- \UART_unit|Add1~7\ = CARRY((!\UART_unit|Add1~5\) # (!\UART_unit|SRAM_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(3),
	datad => VCC,
	cin => \UART_unit|Add1~5\,
	combout => \UART_unit|Add1~6_combout\,
	cout => \UART_unit|Add1~7\);

-- Location: LCCOMB_X38_Y34_N18
\UART_unit|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~50_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~6_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_rx_initialize~regout\,
	datac => \UART_unit|Add1~6_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~50_combout\);

-- Location: LCFF_X38_Y34_N19
\UART_unit|SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~50_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(3));

-- Location: LCCOMB_X37_Y34_N22
\UART_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~8_combout\ = (\UART_unit|SRAM_address\(4) & (\UART_unit|Add1~7\ $ (GND))) # (!\UART_unit|SRAM_address\(4) & (!\UART_unit|Add1~7\ & VCC))
-- \UART_unit|Add1~9\ = CARRY((\UART_unit|SRAM_address\(4) & !\UART_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(4),
	datad => VCC,
	cin => \UART_unit|Add1~7\,
	combout => \UART_unit|Add1~8_combout\,
	cout => \UART_unit|Add1~9\);

-- Location: LCCOMB_X38_Y34_N28
\UART_unit|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~10_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~8_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~8_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~10_combout\);

-- Location: LCFF_X38_Y34_N29
\UART_unit|SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(4));

-- Location: LCCOMB_X37_Y34_N2
\UART_unit|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~3_combout\ = (((!\UART_unit|SRAM_address\(3)) # (!\UART_unit|SRAM_address\(2))) # (!\UART_unit|SRAM_address\(4))) # (!\UART_unit|SRAM_address\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(5),
	datab => \UART_unit|SRAM_address\(4),
	datac => \UART_unit|SRAM_address\(2),
	datad => \UART_unit|SRAM_address\(3),
	combout => \UART_unit|LessThan1~3_combout\);

-- Location: LCCOMB_X37_Y34_N24
\UART_unit|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~11_combout\ = (\UART_unit|SRAM_address\(5) & (!\UART_unit|Add1~9\)) # (!\UART_unit|SRAM_address\(5) & ((\UART_unit|Add1~9\) # (GND)))
-- \UART_unit|Add1~12\ = CARRY((!\UART_unit|Add1~9\) # (!\UART_unit|SRAM_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(5),
	datad => VCC,
	cin => \UART_unit|Add1~9\,
	combout => \UART_unit|Add1~11_combout\,
	cout => \UART_unit|Add1~12\);

-- Location: LCCOMB_X38_Y34_N30
\UART_unit|Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~13_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~11_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~11_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~13_combout\);

-- Location: LCFF_X38_Y34_N31
\UART_unit|SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~13_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(5));

-- Location: LCCOMB_X37_Y34_N26
\UART_unit|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~14_combout\ = (\UART_unit|SRAM_address\(6) & (\UART_unit|Add1~12\ $ (GND))) # (!\UART_unit|SRAM_address\(6) & (!\UART_unit|Add1~12\ & VCC))
-- \UART_unit|Add1~15\ = CARRY((\UART_unit|SRAM_address\(6) & !\UART_unit|Add1~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(6),
	datad => VCC,
	cin => \UART_unit|Add1~12\,
	combout => \UART_unit|Add1~14_combout\,
	cout => \UART_unit|Add1~15\);

-- Location: LCCOMB_X37_Y34_N28
\UART_unit|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~17_combout\ = (\UART_unit|SRAM_address\(7) & (!\UART_unit|Add1~15\)) # (!\UART_unit|SRAM_address\(7) & ((\UART_unit|Add1~15\) # (GND)))
-- \UART_unit|Add1~18\ = CARRY((!\UART_unit|Add1~15\) # (!\UART_unit|SRAM_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(7),
	datad => VCC,
	cin => \UART_unit|Add1~15\,
	combout => \UART_unit|Add1~17_combout\,
	cout => \UART_unit|Add1~18\);

-- Location: LCCOMB_X37_Y34_N30
\UART_unit|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~20_combout\ = (\UART_unit|SRAM_address\(8) & (\UART_unit|Add1~18\ $ (GND))) # (!\UART_unit|SRAM_address\(8) & (!\UART_unit|Add1~18\ & VCC))
-- \UART_unit|Add1~21\ = CARRY((\UART_unit|SRAM_address\(8) & !\UART_unit|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datad => VCC,
	cin => \UART_unit|Add1~18\,
	combout => \UART_unit|Add1~20_combout\,
	cout => \UART_unit|Add1~21\);

-- Location: LCCOMB_X37_Y33_N0
\UART_unit|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~23_combout\ = (\UART_unit|SRAM_address\(9) & (!\UART_unit|Add1~21\)) # (!\UART_unit|SRAM_address\(9) & ((\UART_unit|Add1~21\) # (GND)))
-- \UART_unit|Add1~24\ = CARRY((!\UART_unit|Add1~21\) # (!\UART_unit|SRAM_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(9),
	datad => VCC,
	cin => \UART_unit|Add1~21\,
	combout => \UART_unit|Add1~23_combout\,
	cout => \UART_unit|Add1~24\);

-- Location: LCCOMB_X37_Y33_N18
\UART_unit|Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~25_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~23_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~23_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~25_combout\);

-- Location: LCFF_X37_Y33_N19
\UART_unit|SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~25_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(9));

-- Location: LCCOMB_X37_Y33_N2
\UART_unit|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~26_combout\ = (\UART_unit|SRAM_address\(10) & (\UART_unit|Add1~24\ $ (GND))) # (!\UART_unit|SRAM_address\(10) & (!\UART_unit|Add1~24\ & VCC))
-- \UART_unit|Add1~27\ = CARRY((\UART_unit|SRAM_address\(10) & !\UART_unit|Add1~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(10),
	datad => VCC,
	cin => \UART_unit|Add1~24\,
	combout => \UART_unit|Add1~26_combout\,
	cout => \UART_unit|Add1~27\);

-- Location: LCCOMB_X37_Y33_N28
\UART_unit|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~28_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~26_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~26_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~28_combout\);

-- Location: LCFF_X37_Y33_N29
\UART_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(10));

-- Location: LCCOMB_X37_Y33_N4
\UART_unit|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~29_combout\ = (\UART_unit|SRAM_address\(11) & (!\UART_unit|Add1~27\)) # (!\UART_unit|SRAM_address\(11) & ((\UART_unit|Add1~27\) # (GND)))
-- \UART_unit|Add1~30\ = CARRY((!\UART_unit|Add1~27\) # (!\UART_unit|SRAM_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(11),
	datad => VCC,
	cin => \UART_unit|Add1~27\,
	combout => \UART_unit|Add1~29_combout\,
	cout => \UART_unit|Add1~30\);

-- Location: LCCOMB_X37_Y33_N22
\UART_unit|Add1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~31_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~29_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|Add1~29_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~31_combout\);

-- Location: LCFF_X37_Y33_N23
\UART_unit|SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~31_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(11));

-- Location: LCCOMB_X37_Y33_N6
\UART_unit|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~32_combout\ = (\UART_unit|SRAM_address\(12) & (\UART_unit|Add1~30\ $ (GND))) # (!\UART_unit|SRAM_address\(12) & (!\UART_unit|Add1~30\ & VCC))
-- \UART_unit|Add1~33\ = CARRY((\UART_unit|SRAM_address\(12) & !\UART_unit|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(12),
	datad => VCC,
	cin => \UART_unit|Add1~30\,
	combout => \UART_unit|Add1~32_combout\,
	cout => \UART_unit|Add1~33\);

-- Location: LCCOMB_X37_Y33_N24
\UART_unit|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~34_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~32_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|Add1~32_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~34_combout\);

-- Location: LCFF_X37_Y33_N25
\UART_unit|SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~34_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(12));

-- Location: LCCOMB_X37_Y33_N8
\UART_unit|Add1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~35_combout\ = (\UART_unit|SRAM_address\(13) & (!\UART_unit|Add1~33\)) # (!\UART_unit|SRAM_address\(13) & ((\UART_unit|Add1~33\) # (GND)))
-- \UART_unit|Add1~36\ = CARRY((!\UART_unit|Add1~33\) # (!\UART_unit|SRAM_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(13),
	datad => VCC,
	cin => \UART_unit|Add1~33\,
	combout => \UART_unit|Add1~35_combout\,
	cout => \UART_unit|Add1~36\);

-- Location: LCCOMB_X37_Y33_N26
\UART_unit|Add1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~37_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~35_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|Add1~35_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~37_combout\);

-- Location: LCFF_X37_Y33_N27
\UART_unit|SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~37_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(13));

-- Location: LCCOMB_X37_Y35_N16
\UART_unit|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~1_combout\ = (((!\UART_unit|SRAM_address\(10)) # (!\UART_unit|SRAM_address\(13))) # (!\UART_unit|SRAM_address\(12))) # (!\UART_unit|SRAM_address\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(11),
	datab => \UART_unit|SRAM_address\(12),
	datac => \UART_unit|SRAM_address\(13),
	datad => \UART_unit|SRAM_address\(10),
	combout => \UART_unit|LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y34_N26
\UART_unit|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~19_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~17_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~17_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~19_combout\);

-- Location: LCFF_X38_Y34_N27
\UART_unit|SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~19_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(7));

-- Location: LCCOMB_X38_Y34_N16
\UART_unit|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~16_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~14_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~14_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~16_combout\);

-- Location: LCFF_X38_Y34_N17
\UART_unit|SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(6));

-- Location: LCCOMB_X37_Y34_N0
\UART_unit|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~2_combout\ = (((!\UART_unit|SRAM_address\(9)) # (!\UART_unit|SRAM_address\(6))) # (!\UART_unit|SRAM_address\(7))) # (!\UART_unit|SRAM_address\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datab => \UART_unit|SRAM_address\(7),
	datac => \UART_unit|SRAM_address\(6),
	datad => \UART_unit|SRAM_address\(9),
	combout => \UART_unit|LessThan1~2_combout\);

-- Location: LCCOMB_X37_Y34_N4
\UART_unit|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~4_combout\ = (\UART_unit|LessThan1~0_combout\) # ((\UART_unit|LessThan1~3_combout\) # ((\UART_unit|LessThan1~1_combout\) # (\UART_unit|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~0_combout\,
	datab => \UART_unit|LessThan1~3_combout\,
	datac => \UART_unit|LessThan1~1_combout\,
	datad => \UART_unit|LessThan1~2_combout\,
	combout => \UART_unit|LessThan1~4_combout\);

-- Location: LCCOMB_X37_Y34_N6
\UART_unit|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~5_combout\ = ((\UART_unit|LessThan1~4_combout\) # (!\UART_unit|SRAM_address\(0))) # (!\UART_unit|SRAM_address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(1),
	datac => \UART_unit|LessThan1~4_combout\,
	datad => \UART_unit|SRAM_address\(0),
	combout => \UART_unit|LessThan1~5_combout\);

-- Location: LCCOMB_X38_Y34_N24
\UART_unit|Add1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~53_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~0_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Add1~0_combout\,
	datab => \UART_unit|LessThan1~5_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~53_combout\);

-- Location: LCFF_X38_Y34_N25
\UART_unit|SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~53_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(0));

-- Location: LCCOMB_X35_Y34_N8
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~4_combout\ & (!\UART_unit|SRAM_address\(0) & !\UART_unit|SRAM_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datac => \UART_unit|SRAM_address\(0),
	datad => \UART_unit|SRAM_address\(1),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X36_Y34_N24
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\UART_state.S_ENABLE_UART_RX~regout\) # ((\UART_state.S_WAIT_UART_RX~regout\ & ((\Equal1~5_combout\) # (!\always1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \UART_state.S_ENABLE_UART_RX~regout\,
	datac => \UART_state.S_WAIT_UART_RX~regout\,
	datad => \always1~8_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X36_Y34_N25
\UART_state.S_WAIT_UART_RX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \ALT_INV_state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_state.S_WAIT_UART_RX~regout\);

-- Location: LCCOMB_X35_Y34_N12
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\always1~8_combout\ & (!\Equal1~5_combout\ & \UART_state.S_WAIT_UART_RX~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \always1~8_combout\,
	datac => \Equal1~5_combout\,
	datad => \UART_state.S_WAIT_UART_RX~regout\,
	combout => \Selector6~1_combout\);

-- Location: LCFF_X35_Y34_N13
UART_rx_initialize : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector6~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \state.S_TOP_UART~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_rx_initialize~regout\);

-- Location: LCCOMB_X40_Y30_N22
\UART_unit|UART_RX|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector25~0_combout\ = (\UART_unit|UART_RX|data_buffer\(5) & \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|data_buffer\(5),
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	combout => \UART_unit|UART_RX|Selector25~0_combout\);

-- Location: LCFF_X40_Y30_N23
\UART_unit|UART_RX|data_buffer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector25~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(4));

-- Location: LCCOMB_X40_Y30_N0
\UART_unit|UART_RX|RX_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[4]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(4),
	combout => \UART_unit|UART_RX|RX_data[4]~feeder_combout\);

-- Location: LCFF_X40_Y30_N1
\UART_unit|UART_RX|RX_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[4]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(4));

-- Location: LCFF_X40_Y30_N15
\UART_unit|UART_RX|RX_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|UART_RX|data_buffer\(2),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(2));

-- Location: LCCOMB_X40_Y30_N12
\UART_unit|UART_RX|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector26~0_combout\ = (\UART_unit|UART_RX|data_buffer\(4) & \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|data_buffer\(4),
	datac => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~regout\,
	combout => \UART_unit|UART_RX|Selector26~0_combout\);

-- Location: LCFF_X40_Y30_N13
\UART_unit|UART_RX|data_buffer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector26~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(3));

-- Location: LCCOMB_X40_Y30_N26
\UART_unit|UART_RX|RX_data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[3]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(3),
	combout => \UART_unit|UART_RX|RX_data[3]~feeder_combout\);

-- Location: LCFF_X40_Y30_N27
\UART_unit|UART_RX|RX_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[3]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(3));

-- Location: LCCOMB_X40_Y30_N14
\UART_unit|new_line_count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|new_line_count[1]~1_combout\ = (\UART_unit|UART_RX|RX_data\(5)) # ((\UART_unit|UART_RX|RX_data\(4)) # ((\UART_unit|UART_RX|RX_data\(2)) # (!\UART_unit|UART_RX|RX_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data\(5),
	datab => \UART_unit|UART_RX|RX_data\(4),
	datac => \UART_unit|UART_RX|RX_data\(2),
	datad => \UART_unit|UART_RX|RX_data\(3),
	combout => \UART_unit|new_line_count[1]~1_combout\);

-- Location: LCCOMB_X37_Y31_N16
\UART_unit|new_line_count[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|new_line_count[1]~3_combout\ = (\UART_rx_initialize~regout\) # ((!\UART_unit|new_line_count[1]~2_combout\ & (!\UART_unit|new_line_count[1]~0_combout\ & !\UART_unit|new_line_count[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|new_line_count[1]~2_combout\,
	datab => \UART_unit|new_line_count[1]~0_combout\,
	datac => \UART_rx_initialize~regout\,
	datad => \UART_unit|new_line_count[1]~1_combout\,
	combout => \UART_unit|new_line_count[1]~3_combout\);

-- Location: LCCOMB_X38_Y30_N22
\UART_unit|new_line_count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|new_line_count[0]~4_combout\ = (\UART_unit|new_line_count\(0) & ((!\UART_unit|new_line_count[1]~3_combout\))) # (!\UART_unit|new_line_count\(0) & (!\UART_rx_initialize~regout\ & \UART_unit|new_line_count[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datac => \UART_unit|new_line_count\(0),
	datad => \UART_unit|new_line_count[1]~3_combout\,
	combout => \UART_unit|new_line_count[0]~4_combout\);

-- Location: LCFF_X38_Y30_N23
\UART_unit|new_line_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|new_line_count[0]~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|new_line_count\(0));

-- Location: LCCOMB_X38_Y30_N14
\UART_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add0~0_combout\ = \UART_unit|new_line_count\(1) $ (\UART_unit|new_line_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|new_line_count\(1),
	datad => \UART_unit|new_line_count\(0),
	combout => \UART_unit|Add0~0_combout\);

-- Location: LCFF_X38_Y30_N15
\UART_unit|new_line_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add0~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_rx_initialize~regout\,
	ena => \UART_unit|new_line_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|new_line_count\(1));

-- Location: LCCOMB_X38_Y30_N20
\UART_unit|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector1~0_combout\ = (\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\) # ((\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\ & ((!\UART_unit|new_line_count\(1)) # (!\UART_unit|new_line_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\,
	datab => \UART_unit|new_line_count\(0),
	datac => \UART_unit|new_line_count\(1),
	datad => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\,
	combout => \UART_unit|Selector1~0_combout\);

-- Location: LCCOMB_X38_Y30_N28
\UART_unit|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector1~1_combout\ = (\UART_unit|Selector1~0_combout\ & !\UART_unit|UART_RX|Empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|Selector1~0_combout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector1~1_combout\);

-- Location: LCFF_X38_Y30_N29
\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector1~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_rx_initialize~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\);

-- Location: LCCOMB_X38_Y30_N26
\UART_unit|UART_SRAM_state~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~26_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\) # (\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_1~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|UART_SRAM_state~26_combout\);

-- Location: LCFF_X38_Y30_N27
\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~26_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\);

-- Location: LCCOMB_X38_Y30_N12
\UART_unit|Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~2_combout\ = (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\) # ((\UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\) # 
-- (\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_STRIP_FILE_HEADER_2~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector26~2_combout\);

-- Location: LCCOMB_X38_Y30_N8
\UART_unit|Selector26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~3_combout\ = (\UART_unit|Selector26~1_combout\) # ((\UART_unit|UART_rx_unload_data~regout\ & ((\UART_unit|Selector26~2_combout\) # (!\UART_unit|UART_SRAM_state.S_US_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Selector26~1_combout\,
	datab => \UART_unit|Selector26~2_combout\,
	datac => \UART_unit|UART_rx_unload_data~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\,
	combout => \UART_unit|Selector26~3_combout\);

-- Location: LCFF_X38_Y30_N9
\UART_unit|UART_rx_unload_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector26~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_rx_initialize~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_rx_unload_data~regout\);

-- Location: LCCOMB_X41_Y30_N24
\UART_unit|UART_RX|Empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Empty~1_combout\ = (\UART_unit|UART_RX|RX_data_in~regout\ & ((\UART_unit|UART_RX|Empty~0_combout\) # ((\UART_unit|UART_RX|Empty~regout\ & !\UART_unit|UART_rx_unload_data~regout\)))) # (!\UART_unit|UART_RX|RX_data_in~regout\ & 
-- (((\UART_unit|UART_RX|Empty~regout\ & !\UART_unit|UART_rx_unload_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data_in~regout\,
	datab => \UART_unit|UART_RX|Empty~0_combout\,
	datac => \UART_unit|UART_RX|Empty~regout\,
	datad => \UART_unit|UART_rx_unload_data~regout\,
	combout => \UART_unit|UART_RX|Empty~1_combout\);

-- Location: LCFF_X41_Y30_N25
\UART_unit|UART_RX|Empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Empty~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|Empty~regout\);

-- Location: LCCOMB_X35_Y34_N18
\UART_unit|UART_SRAM_state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~22_combout\ = (\UART_rx_initialize~regout\) # ((!\UART_rx_enable~regout\ & !\UART_unit|UART_SRAM_state.S_US_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_enable~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\,
	datad => \UART_rx_initialize~regout\,
	combout => \UART_unit|UART_SRAM_state~22_combout\);

-- Location: LCCOMB_X38_Y34_N10
\UART_unit|UART_SRAM_state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~23_combout\ = (!\UART_unit|UART_SRAM_state~22_combout\ & ((\UART_unit|LessThan1~5_combout\) # ((\UART_unit|UART_RX|Empty~regout\) # (!\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|UART_RX|Empty~regout\,
	datac => \UART_unit|UART_SRAM_state~22_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|UART_SRAM_state~23_combout\);

-- Location: LCFF_X38_Y34_N11
\UART_unit|UART_SRAM_state.S_US_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~23_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\);

-- Location: LCCOMB_X35_Y30_N0
\UART_unit|SRAM_address[16]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[16]~0_combout\ = (\UART_unit|UART_SRAM_state.S_US_IDLE~regout\) # (!\UART_rx_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_rx_enable~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_IDLE~regout\,
	combout => \UART_unit|SRAM_address[16]~0_combout\);

-- Location: LCCOMB_X38_Y30_N18
\UART_unit|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector3~1_combout\ = (\UART_unit|Selector3~0_combout\) # (((\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\ & !\UART_unit|UART_RX|Empty~regout\)) # (!\UART_unit|SRAM_address[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Selector3~0_combout\,
	datab => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\,
	datac => \UART_unit|SRAM_address[16]~0_combout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector3~1_combout\);

-- Location: LCCOMB_X38_Y30_N2
\UART_unit|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector3~2_combout\ = (\UART_unit|Selector3~1_combout\) # ((\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & (\UART_unit|LessThan1~5_combout\ & !\UART_unit|UART_RX|Empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	datab => \UART_unit|Selector3~1_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector3~2_combout\);

-- Location: LCFF_X38_Y30_N3
\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector3~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \UART_rx_initialize~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\);

-- Location: LCCOMB_X38_Y30_N4
\UART_unit|UART_SRAM_state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~25_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\) # (\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|UART_SRAM_state~25_combout\);

-- Location: LCFF_X38_Y30_N5
\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~25_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\);

-- Location: LCCOMB_X38_Y30_N10
\UART_unit|UART_SRAM_state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~24_combout\ = (!\UART_rx_initialize~regout\ & (!\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\) # (\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_WRITE_FIRST_BYTE~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|UART_SRAM_state~24_combout\);

-- Location: LCFF_X38_Y30_N11
\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~24_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\);

-- Location: LCCOMB_X36_Y30_N0
\UART_unit|SRAM_write_data[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[1]~1_combout\ = (\UART_rx_initialize~regout\) # ((\UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\ & \UART_unit|UART_RX|Empty~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datac => \UART_unit|UART_SRAM_state.S_US_START_SECOND_BYTE_RECEIVE~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|SRAM_write_data[1]~1_combout\);

-- Location: LCFF_X36_Y30_N25
\UART_unit|SRAM_write_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(0));

-- Location: LCCOMB_X35_Y30_N26
\Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\UART_unit|SRAM_write_data\(0) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_write_data\(0),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector43~0_combout\);

-- Location: LCFF_X35_Y30_N27
\SRAM_unit|SRAM_write_data_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector43~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(0));

-- Location: LCCOMB_X35_Y34_N20
\UART_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_state~12_combout\ = (!\UART_state~11_combout\ & (((\Equal1~5_combout\) # (!\UART_state.S_WAIT_UART_RX~regout\)) # (!\always1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_state~11_combout\,
	datab => \always1~8_combout\,
	datac => \Equal1~5_combout\,
	datad => \UART_state.S_WAIT_UART_RX~regout\,
	combout => \UART_state~12_combout\);

-- Location: LCFF_X35_Y34_N21
\UART_state.S_UART_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_state~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_state.S_UART_IDLE~regout\);

-- Location: LCCOMB_X35_Y34_N26
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & (((\UART_unit|SRAM_we_n~regout\ & \UART_state.S_UART_IDLE~regout\)) # (!\state.S_TOP_UART~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datab => \UART_unit|SRAM_we_n~regout\,
	datac => \UART_state.S_UART_IDLE~regout\,
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector44~0_combout\);

-- Location: LCFF_X35_Y34_N27
\SRAM_unit|SRAM_WE_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector44~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_WE_N_O~regout\);

-- Location: LCFF_X36_Y30_N11
\UART_unit|UART_RX|RX_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|UART_RX|data_buffer\(1),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(1));

-- Location: LCCOMB_X36_Y30_N26
\UART_unit|SRAM_write_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~2_combout\ = (!\UART_rx_initialize~regout\ & \UART_unit|UART_RX|RX_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_RX|RX_data\(1),
	combout => \UART_unit|SRAM_write_data~2_combout\);

-- Location: LCFF_X36_Y30_N27
\UART_unit|SRAM_write_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(1));

-- Location: LCCOMB_X35_Y30_N12
\Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\UART_unit|SRAM_write_data\(1) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|SRAM_write_data\(1),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector42~0_combout\);

-- Location: LCFF_X35_Y30_N13
\SRAM_unit|SRAM_write_data_buf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector42~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(1));

-- Location: LCCOMB_X36_Y30_N28
\UART_unit|SRAM_write_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~3_combout\ = (!\UART_rx_initialize~regout\ & \UART_unit|UART_RX|RX_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_RX|RX_data\(2),
	combout => \UART_unit|SRAM_write_data~3_combout\);

-- Location: LCFF_X36_Y30_N29
\UART_unit|SRAM_write_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(2));

-- Location: LCCOMB_X35_Y30_N14
\Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\UART_unit|SRAM_write_data\(2) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_write_data\(2),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector41~0_combout\);

-- Location: LCFF_X35_Y30_N15
\SRAM_unit|SRAM_write_data_buf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector41~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(2));

-- Location: LCCOMB_X37_Y30_N14
\UART_unit|SRAM_write_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~4_combout\ = (!\UART_rx_initialize~regout\ & \UART_unit|UART_RX|RX_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_RX|RX_data\(3),
	combout => \UART_unit|SRAM_write_data~4_combout\);

-- Location: LCFF_X36_Y30_N31
\UART_unit|SRAM_write_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|SRAM_write_data~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(3));

-- Location: LCCOMB_X35_Y30_N8
\Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\UART_unit|SRAM_write_data\(3) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_write_data\(3),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector40~0_combout\);

-- Location: LCFF_X35_Y30_N9
\SRAM_unit|SRAM_write_data_buf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector40~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(3));

-- Location: LCCOMB_X37_Y30_N16
\UART_unit|SRAM_write_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~5_combout\ = (\UART_unit|UART_RX|RX_data\(4) & !\UART_rx_initialize~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data\(4),
	datad => \UART_rx_initialize~regout\,
	combout => \UART_unit|SRAM_write_data~5_combout\);

-- Location: LCFF_X36_Y30_N17
\UART_unit|SRAM_write_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|SRAM_write_data~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(4));

-- Location: LCCOMB_X35_Y30_N2
\Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\UART_unit|SRAM_write_data\(4) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|SRAM_write_data\(4),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector39~0_combout\);

-- Location: LCFF_X35_Y30_N3
\SRAM_unit|SRAM_write_data_buf[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector39~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(4));

-- Location: LCCOMB_X35_Y30_N28
\Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\UART_unit|SRAM_write_data\(5) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_write_data\(5),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector38~0_combout\);

-- Location: LCFF_X35_Y30_N29
\SRAM_unit|SRAM_write_data_buf[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector38~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(5));

-- Location: LCCOMB_X37_Y30_N4
\UART_unit|SRAM_write_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~7_combout\ = (!\UART_rx_initialize~regout\ & \UART_unit|UART_RX|RX_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_RX|RX_data\(6),
	combout => \UART_unit|SRAM_write_data~7_combout\);

-- Location: LCCOMB_X36_Y30_N20
\UART_unit|SRAM_write_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[6]~feeder_combout\ = \UART_unit|SRAM_write_data~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~7_combout\,
	combout => \UART_unit|SRAM_write_data[6]~feeder_combout\);

-- Location: LCFF_X36_Y30_N21
\UART_unit|SRAM_write_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[6]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(6));

-- Location: LCCOMB_X35_Y30_N6
\Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\UART_unit|SRAM_write_data\(6) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_write_data\(6),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector37~0_combout\);

-- Location: LCFF_X35_Y30_N7
\SRAM_unit|SRAM_write_data_buf[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector37~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(6));

-- Location: LCCOMB_X37_Y30_N30
\UART_unit|SRAM_write_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~8_combout\ = (!\UART_rx_initialize~regout\ & \UART_unit|UART_RX|RX_data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_rx_initialize~regout\,
	datad => \UART_unit|UART_RX|RX_data\(7),
	combout => \UART_unit|SRAM_write_data~8_combout\);

-- Location: LCCOMB_X36_Y30_N22
\UART_unit|SRAM_write_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[7]~feeder_combout\ = \UART_unit|SRAM_write_data~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~8_combout\,
	combout => \UART_unit|SRAM_write_data[7]~feeder_combout\);

-- Location: LCFF_X36_Y30_N23
\UART_unit|SRAM_write_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[7]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(7));

-- Location: LCCOMB_X35_Y30_N16
\Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\UART_unit|SRAM_write_data\(7) & \state.S_TOP_UART~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_write_data\(7),
	datad => \state.S_TOP_UART~regout\,
	combout => \Selector36~0_combout\);

-- Location: LCFF_X35_Y30_N17
\SRAM_unit|SRAM_write_data_buf[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector36~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(7));

-- Location: LCCOMB_X37_Y30_N0
\UART_unit|SRAM_write_data[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[8]~feeder_combout\ = \UART_unit|SRAM_write_data~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~0_combout\,
	combout => \UART_unit|SRAM_write_data[8]~feeder_combout\);

-- Location: LCCOMB_X38_Y30_N30
\UART_unit|SRAM_write_data[15]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[15]~9_combout\ = (\UART_rx_initialize~regout\) # ((\UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\ & \UART_unit|UART_RX|Empty~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|UART_SRAM_state.S_US_START_FIRST_BYTE_RECEIVE~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|SRAM_write_data[15]~9_combout\);

-- Location: LCFF_X37_Y30_N1
\UART_unit|SRAM_write_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[8]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(8));

-- Location: LCCOMB_X37_Y30_N8
\Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datad => \UART_unit|SRAM_write_data\(8),
	combout => \Selector35~0_combout\);

-- Location: LCFF_X37_Y30_N9
\SRAM_unit|SRAM_write_data_buf[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector35~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(8));

-- Location: LCFF_X37_Y30_N19
\UART_unit|SRAM_write_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|SRAM_write_data~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(9));

-- Location: LCCOMB_X37_Y30_N2
\Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datad => \UART_unit|SRAM_write_data\(9),
	combout => \Selector34~0_combout\);

-- Location: LCFF_X37_Y30_N3
\SRAM_unit|SRAM_write_data_buf[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector34~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(9));

-- Location: LCCOMB_X37_Y30_N28
\UART_unit|SRAM_write_data[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[10]~feeder_combout\ = \UART_unit|SRAM_write_data~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~3_combout\,
	combout => \UART_unit|SRAM_write_data[10]~feeder_combout\);

-- Location: LCFF_X37_Y30_N29
\UART_unit|SRAM_write_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[10]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(10));

-- Location: LCCOMB_X37_Y30_N12
\Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datad => \UART_unit|SRAM_write_data\(10),
	combout => \Selector33~0_combout\);

-- Location: LCFF_X37_Y30_N13
\SRAM_unit|SRAM_write_data_buf[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector33~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(10));

-- Location: LCFF_X37_Y30_N15
\UART_unit|SRAM_write_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(11));

-- Location: LCCOMB_X37_Y30_N6
\Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datac => \UART_unit|SRAM_write_data\(11),
	combout => \Selector32~0_combout\);

-- Location: LCFF_X37_Y30_N7
\SRAM_unit|SRAM_write_data_buf[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector32~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(11));

-- Location: LCFF_X37_Y30_N17
\UART_unit|SRAM_write_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(12));

-- Location: LCCOMB_X37_Y30_N24
\Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datac => \UART_unit|SRAM_write_data\(12),
	combout => \Selector31~0_combout\);

-- Location: LCFF_X37_Y30_N25
\SRAM_unit|SRAM_write_data_buf[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector31~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(12));

-- Location: LCCOMB_X37_Y30_N26
\UART_unit|SRAM_write_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~6_combout\ = (\UART_unit|UART_RX|RX_data\(5) & !\UART_rx_initialize~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data\(5),
	datad => \UART_rx_initialize~regout\,
	combout => \UART_unit|SRAM_write_data~6_combout\);

-- Location: LCFF_X37_Y30_N27
\UART_unit|SRAM_write_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(13));

-- Location: LCCOMB_X37_Y30_N10
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datad => \UART_unit|SRAM_write_data\(13),
	combout => \Selector30~0_combout\);

-- Location: LCFF_X37_Y30_N11
\SRAM_unit|SRAM_write_data_buf[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector30~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(13));

-- Location: LCFF_X37_Y30_N5
\UART_unit|SRAM_write_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~7_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(14));

-- Location: LCCOMB_X37_Y30_N20
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datac => \UART_unit|SRAM_write_data\(14),
	combout => \Selector29~0_combout\);

-- Location: LCFF_X37_Y30_N21
\SRAM_unit|SRAM_write_data_buf[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector29~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(14));

-- Location: LCFF_X37_Y30_N31
\UART_unit|SRAM_write_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~8_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(15));

-- Location: LCCOMB_X37_Y30_N22
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\state.S_TOP_UART~regout\ & \UART_unit|SRAM_write_data\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_TOP_UART~regout\,
	datad => \UART_unit|SRAM_write_data\(15),
	combout => \Selector28~0_combout\);

-- Location: LCFF_X37_Y30_N23
\SRAM_unit|SRAM_write_data_buf[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector28~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(15));

-- Location: LCCOMB_X25_Y34_N12
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(4) & \M2_unit|FS_unit|state.S_FS_START~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \UART_unit|SRAM_address\(4),
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X25_Y34_N30
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|state.S_FS_START~regout\ & \UART_unit|SRAM_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \UART_unit|SRAM_address\(5),
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X25_Y34_N24
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|state.S_FS_START~regout\ & \UART_unit|SRAM_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \UART_unit|SRAM_address\(6),
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X25_Y34_N18
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|state.S_FS_START~regout\ & \UART_unit|SRAM_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \UART_unit|SRAM_address\(7),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X25_Y34_N20
\unit0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr6~0_combout\ = (\Selector21~0_combout\ & (!\Selector22~0_combout\ & (\Selector23~0_combout\ $ (!\Selector20~0_combout\)))) # (!\Selector21~0_combout\ & (\Selector23~0_combout\ & (\Selector22~0_combout\ $ (!\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \unit0|WideOr6~0_combout\);

-- Location: LCCOMB_X25_Y34_N6
\unit0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr5~0_combout\ = (\Selector22~0_combout\ & ((\Selector23~0_combout\ & ((\Selector20~0_combout\))) # (!\Selector23~0_combout\ & (\Selector21~0_combout\)))) # (!\Selector22~0_combout\ & (\Selector21~0_combout\ & (\Selector23~0_combout\ $ 
-- (\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \unit0|WideOr5~0_combout\);

-- Location: LCCOMB_X25_Y34_N0
\unit0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr4~0_combout\ = (\Selector21~0_combout\ & (\Selector20~0_combout\ & ((\Selector22~0_combout\) # (!\Selector23~0_combout\)))) # (!\Selector21~0_combout\ & (!\Selector23~0_combout\ & (\Selector22~0_combout\ & !\Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \unit0|WideOr4~0_combout\);

-- Location: LCCOMB_X25_Y34_N10
\unit0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr3~0_combout\ = (\Selector23~0_combout\ & (\Selector22~0_combout\ $ ((!\Selector21~0_combout\)))) # (!\Selector23~0_combout\ & ((\Selector22~0_combout\ & (!\Selector21~0_combout\ & \Selector20~0_combout\)) # (!\Selector22~0_combout\ & 
-- (\Selector21~0_combout\ & !\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \unit0|WideOr3~0_combout\);

-- Location: LCCOMB_X25_Y34_N28
\unit0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr2~0_combout\ = (\Selector22~0_combout\ & (\Selector23~0_combout\ & ((!\Selector20~0_combout\)))) # (!\Selector22~0_combout\ & ((\Selector21~0_combout\ & ((!\Selector20~0_combout\))) # (!\Selector21~0_combout\ & (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \unit0|WideOr2~0_combout\);

-- Location: LCCOMB_X25_Y34_N22
\unit0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr1~0_combout\ = (\Selector23~0_combout\ & (\Selector20~0_combout\ $ (((\Selector22~0_combout\) # (!\Selector21~0_combout\))))) # (!\Selector23~0_combout\ & (\Selector22~0_combout\ & (!\Selector21~0_combout\ & !\Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \unit0|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y34_N8
\unit0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr0~0_combout\ = (\Selector23~0_combout\ & ((\Selector20~0_combout\) # (\Selector22~0_combout\ $ (\Selector21~0_combout\)))) # (!\Selector23~0_combout\ & ((\Selector22~0_combout\) # (\Selector21~0_combout\ $ (\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \unit0|WideOr0~0_combout\);

-- Location: LCCOMB_X37_Y35_N18
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|state.S_FS_START~regout\ & \UART_unit|SRAM_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \UART_unit|SRAM_address\(9),
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X36_Y34_N22
\M2_unit|FS_unit|SRAM_address[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2_unit|FS_unit|SRAM_address[10]~0_combout\ = (\M2_unit|FS_unit|SRAM_address\(10)) # (!\M2_unit|FS_unit|state.S_FS_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_unit|FS_unit|state.S_FS_IDLE~regout\,
	datac => \M2_unit|FS_unit|SRAM_address\(10),
	combout => \M2_unit|FS_unit|SRAM_address[10]~0_combout\);

-- Location: LCFF_X36_Y34_N23
\M2_unit|FS_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M2_unit|FS_unit|SRAM_address[10]~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M2_unit|FS_unit|SRAM_address\(10));

-- Location: LCCOMB_X37_Y35_N28
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & ((\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|SRAM_address\(10))) # (!\state.S_TOP_M2~regout\ & ((\UART_unit|SRAM_address\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \M2_unit|FS_unit|SRAM_address\(10),
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \UART_unit|SRAM_address\(10),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X38_Y34_N4
\UART_unit|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~22_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~20_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_rx_initialize~regout\,
	datac => \UART_unit|Add1~20_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~22_combout\);

-- Location: LCFF_X38_Y34_N5
\UART_unit|SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~22_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(8));

-- Location: LCCOMB_X37_Y35_N24
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\state.S_TOP_M2~regout\ & (\M2_unit|FS_unit|state.S_FS_START~regout\ & \UART_unit|SRAM_address\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datac => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datad => \UART_unit|SRAM_address\(8),
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X37_Y35_N22
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(10)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \UART_unit|SRAM_address\(11),
	datad => \M2_unit|FS_unit|SRAM_address\(10),
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X37_Y35_N8
\unit1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr6~0_combout\ = (\Selector17~0_combout\ & (!\Selector18~0_combout\ & (\Selector19~0_combout\ $ (!\Selector16~0_combout\)))) # (!\Selector17~0_combout\ & (\Selector19~0_combout\ & (\Selector18~0_combout\ $ (!\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \unit1|WideOr6~0_combout\);

-- Location: LCCOMB_X37_Y35_N2
\unit1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr5~0_combout\ = (\Selector18~0_combout\ & ((\Selector19~0_combout\ & ((\Selector16~0_combout\))) # (!\Selector19~0_combout\ & (\Selector17~0_combout\)))) # (!\Selector18~0_combout\ & (\Selector17~0_combout\ & (\Selector19~0_combout\ $ 
-- (\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \unit1|WideOr5~0_combout\);

-- Location: LCCOMB_X37_Y35_N12
\unit1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr4~0_combout\ = (\Selector17~0_combout\ & (\Selector16~0_combout\ & ((\Selector18~0_combout\) # (!\Selector19~0_combout\)))) # (!\Selector17~0_combout\ & (\Selector18~0_combout\ & (!\Selector19~0_combout\ & !\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \unit1|WideOr4~0_combout\);

-- Location: LCCOMB_X37_Y35_N14
\unit1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr3~0_combout\ = (\Selector19~0_combout\ & (\Selector18~0_combout\ $ ((!\Selector17~0_combout\)))) # (!\Selector19~0_combout\ & ((\Selector18~0_combout\ & (!\Selector17~0_combout\ & \Selector16~0_combout\)) # (!\Selector18~0_combout\ & 
-- (\Selector17~0_combout\ & !\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \unit1|WideOr3~0_combout\);

-- Location: LCCOMB_X37_Y35_N0
\unit1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr2~0_combout\ = (\Selector18~0_combout\ & (((\Selector19~0_combout\ & !\Selector16~0_combout\)))) # (!\Selector18~0_combout\ & ((\Selector17~0_combout\ & ((!\Selector16~0_combout\))) # (!\Selector17~0_combout\ & (\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \unit1|WideOr2~0_combout\);

-- Location: LCCOMB_X37_Y35_N10
\unit1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr1~0_combout\ = (\Selector18~0_combout\ & (!\Selector16~0_combout\ & ((\Selector19~0_combout\) # (!\Selector17~0_combout\)))) # (!\Selector18~0_combout\ & (\Selector19~0_combout\ & (\Selector17~0_combout\ $ (!\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \unit1|WideOr1~0_combout\);

-- Location: LCCOMB_X37_Y35_N20
\unit1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr0~0_combout\ = (\Selector19~0_combout\ & ((\Selector16~0_combout\) # (\Selector18~0_combout\ $ (\Selector17~0_combout\)))) # (!\Selector19~0_combout\ & ((\Selector18~0_combout\) # (\Selector17~0_combout\ $ (\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \unit1|WideOr0~0_combout\);

-- Location: LCCOMB_X36_Y34_N20
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\state.S_TOP_M2~regout\ & \M2_unit|FS_unit|state.S_FS_START~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_START~regout\,
	combout => \Selector5~1_combout\);

-- Location: LCFF_X36_Y34_N21
\state.S_TOP_M2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector5~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_TOP_M2~regout\);

-- Location: LCCOMB_X37_Y33_N10
\UART_unit|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~38_combout\ = (\UART_unit|SRAM_address\(14) & (\UART_unit|Add1~36\ $ (GND))) # (!\UART_unit|SRAM_address\(14) & (!\UART_unit|Add1~36\ & VCC))
-- \UART_unit|Add1~39\ = CARRY((\UART_unit|SRAM_address\(14) & !\UART_unit|Add1~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(14),
	datad => VCC,
	cin => \UART_unit|Add1~36\,
	combout => \UART_unit|Add1~38_combout\,
	cout => \UART_unit|Add1~39\);

-- Location: LCCOMB_X37_Y33_N12
\UART_unit|Add1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~41_combout\ = (\UART_unit|SRAM_address\(15) & (!\UART_unit|Add1~39\)) # (!\UART_unit|SRAM_address\(15) & ((\UART_unit|Add1~39\) # (GND)))
-- \UART_unit|Add1~42\ = CARRY((!\UART_unit|Add1~39\) # (!\UART_unit|SRAM_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(15),
	datad => VCC,
	cin => \UART_unit|Add1~39\,
	combout => \UART_unit|Add1~41_combout\,
	cout => \UART_unit|Add1~42\);

-- Location: LCCOMB_X37_Y33_N30
\UART_unit|Add1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~43_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~41_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|Add1~41_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~43_combout\);

-- Location: LCFF_X37_Y33_N31
\UART_unit|SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~43_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(15));

-- Location: LCCOMB_X33_Y35_N28
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & (!\state.S_TOP_M2~regout\ & \UART_unit|SRAM_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(15),
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X37_Y33_N20
\UART_unit|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~40_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~38_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_initialize~regout\,
	datab => \UART_unit|Add1~38_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~40_combout\);

-- Location: LCFF_X37_Y33_N21
\UART_unit|SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~40_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(14));

-- Location: LCCOMB_X33_Y35_N26
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & (!\state.S_TOP_M2~regout\ & \UART_unit|SRAM_address\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(14),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X33_Y35_N8
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & (!\state.S_TOP_M2~regout\ & \UART_unit|SRAM_address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(12),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X37_Y35_N30
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(10)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \UART_unit|SRAM_address\(13),
	datad => \M2_unit|FS_unit|SRAM_address\(10),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X33_Y35_N22
\unit2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr6~0_combout\ = (\Selector12~0_combout\ & (\Selector15~0_combout\ & (\Selector13~0_combout\ $ (\Selector14~0_combout\)))) # (!\Selector12~0_combout\ & (!\Selector14~0_combout\ & (\Selector13~0_combout\ $ (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \unit2|WideOr6~0_combout\);

-- Location: LCCOMB_X33_Y35_N24
\unit2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr5~0_combout\ = (\Selector12~0_combout\ & ((\Selector15~0_combout\ & ((\Selector14~0_combout\))) # (!\Selector15~0_combout\ & (\Selector13~0_combout\)))) # (!\Selector12~0_combout\ & (\Selector13~0_combout\ & (\Selector15~0_combout\ $ 
-- (\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \unit2|WideOr5~0_combout\);

-- Location: LCCOMB_X33_Y35_N18
\unit2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr4~0_combout\ = (\Selector12~0_combout\ & (\Selector13~0_combout\ & ((\Selector14~0_combout\) # (!\Selector15~0_combout\)))) # (!\Selector12~0_combout\ & (!\Selector13~0_combout\ & (!\Selector15~0_combout\ & \Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \unit2|WideOr4~0_combout\);

-- Location: LCCOMB_X33_Y35_N20
\unit2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr3~0_combout\ = (\Selector15~0_combout\ & ((\Selector13~0_combout\ $ (!\Selector14~0_combout\)))) # (!\Selector15~0_combout\ & ((\Selector12~0_combout\ & (!\Selector13~0_combout\ & \Selector14~0_combout\)) # (!\Selector12~0_combout\ & 
-- (\Selector13~0_combout\ & !\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \unit2|WideOr3~0_combout\);

-- Location: LCCOMB_X33_Y35_N30
\unit2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr2~0_combout\ = (\Selector14~0_combout\ & (!\Selector12~0_combout\ & ((\Selector15~0_combout\)))) # (!\Selector14~0_combout\ & ((\Selector13~0_combout\ & (!\Selector12~0_combout\)) # (!\Selector13~0_combout\ & ((\Selector15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \unit2|WideOr2~0_combout\);

-- Location: LCCOMB_X33_Y35_N16
\unit2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr1~0_combout\ = (\Selector13~0_combout\ & (\Selector15~0_combout\ & (\Selector12~0_combout\ $ (\Selector14~0_combout\)))) # (!\Selector13~0_combout\ & (!\Selector12~0_combout\ & ((\Selector15~0_combout\) # (\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \unit2|WideOr1~0_combout\);

-- Location: LCCOMB_X33_Y35_N2
\unit2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr0~0_combout\ = (\Selector15~0_combout\ & ((\Selector12~0_combout\) # (\Selector13~0_combout\ $ (\Selector14~0_combout\)))) # (!\Selector15~0_combout\ & ((\Selector14~0_combout\) # (\Selector12~0_combout\ $ (\Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \unit2|WideOr0~0_combout\);

-- Location: LCCOMB_X37_Y33_N14
\UART_unit|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~44_combout\ = (\UART_unit|SRAM_address\(16) & (\UART_unit|Add1~42\ $ (GND))) # (!\UART_unit|SRAM_address\(16) & (!\UART_unit|Add1~42\ & VCC))
-- \UART_unit|Add1~45\ = CARRY((\UART_unit|SRAM_address\(16) & !\UART_unit|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(16),
	datad => VCC,
	cin => \UART_unit|Add1~42\,
	combout => \UART_unit|Add1~44_combout\,
	cout => \UART_unit|Add1~45\);

-- Location: LCCOMB_X38_Y34_N0
\UART_unit|Add1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~49_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~44_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_rx_initialize~regout\,
	datac => \UART_unit|Add1~44_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~49_combout\);

-- Location: LCFF_X38_Y34_N1
\UART_unit|SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~49_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(16));

-- Location: LCCOMB_X37_Y33_N16
\UART_unit|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~46_combout\ = \UART_unit|SRAM_address\(17) $ (\UART_unit|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(17),
	cin => \UART_unit|Add1~45\,
	combout => \UART_unit|Add1~46_combout\);

-- Location: LCCOMB_X38_Y34_N6
\UART_unit|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~48_combout\ = (!\UART_rx_initialize~regout\ & (\UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\ & ((\UART_unit|Add1~46_combout\) # (!\UART_unit|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_rx_initialize~regout\,
	datac => \UART_unit|Add1~46_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_WRITE_SECOND_BYTE~regout\,
	combout => \UART_unit|Add1~48_combout\);

-- Location: LCFF_X38_Y34_N7
\UART_unit|SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~48_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(17));

-- Location: LCCOMB_X36_Y34_N0
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & ((\state.S_TOP_M2~regout\ & ((\M2_unit|FS_unit|SRAM_address\(10)))) # (!\state.S_TOP_M2~regout\ & (\UART_unit|SRAM_address\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(16),
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|SRAM_address\(10),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X36_Y34_N10
\unit3|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~0_combout\ = ((\UART_unit|SRAM_address\(17) & (!\state.S_TOP_M2~regout\ & \M2_unit|FS_unit|state.S_FS_START~regout\))) # (!\Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(17),
	datab => \Selector11~0_combout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \M2_unit|FS_unit|state.S_FS_START~regout\,
	combout => \unit3|Decoder0~0_combout\);

-- Location: LCCOMB_X36_Y34_N28
\unit3|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~1_combout\ = (\UART_unit|SRAM_address\(16)) # (((\state.S_TOP_M2~regout\) # (!\UART_unit|SRAM_address\(17))) # (!\M2_unit|FS_unit|state.S_FS_START~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(16),
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(17),
	combout => \unit3|Decoder0~1_combout\);

-- Location: LCCOMB_X36_Y34_N6
\unit3|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~2_combout\ = (\state.S_TOP_M2~regout\ & (((\M2_unit|FS_unit|SRAM_address\(10))))) # (!\state.S_TOP_M2~regout\ & ((\UART_unit|SRAM_address\(16)) # ((\UART_unit|SRAM_address\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(16),
	datab => \M2_unit|FS_unit|SRAM_address\(10),
	datac => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(17),
	combout => \unit3|Decoder0~2_combout\);

-- Location: LCCOMB_X36_Y34_N8
\unit3|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~3_combout\ = (\unit3|Decoder0~2_combout\ & \M2_unit|FS_unit|state.S_FS_START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit3|Decoder0~2_combout\,
	datad => \M2_unit|FS_unit|state.S_FS_START~regout\,
	combout => \unit3|Decoder0~3_combout\);

-- Location: LCCOMB_X36_Y34_N2
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\M2_unit|FS_unit|state.S_FS_START~regout\ & (!\state.S_TOP_M2~regout\ & \UART_unit|SRAM_address\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_unit|FS_unit|state.S_FS_START~regout\,
	datac => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(17),
	combout => \Selector10~0_combout\);

-- Location: LCFF_X1_Y27_N13
\SRAM_unit|SRAM_read_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[2]~2\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(2));

-- Location: LCFF_X1_Y27_N3
\SRAM_unit|SRAM_read_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[1]~1\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(1));

-- Location: LCFF_X1_Y27_N1
\SRAM_unit|SRAM_read_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[0]~0\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(0));

-- Location: LCFF_X1_Y27_N7
\SRAM_unit|SRAM_read_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[3]~3\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(3));

-- Location: LCCOMB_X1_Y27_N16
\unit4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(2) & (!\SRAM_unit|SRAM_read_data\(1) & (\SRAM_unit|SRAM_read_data\(0) $ (!\SRAM_unit|SRAM_read_data\(3))))) # (!\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(0) & 
-- (\SRAM_unit|SRAM_read_data\(1) $ (!\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(2),
	datab => \SRAM_unit|SRAM_read_data\(1),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y27_N18
\unit4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(1) & ((\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(3)))) # (!\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(1) & 
-- (\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(0) $ (\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(2),
	datab => \SRAM_unit|SRAM_read_data\(1),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y27_N12
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

-- Location: LCCOMB_X1_Y27_N20
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

-- Location: LCCOMB_X1_Y27_N0
\unit4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(1) & (!\SRAM_unit|SRAM_read_data\(3) & (\SRAM_unit|SRAM_read_data\(0)))) # (!\SRAM_unit|SRAM_read_data\(1) & ((\SRAM_unit|SRAM_read_data\(2) & (!\SRAM_unit|SRAM_read_data\(3))) # 
-- (!\SRAM_unit|SRAM_read_data\(2) & ((\SRAM_unit|SRAM_read_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(3),
	datab => \SRAM_unit|SRAM_read_data\(1),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \unit4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y27_N2
\unit4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(3) $ (((\SRAM_unit|SRAM_read_data\(1)) # (!\SRAM_unit|SRAM_read_data\(2)))))) # (!\SRAM_unit|SRAM_read_data\(0) & (!\SRAM_unit|SRAM_read_data\(3) & 
-- (\SRAM_unit|SRAM_read_data\(1) & !\SRAM_unit|SRAM_read_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(3),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(1),
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \unit4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y27_N6
\unit4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(3)) # (\SRAM_unit|SRAM_read_data\(2) $ (\SRAM_unit|SRAM_read_data\(1))))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(1)) # 
-- (\SRAM_unit|SRAM_read_data\(2) $ (\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(2),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(3),
	datad => \SRAM_unit|SRAM_read_data\(1),
	combout => \unit4|WideOr0~0_combout\);

-- Location: LCFF_X1_Y33_N13
\SRAM_unit|SRAM_read_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[6]~6\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(6));

-- Location: LCFF_X1_Y33_N23
\SRAM_unit|SRAM_read_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[7]~7\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(7));

-- Location: LCFF_X1_Y33_N9
\SRAM_unit|SRAM_read_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[4]~4\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(4));

-- Location: LCFF_X1_Y33_N19
\SRAM_unit|SRAM_read_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[5]~5\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(5));

-- Location: LCCOMB_X1_Y33_N16
\unit5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(6) & (!\SRAM_unit|SRAM_read_data\(5) & (\SRAM_unit|SRAM_read_data\(7) $ (!\SRAM_unit|SRAM_read_data\(4))))) # (!\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(4) & 
-- (\SRAM_unit|SRAM_read_data\(7) $ (!\SRAM_unit|SRAM_read_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(4),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y33_N10
\unit5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & ((\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5)))) # (!\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(6))))) # (!\SRAM_unit|SRAM_read_data\(7) & 
-- (\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(4) $ (\SRAM_unit|SRAM_read_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(4),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y33_N20
\unit5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(7) & ((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(4))))) # (!\SRAM_unit|SRAM_read_data\(6) & (!\SRAM_unit|SRAM_read_data\(7) & 
-- (!\SRAM_unit|SRAM_read_data\(4) & \SRAM_unit|SRAM_read_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(4),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y33_N8
\unit5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(6) $ ((!\SRAM_unit|SRAM_read_data\(5))))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(6) & (!\SRAM_unit|SRAM_read_data\(5) & 
-- !\SRAM_unit|SRAM_read_data\(7))) # (!\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(5) & \SRAM_unit|SRAM_read_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(5),
	datac => \SRAM_unit|SRAM_read_data\(4),
	datad => \SRAM_unit|SRAM_read_data\(7),
	combout => \unit5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y33_N18
\unit5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(5) & (((\SRAM_unit|SRAM_read_data\(4) & !\SRAM_unit|SRAM_read_data\(7))))) # (!\SRAM_unit|SRAM_read_data\(5) & ((\SRAM_unit|SRAM_read_data\(6) & ((!\SRAM_unit|SRAM_read_data\(7)))) # 
-- (!\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(4),
	datac => \SRAM_unit|SRAM_read_data\(5),
	datad => \SRAM_unit|SRAM_read_data\(7),
	combout => \unit5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y33_N12
\unit5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(7) $ (((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(6)))))) # (!\SRAM_unit|SRAM_read_data\(4) & (!\SRAM_unit|SRAM_read_data\(7) & 
-- (!\SRAM_unit|SRAM_read_data\(6) & \SRAM_unit|SRAM_read_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y33_N22
\unit5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(7)) # (\SRAM_unit|SRAM_read_data\(6) $ (\SRAM_unit|SRAM_read_data\(5))))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5)) # 
-- (\SRAM_unit|SRAM_read_data\(6) $ (\SRAM_unit|SRAM_read_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(4),
	datac => \SRAM_unit|SRAM_read_data\(7),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr0~0_combout\);

-- Location: LCFF_X59_Y35_N23
\SRAM_unit|SRAM_read_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[11]~11\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(11));

-- Location: LCFF_X59_Y35_N27
\SRAM_unit|SRAM_read_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[9]~9\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(9));

-- Location: LCFF_X59_Y35_N1
\SRAM_unit|SRAM_read_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[8]~8\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(8));

-- Location: LCFF_X59_Y35_N29
\SRAM_unit|SRAM_read_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[10]~10\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(10));

-- Location: LCCOMB_X59_Y35_N24
\unit6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(11) & (\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(9) $ (\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(11) & (!\SRAM_unit|SRAM_read_data\(9) & 
-- (\SRAM_unit|SRAM_read_data\(8) $ (\SRAM_unit|SRAM_read_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(11),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(8),
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \unit6|WideOr6~0_combout\);

-- Location: LCCOMB_X59_Y35_N18
\unit6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(11) & ((\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(9))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(10)))))) # (!\SRAM_unit|SRAM_read_data\(11) & 
-- (\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(9) $ (\SRAM_unit|SRAM_read_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(11),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(8),
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \unit6|WideOr5~0_combout\);

-- Location: LCCOMB_X59_Y35_N20
\unit6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(11) & (\SRAM_unit|SRAM_read_data\(10) & ((\SRAM_unit|SRAM_read_data\(9)) # (!\SRAM_unit|SRAM_read_data\(8))))) # (!\SRAM_unit|SRAM_read_data\(11) & (\SRAM_unit|SRAM_read_data\(9) & 
-- (!\SRAM_unit|SRAM_read_data\(8) & !\SRAM_unit|SRAM_read_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(11),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(8),
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \unit6|WideOr4~0_combout\);

-- Location: LCCOMB_X59_Y35_N0
\unit6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(9) $ (!\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(11) & (\SRAM_unit|SRAM_read_data\(9) & 
-- !\SRAM_unit|SRAM_read_data\(10))) # (!\SRAM_unit|SRAM_read_data\(11) & (!\SRAM_unit|SRAM_read_data\(9) & \SRAM_unit|SRAM_read_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(11),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(8),
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \unit6|WideOr3~0_combout\);

-- Location: LCCOMB_X59_Y35_N26
\unit6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(9) & (!\SRAM_unit|SRAM_read_data\(11) & (\SRAM_unit|SRAM_read_data\(8)))) # (!\SRAM_unit|SRAM_read_data\(9) & ((\SRAM_unit|SRAM_read_data\(10) & (!\SRAM_unit|SRAM_read_data\(11))) # 
-- (!\SRAM_unit|SRAM_read_data\(10) & ((\SRAM_unit|SRAM_read_data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(11),
	datab => \SRAM_unit|SRAM_read_data\(8),
	datac => \SRAM_unit|SRAM_read_data\(9),
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \unit6|WideOr2~0_combout\);

-- Location: LCCOMB_X59_Y35_N28
\unit6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(9) & (!\SRAM_unit|SRAM_read_data\(11) & ((\SRAM_unit|SRAM_read_data\(8)) # (!\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(9) & (\SRAM_unit|SRAM_read_data\(8) & 
-- (\SRAM_unit|SRAM_read_data\(11) $ (!\SRAM_unit|SRAM_read_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(11),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(8),
	combout => \unit6|WideOr1~0_combout\);

-- Location: LCCOMB_X59_Y35_N22
\unit6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(11)) # (\SRAM_unit|SRAM_read_data\(9) $ (\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(9)) # 
-- (\SRAM_unit|SRAM_read_data\(10) $ (\SRAM_unit|SRAM_read_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(9),
	datab => \SRAM_unit|SRAM_read_data\(10),
	datac => \SRAM_unit|SRAM_read_data\(11),
	datad => \SRAM_unit|SRAM_read_data\(8),
	combout => \unit6|WideOr0~0_combout\);

-- Location: LCFF_X64_Y33_N13
\SRAM_unit|SRAM_read_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[14]~14\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(14));

-- Location: LCFF_X64_Y33_N19
\SRAM_unit|SRAM_read_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[13]~13\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(13));

-- Location: LCFF_X64_Y33_N7
\SRAM_unit|SRAM_read_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[15]~15\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(15));

-- Location: LCFF_X64_Y33_N1
\SRAM_unit|SRAM_read_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[12]~12\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(12));

-- Location: LCCOMB_X64_Y33_N16
\unit7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(15) $ (!\SRAM_unit|SRAM_read_data\(12))))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12) & 
-- (\SRAM_unit|SRAM_read_data\(13) $ (!\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y33_N2
\unit7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(15)))) # (!\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(13) & 
-- (\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(15) $ (\SRAM_unit|SRAM_read_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y33_N20
\unit7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(15) & ((\SRAM_unit|SRAM_read_data\(13)) # (!\SRAM_unit|SRAM_read_data\(12))))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(13) & 
-- (!\SRAM_unit|SRAM_read_data\(15) & !\SRAM_unit|SRAM_read_data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y33_N6
\unit7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(14) $ ((!\SRAM_unit|SRAM_read_data\(13))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(13) & 
-- !\SRAM_unit|SRAM_read_data\(15))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(13) & \SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y33_N0
\unit7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & (!\SRAM_unit|SRAM_read_data\(15) & (\SRAM_unit|SRAM_read_data\(12)))) # (!\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(15))) # 
-- (!\SRAM_unit|SRAM_read_data\(14) & ((\SRAM_unit|SRAM_read_data\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(15),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y33_N18
\unit7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(15) $ (((\SRAM_unit|SRAM_read_data\(13)) # (!\SRAM_unit|SRAM_read_data\(14)))))) # (!\SRAM_unit|SRAM_read_data\(12) & (!\SRAM_unit|SRAM_read_data\(15) & 
-- (\SRAM_unit|SRAM_read_data\(13) & !\SRAM_unit|SRAM_read_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(15),
	datab => \SRAM_unit|SRAM_read_data\(12),
	datac => \SRAM_unit|SRAM_read_data\(13),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y33_N12
\unit7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(15)) # (\SRAM_unit|SRAM_read_data\(13) $ (\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(13)) # 
-- (\SRAM_unit|SRAM_read_data\(15) $ (\SRAM_unit|SRAM_read_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(15),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(14),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr0~0_combout\);

-- Location: LCCOMB_X49_Y34_N2
\VGA_unit|VGA_unit|H_Cont[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[0]~10_combout\ = \VGA_unit|VGA_unit|H_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|H_Cont[0]~11\ = CARRY(\VGA_unit|VGA_unit|H_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|H_Cont[0]~10_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[0]~11\);

-- Location: LCCOMB_X49_Y34_N16
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

-- Location: LCCOMB_X49_Y34_N18
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

-- Location: LCCOMB_X49_Y35_N2
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

-- Location: LCFF_X49_Y35_N3
\VGA_unit|VGA_unit|counter_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|counter_enable~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|counter_enable~regout\);

-- Location: LCFF_X49_Y34_N19
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

-- Location: LCCOMB_X49_Y34_N20
\VGA_unit|VGA_unit|H_Cont[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[9]~28_combout\ = \VGA_unit|VGA_unit|H_Cont\(9) $ (\VGA_unit|VGA_unit|H_Cont[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(9),
	cin => \VGA_unit|VGA_unit|H_Cont[8]~27\,
	combout => \VGA_unit|VGA_unit|H_Cont[9]~28_combout\);

-- Location: LCFF_X49_Y34_N21
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

-- Location: LCCOMB_X50_Y34_N26
\VGA_unit|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~1_combout\ = (\VGA_unit|VGA_unit|H_Cont\(9) & \VGA_unit|VGA_unit|H_Cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|H_Cont\(9),
	datad => \VGA_unit|VGA_unit|H_Cont\(8),
	combout => \VGA_unit|always0~1_combout\);

-- Location: LCCOMB_X49_Y34_N24
\VGA_unit|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(2) & (\VGA_unit|VGA_unit|H_Cont\(3) & (\VGA_unit|VGA_unit|H_Cont\(1) & \VGA_unit|VGA_unit|H_Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(2),
	datab => \VGA_unit|VGA_unit|H_Cont\(3),
	datac => \VGA_unit|VGA_unit|H_Cont\(1),
	datad => \VGA_unit|VGA_unit|H_Cont\(0),
	combout => \VGA_unit|always0~0_combout\);

-- Location: LCCOMB_X49_Y34_N12
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

-- Location: LCFF_X49_Y34_N13
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

-- Location: LCCOMB_X50_Y34_N0
\VGA_unit|VGA_unit|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont\(7) & !\VGA_unit|VGA_unit|H_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(6),
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|VGA_unit|H_Cont\(5),
	combout => \VGA_unit|VGA_unit|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y34_N4
\VGA_unit|VGA_unit|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~1_combout\ = (\VGA_unit|always0~1_combout\ & (((\VGA_unit|VGA_unit|H_Cont\(4) & \VGA_unit|always0~0_combout\)) # (!\VGA_unit|VGA_unit|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(4),
	datab => \VGA_unit|always0~1_combout\,
	datac => \VGA_unit|always0~0_combout\,
	datad => \VGA_unit|VGA_unit|LessThan0~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan0~1_combout\);

-- Location: LCFF_X49_Y34_N3
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

-- Location: LCCOMB_X49_Y34_N4
\VGA_unit|VGA_unit|H_Cont[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[1]~12_combout\ = (\VGA_unit|VGA_unit|H_Cont\(1) & (!\VGA_unit|VGA_unit|H_Cont[0]~11\)) # (!\VGA_unit|VGA_unit|H_Cont\(1) & ((\VGA_unit|VGA_unit|H_Cont[0]~11\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[1]~13\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[0]~11\) # (!\VGA_unit|VGA_unit|H_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[0]~11\,
	combout => \VGA_unit|VGA_unit|H_Cont[1]~12_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[1]~13\);

-- Location: LCFF_X49_Y34_N5
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

-- Location: LCCOMB_X49_Y34_N6
\VGA_unit|VGA_unit|H_Cont[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[2]~14_combout\ = (\VGA_unit|VGA_unit|H_Cont\(2) & (\VGA_unit|VGA_unit|H_Cont[1]~13\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(2) & (!\VGA_unit|VGA_unit|H_Cont[1]~13\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[2]~15\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(2) & !\VGA_unit|VGA_unit|H_Cont[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[1]~13\,
	combout => \VGA_unit|VGA_unit|H_Cont[2]~14_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[2]~15\);

-- Location: LCCOMB_X49_Y34_N8
\VGA_unit|VGA_unit|H_Cont[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[3]~16_combout\ = (\VGA_unit|VGA_unit|H_Cont\(3) & (!\VGA_unit|VGA_unit|H_Cont[2]~15\)) # (!\VGA_unit|VGA_unit|H_Cont\(3) & ((\VGA_unit|VGA_unit|H_Cont[2]~15\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[3]~17\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[2]~15\) # (!\VGA_unit|VGA_unit|H_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[2]~15\,
	combout => \VGA_unit|VGA_unit|H_Cont[3]~16_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[3]~17\);

-- Location: LCFF_X49_Y34_N9
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

-- Location: LCCOMB_X49_Y34_N10
\VGA_unit|VGA_unit|H_Cont[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[4]~18_combout\ = (\VGA_unit|VGA_unit|H_Cont\(4) & (\VGA_unit|VGA_unit|H_Cont[3]~17\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(4) & (!\VGA_unit|VGA_unit|H_Cont[3]~17\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[4]~19\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[3]~17\,
	combout => \VGA_unit|VGA_unit|H_Cont[4]~18_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[4]~19\);

-- Location: LCCOMB_X49_Y34_N14
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

-- Location: LCFF_X49_Y34_N15
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

-- Location: LCFF_X49_Y34_N17
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

-- Location: LCCOMB_X50_Y34_N28
\VGA_unit|VGA_unit|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan1~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(8) & (!\VGA_unit|VGA_unit|H_Cont\(9) & ((!\VGA_unit|VGA_unit|H_Cont\(5)) # (!\VGA_unit|VGA_unit|H_Cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(6),
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|H_Cont\(9),
	datad => \VGA_unit|VGA_unit|H_Cont\(5),
	combout => \VGA_unit|VGA_unit|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y34_N24
\VGA_unit|VGA_unit|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan1~1_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7)) # (!\VGA_unit|VGA_unit|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|VGA_unit|LessThan1~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan1~1_combout\);

-- Location: LCFF_X50_Y34_N25
\VGA_unit|VGA_unit|oVGA_H_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|LessThan1~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\);

-- Location: LCCOMB_X50_Y33_N4
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

-- Location: LCCOMB_X50_Y33_N16
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

-- Location: LCCOMB_X49_Y34_N0
\VGA_unit|VGA_unit|oVGA_V_SYNC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(9) & (!\VGA_unit|VGA_unit|H_Cont\(0) & (!\VGA_unit|VGA_unit|H_Cont\(1) & !\VGA_unit|VGA_unit|H_Cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(9),
	datab => \VGA_unit|VGA_unit|H_Cont\(0),
	datac => \VGA_unit|VGA_unit|H_Cont\(1),
	datad => \VGA_unit|VGA_unit|H_Cont\(8),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\);

-- Location: LCFF_X49_Y34_N7
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

-- Location: LCCOMB_X49_Y34_N30
\VGA_unit|VGA_unit|oVGA_V_SYNC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ & (!\VGA_unit|VGA_unit|H_Cont\(3) & !\VGA_unit|VGA_unit|H_Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(3),
	datad => \VGA_unit|VGA_unit|H_Cont\(2),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\);

-- Location: LCFF_X49_Y34_N11
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

-- Location: LCCOMB_X50_Y34_N6
\VGA_unit|VGA_unit|oVGA_V_SYNC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(7) & (!\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\);

-- Location: LCCOMB_X50_Y34_N16
\VGA_unit|VGA_unit|oVGA_V_SYNC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ = (\VGA_unit|VGA_unit|counter_enable~regout\ & (\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ & \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|counter_enable~regout\,
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\);

-- Location: LCFF_X50_Y33_N17
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

-- Location: LCCOMB_X50_Y33_N12
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

-- Location: LCFF_X50_Y33_N13
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

-- Location: LCCOMB_X50_Y33_N0
\VGA_unit|VGA_unit|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|V_Cont\(6) & !\VGA_unit|VGA_unit|V_Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(8),
	datab => \VGA_unit|VGA_unit|V_Cont\(7),
	datac => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => \VGA_unit|VGA_unit|V_Cont\(4),
	combout => \VGA_unit|VGA_unit|LessThan2~0_combout\);

-- Location: LCCOMB_X50_Y33_N30
\VGA_unit|VGA_unit|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~2_combout\ = (\VGA_unit|VGA_unit|V_Cont\(9) & (((\VGA_unit|VGA_unit|V_Cont\(5)) # (!\VGA_unit|VGA_unit|LessThan2~0_combout\)) # (!\VGA_unit|VGA_unit|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan2~1_combout\,
	datab => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	datac => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => \VGA_unit|VGA_unit|V_Cont\(9),
	combout => \VGA_unit|VGA_unit|LessThan2~2_combout\);

-- Location: LCFF_X50_Y33_N5
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

-- Location: LCCOMB_X50_Y33_N6
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

-- Location: LCCOMB_X50_Y33_N8
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

-- Location: LCFF_X50_Y33_N9
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

-- Location: LCCOMB_X50_Y33_N14
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

-- Location: LCFF_X50_Y33_N15
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

-- Location: LCCOMB_X50_Y33_N18
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

-- Location: LCFF_X50_Y33_N19
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

-- Location: LCCOMB_X50_Y33_N22
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

-- Location: LCFF_X50_Y33_N23
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

-- Location: LCFF_X50_Y33_N7
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

-- Location: LCCOMB_X51_Y33_N12
\VGA_unit|VGA_unit|oVGA_R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont\(1) & !\VGA_unit|VGA_unit|V_Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datac => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => \VGA_unit|VGA_unit|V_Cont\(2),
	combout => \VGA_unit|VGA_unit|oVGA_R~0_combout\);

-- Location: LCCOMB_X51_Y33_N6
\VGA_unit|VGA_unit|oVGA_R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~1_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(5) & (\VGA_unit|VGA_unit|LessThan2~0_combout\ & \VGA_unit|VGA_unit|oVGA_R~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(5),
	datac => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	datad => \VGA_unit|VGA_unit|oVGA_R~0_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~1_combout\);

-- Location: LCCOMB_X51_Y33_N0
\VGA_unit|VGA_unit|oVGA_V_SYNC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & ((\VGA_unit|VGA_unit|V_Cont\(9)) # ((!\VGA_unit|VGA_unit|oVGA_R~1_combout\)))) # (!\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & 
-- (((\VGA_unit|VGA_unit|oVGA_V_SYNC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	datab => \VGA_unit|VGA_unit|V_Cont\(9),
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\);

-- Location: LCFF_X51_Y33_N1
\VGA_unit|VGA_unit|oVGA_V_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\);

-- Location: LCCOMB_X51_Y33_N2
\VGA_unit|VGA_unit|oVGA_BLANK\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_BLANK~combout\ = (\VGA_unit|VGA_unit|oVGA_H_SYNC~regout\ & \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\,
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	combout => \VGA_unit|VGA_unit|oVGA_BLANK~combout\);

-- Location: LCCOMB_X50_Y34_N22
\VGA_unit|VGA_unit|oVGA_R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~3_combout\ = (\VGA_unit|VGA_unit|H_Cont\(8) & (((\VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\) # (!\VGA_unit|VGA_unit|H_Cont\(9))))) # (!\VGA_unit|VGA_unit|H_Cont\(8) & (((\VGA_unit|VGA_unit|H_Cont\(9))) # 
-- (!\VGA_unit|VGA_unit|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan4~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|H_Cont\(9),
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~3_combout\);

-- Location: LCCOMB_X51_Y33_N8
\VGA_unit|VGA_unit|oVGA_R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~2_combout\ = ((!\VGA_unit|VGA_unit|V_Cont\(0) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)) # (!\VGA_unit|VGA_unit|V_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(9),
	datac => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~2_combout\);

-- Location: LCCOMB_X50_Y33_N26
\VGA_unit|VGA_unit|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|V_Cont\(6) & !\VGA_unit|VGA_unit|V_Cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(8),
	datab => \VGA_unit|VGA_unit|V_Cont\(7),
	datac => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => \VGA_unit|VGA_unit|V_Cont\(9),
	combout => \VGA_unit|VGA_unit|LessThan6~0_combout\);

-- Location: LCCOMB_X50_Y33_N2
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

-- Location: LCCOMB_X50_Y34_N18
\VGA_unit|VGA_unit|oVGA_R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~4_combout\ = (\VGA_unit|VGA_blue\(0) & (\VGA_unit|VGA_unit|oVGA_R~3_combout\ & (\VGA_unit|VGA_unit|oVGA_R~2_combout\ & !\VGA_unit|VGA_unit|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(0),
	datab => \VGA_unit|VGA_unit|oVGA_R~3_combout\,
	datac => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	datad => \VGA_unit|VGA_unit|LessThan6~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~4_combout\);

-- Location: LCFF_X49_Y35_N1
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

-- Location: LCFF_X7_Y35_N1
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

-- Location: LCFF_X7_Y35_N19
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

-- Location: LCFF_X7_Y35_N29
\VGA_unit|VGA_unit|oVGA_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(3));

-- Location: LCFF_X7_Y35_N7
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

-- Location: LCFF_X7_Y35_N9
\VGA_unit|VGA_unit|oVGA_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(5));

-- Location: LCFF_X7_Y35_N11
\VGA_unit|VGA_unit|oVGA_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(6));

-- Location: LCFF_X49_Y35_N19
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

-- Location: LCFF_X49_Y35_N21
\VGA_unit|VGA_unit|oVGA_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(8));

-- Location: LCFF_X49_Y35_N23
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

-- Location: LCFF_X7_Y35_N21
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

-- Location: LCFF_X7_Y35_N15
\VGA_unit|VGA_unit|oVGA_G[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(1));

-- Location: LCFF_X49_Y35_N25
\VGA_unit|VGA_unit|oVGA_G[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(2));

-- Location: LCFF_X49_Y35_N11
\VGA_unit|VGA_unit|oVGA_G[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(3));

-- Location: LCFF_X7_Y35_N17
\VGA_unit|VGA_unit|oVGA_G[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(4));

-- Location: LCFF_X49_Y35_N13
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

-- Location: LCFF_X49_Y35_N31
\VGA_unit|VGA_unit|oVGA_G[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(6));

-- Location: LCFF_X7_Y35_N3
\VGA_unit|VGA_unit|oVGA_G[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(7));

-- Location: LCFF_X7_Y35_N5
\VGA_unit|VGA_unit|oVGA_G[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(8));

-- Location: LCFF_X7_Y35_N23
\VGA_unit|VGA_unit|oVGA_G[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(9));

-- Location: LCFF_X49_Y35_N9
\VGA_unit|VGA_unit|oVGA_B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(0));

-- Location: LCFF_X49_Y35_N27
\VGA_unit|VGA_unit|oVGA_B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(1));

-- Location: LCFF_X49_Y35_N29
\VGA_unit|VGA_unit|oVGA_B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(2));

-- Location: LCFF_X7_Y35_N25
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

-- Location: LCFF_X49_Y35_N7
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

-- Location: LCFF_X50_Y34_N19
\VGA_unit|VGA_unit|oVGA_B[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(5));

-- Location: LCFF_X49_Y35_N17
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

-- Location: LCFF_X7_Y35_N27
\VGA_unit|VGA_unit|oVGA_B[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(7));

-- Location: LCFF_X7_Y35_N13
\VGA_unit|VGA_unit|oVGA_B[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(8));

-- Location: LCFF_X7_Y35_N31
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

-- Location: LCCOMB_X38_Y34_N8
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\UART_unit|SRAM_address\(0) & !\state.S_TOP_M2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(0),
	datac => \state.S_TOP_M2~regout\,
	combout => \Selector27~0_combout\);

-- Location: LCFF_X38_Y34_N9
\SRAM_unit|SRAM_ADDRESS_O[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector27~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_START~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(0));

-- Location: LCCOMB_X25_Y34_N16
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\state.S_TOP_M2~regout\ & \UART_unit|SRAM_address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(1),
	combout => \Selector26~0_combout\);

-- Location: LCFF_X25_Y34_N17
\SRAM_unit|SRAM_ADDRESS_O[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector26~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_START~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(1));

-- Location: LCCOMB_X25_Y34_N26
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\state.S_TOP_M2~regout\ & \UART_unit|SRAM_address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(2),
	combout => \Selector25~0_combout\);

-- Location: LCFF_X25_Y34_N27
\SRAM_unit|SRAM_ADDRESS_O[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector25~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_START~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(2));

-- Location: LCCOMB_X38_Y34_N2
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\state.S_TOP_M2~regout\ & \UART_unit|SRAM_address\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_TOP_M2~regout\,
	datad => \UART_unit|SRAM_address\(3),
	combout => \Selector24~0_combout\);

-- Location: LCFF_X38_Y34_N3
\SRAM_unit|SRAM_ADDRESS_O[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector24~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sclr => \M2_unit|FS_unit|ALT_INV_state.S_FS_START~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(3));

-- Location: LCFF_X25_Y34_N13
\SRAM_unit|SRAM_ADDRESS_O[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector23~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(4));

-- Location: LCFF_X25_Y34_N31
\SRAM_unit|SRAM_ADDRESS_O[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector22~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(5));

-- Location: LCFF_X25_Y34_N25
\SRAM_unit|SRAM_ADDRESS_O[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector21~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(6));

-- Location: LCFF_X25_Y34_N19
\SRAM_unit|SRAM_ADDRESS_O[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(7));

-- Location: LCFF_X37_Y35_N25
\SRAM_unit|SRAM_ADDRESS_O[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(8));

-- Location: LCFF_X37_Y35_N19
\SRAM_unit|SRAM_ADDRESS_O[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(9));

-- Location: LCFF_X37_Y35_N29
\SRAM_unit|SRAM_ADDRESS_O[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(10));

-- Location: LCFF_X37_Y35_N23
\SRAM_unit|SRAM_ADDRESS_O[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(11));

-- Location: LCFF_X33_Y35_N9
\SRAM_unit|SRAM_ADDRESS_O[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(12));

-- Location: LCFF_X37_Y35_N31
\SRAM_unit|SRAM_ADDRESS_O[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(13));

-- Location: LCFF_X33_Y35_N27
\SRAM_unit|SRAM_ADDRESS_O[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(14));

-- Location: LCFF_X33_Y35_N29
\SRAM_unit|SRAM_ADDRESS_O[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(15));

-- Location: LCFF_X36_Y34_N1
\SRAM_unit|SRAM_ADDRESS_O[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(16));

-- Location: LCFF_X36_Y34_N3
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

-- Location: LCCOMB_X1_Y15_N0
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

-- Location: LCFF_X1_Y15_N1
\SRAM_unit|SRAM_LB_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_LB_N_O~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_LB_N_O~regout\);

-- Location: LCCOMB_X1_Y9_N16
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

-- Location: LCFF_X1_Y9_N17
\SRAM_unit|SRAM_CE_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_CE_N_O~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_CE_N_O~regout\);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N_O);

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


