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

-- DATE "11/08/2018 13:56:58"

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
-- SRAM_DATA_IO[0]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[1]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[2]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[3]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[4]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[6]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[7]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[8]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[9]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[10]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[11]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[12]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[13]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[14]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[15]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PUSH_BUTTON_I[0]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[1]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[2]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[3]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[0]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[1]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[2]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[3]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[5]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[6]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[7]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[8]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[9]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[10]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[11]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[12]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[13]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[14]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[15]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[16]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][4]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][5]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][6]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][0]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][2]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][3]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][4]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][5]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][6]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][0]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][1]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][4]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][5]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][6]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][1]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][3]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][4]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][5]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][6]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][0]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][1]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][4]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][5]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][6]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][0]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][2]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][3]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][5]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][6]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][0]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][1]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][2]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][3]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][4]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][6]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[0]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[1]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[2]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[3]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[5]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[6]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[8]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLOCK_O	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HSYNC_O	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VSYNC_O	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK_O	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC_O	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[0]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[5]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[6]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[8]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[9]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[4]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[7]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[8]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[9]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[2]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[3]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[6]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[7]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[8]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[0]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[1]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[2]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[3]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[6]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[8]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[9]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[10]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[11]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[12]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[13]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[14]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[15]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[16]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[17]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N_O	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N_O	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N_O	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N_O	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N_O	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TX_O	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_RX_I	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \VGA_unit|VGA_unit|Add1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~8_combout\ : std_logic;
SIGNAL \M1_unit|V_address[1]~20_combout\ : std_logic;
SIGNAL \M1_unit|U_address[1]~20_combout\ : std_logic;
SIGNAL \M1_unit|U_address[3]~24_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[3]~24_combout\ : std_logic;
SIGNAL \M1_unit|Add4~6_combout\ : std_logic;
SIGNAL \M1_unit|Add4~10_combout\ : std_logic;
SIGNAL \M1_unit|Add4~22_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[5]~29_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[14]~47_combout\ : std_logic;
SIGNAL \M1_unit|U_address[14]~47_combout\ : std_logic;
SIGNAL \M1_unit|V_address[15]~49_combout\ : std_logic;
SIGNAL \M1_unit|U_address[15]~49_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[16]~52\ : std_logic;
SIGNAL \M1_unit|U_address[16]~52\ : std_logic;
SIGNAL \M1_unit|RGB_address[17]~53_combout\ : std_logic;
SIGNAL \M1_unit|U_address[17]~53_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[12]~27_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~3_combout\ : std_logic;
SIGNAL \M1_unit|SRAM_address[14]~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector57~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector54~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal4~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][1]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][9]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][2]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][10]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][3]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][11]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][4]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][6]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][14]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~13_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][8]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][0]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][10]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][2]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][12]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][4]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][15]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][7]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~15_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][1]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][9]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][2]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][10]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][3]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][4]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][12]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~11_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][5]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][7]~regout\ : std_logic;
SIGNAL \M1_unit|WideOr36~0_combout\ : std_logic;
SIGNAL \M1_unit|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add0~2_combout\ : std_logic;
SIGNAL \VGA_unit|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~4_combout\ : std_logic;
SIGNAL \VGA_unit|Selector18~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~regout\ : std_logic;
SIGNAL \M1_unit|Selector62~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector61~0_combout\ : std_logic;
SIGNAL \M1_unit|WideOr23~1_combout\ : std_logic;
SIGNAL \M1_unit|WideOr23~2_combout\ : std_logic;
SIGNAL \M1_unit|Selector88~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][1]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][1]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][2]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][3]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][3]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][4]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][5]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][6]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][8]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][12]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][15]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~feeder_combout\ : std_logic;
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
SIGNAL \M1_unit|Y_compare_address[14]~31_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[0]~18_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[10]~23_combout\ : std_logic;
SIGNAL \M1_unit|Selector90~0_combout\ : std_logic;
SIGNAL \M1_unit|state.S_END_LINE_3~regout\ : std_logic;
SIGNAL \M1_unit|state.S_END_LINE_4~regout\ : std_logic;
SIGNAL \M1_unit|state.S_END_LINE_5~feeder_combout\ : std_logic;
SIGNAL \M1_unit|state.S_END_LINE_5~regout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[8]~19_combout\ : std_logic;
SIGNAL \M1_unit|Selector92~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[5]~14\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[6]~15_combout\ : std_logic;
SIGNAL \M1_unit|Selector94~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[6]~16\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[7]~17_combout\ : std_logic;
SIGNAL \M1_unit|Selector93~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[5]~13_combout\ : std_logic;
SIGNAL \M1_unit|Selector95~0_combout\ : std_logic;
SIGNAL \M1_unit|Add4~1\ : std_logic;
SIGNAL \M1_unit|Add4~3\ : std_logic;
SIGNAL \M1_unit|Add4~5\ : std_logic;
SIGNAL \M1_unit|Add4~7\ : std_logic;
SIGNAL \M1_unit|Add4~9\ : std_logic;
SIGNAL \M1_unit|Add4~11\ : std_logic;
SIGNAL \M1_unit|Add4~12_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[12]~42_combout\ : std_logic;
SIGNAL \M1_unit|Add4~13\ : std_logic;
SIGNAL \M1_unit|Add4~14_combout\ : std_logic;
SIGNAL \M1_unit|Add4~8_combout\ : std_logic;
SIGNAL \M1_unit|Equal0~0_combout\ : std_logic;
SIGNAL \M1_unit|Add4~4_combout\ : std_logic;
SIGNAL \M1_unit|Add4~2_combout\ : std_logic;
SIGNAL \M1_unit|Add4~0_combout\ : std_logic;
SIGNAL \M1_unit|Equal0~2_combout\ : std_logic;
SIGNAL \M1_unit|Equal0~3_combout\ : std_logic;
SIGNAL \M1_unit|Selector0~0_combout\ : std_logic;
SIGNAL \M1_unit|state.S_M1_START~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_0~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_1~feeder_combout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_1~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_2~feeder_combout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_2~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_3~feeder_combout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_3~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_4~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_5~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_6~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_7~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_8~regout\ : std_logic;
SIGNAL \M1_unit|state.S_START_LINE_9~regout\ : std_logic;
SIGNAL \M1_unit|Y_address[1]~20_combout\ : std_logic;
SIGNAL \M1_unit|Selector11~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector11~1_combout\ : std_logic;
SIGNAL \M1_unit|state.S_RUN_0~regout\ : std_logic;
SIGNAL \M1_unit|state.S_RUN_1~regout\ : std_logic;
SIGNAL \M1_unit|WideOr33~1_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[0]~19\ : std_logic;
SIGNAL \M1_unit|Y_address[1]~21\ : std_logic;
SIGNAL \M1_unit|Y_address[2]~22_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[2]~23\ : std_logic;
SIGNAL \M1_unit|Y_address[3]~25\ : std_logic;
SIGNAL \M1_unit|Y_address[4]~26_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[4]~27\ : std_logic;
SIGNAL \M1_unit|Y_address[5]~29\ : std_logic;
SIGNAL \M1_unit|Y_address[6]~30_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[6]~31\ : std_logic;
SIGNAL \M1_unit|Y_address[7]~32_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[7]~33\ : std_logic;
SIGNAL \M1_unit|Y_address[8]~34_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[8]~35\ : std_logic;
SIGNAL \M1_unit|Y_address[9]~36_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[9]~37\ : std_logic;
SIGNAL \M1_unit|Y_address[10]~38_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[10]~39\ : std_logic;
SIGNAL \M1_unit|Y_address[11]~40_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[11]~41\ : std_logic;
SIGNAL \M1_unit|Y_address[12]~43\ : std_logic;
SIGNAL \M1_unit|Y_address[13]~44_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[13]~45\ : std_logic;
SIGNAL \M1_unit|Y_address[14]~47\ : std_logic;
SIGNAL \M1_unit|Y_address[15]~49\ : std_logic;
SIGNAL \M1_unit|Y_address[16]~50_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[5]~28_combout\ : std_logic;
SIGNAL \M1_unit|Equal1~1_combout\ : std_logic;
SIGNAL \M1_unit|Equal1~2_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[16]~51\ : std_logic;
SIGNAL \M1_unit|Y_address[17]~52_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[14]~46_combout\ : std_logic;
SIGNAL \M1_unit|Equal1~3_combout\ : std_logic;
SIGNAL \M1_unit|Equal1~4_combout\ : std_logic;
SIGNAL \M1_unit|Selector23~0_combout\ : std_logic;
SIGNAL \M1_unit|state.S_M1_IDLE~regout\ : std_logic;
SIGNAL \M1_unit|Selector86~0_combout\ : std_logic;
SIGNAL \M1_unit|Add4~15\ : std_logic;
SIGNAL \M1_unit|Add4~17\ : std_logic;
SIGNAL \M1_unit|Add4~19\ : std_logic;
SIGNAL \M1_unit|Add4~20_combout\ : std_logic;
SIGNAL \M1_unit|Add4~18_combout\ : std_logic;
SIGNAL \M1_unit|Add4~16_combout\ : std_logic;
SIGNAL \M1_unit|Equal0~1_combout\ : std_logic;
SIGNAL \M1_unit|state~57_combout\ : std_logic;
SIGNAL \M1_unit|state~58_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[7]~18\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[8]~20\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[9]~21_combout\ : std_logic;
SIGNAL \M1_unit|Selector91~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[9]~22\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[10]~24\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[11]~25_combout\ : std_logic;
SIGNAL \M1_unit|Selector89~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[11]~26\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[12]~28\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[13]~29_combout\ : std_logic;
SIGNAL \M1_unit|Selector87~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[13]~30\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[14]~32\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[15]~33_combout\ : std_logic;
SIGNAL \M1_unit|Selector85~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[15]~34\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[16]~35_combout\ : std_logic;
SIGNAL \M1_unit|Selector84~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[16]~36\ : std_logic;
SIGNAL \M1_unit|Y_compare_address[17]~37_combout\ : std_logic;
SIGNAL \M1_unit|Selector83~0_combout\ : std_logic;
SIGNAL \M1_unit|Add4~21\ : std_logic;
SIGNAL \M1_unit|Add4~23\ : std_logic;
SIGNAL \M1_unit|Add4~24_combout\ : std_logic;
SIGNAL \M1_unit|state.S_RUN_2~regout\ : std_logic;
SIGNAL \M1_unit|state.S_RUN_3~regout\ : std_logic;
SIGNAL \M1_unit|state.S_RUN_4~regout\ : std_logic;
SIGNAL \M1_unit|state.S_RUN_5~regout\ : std_logic;
SIGNAL \M1_unit|Selector17~0_combout\ : std_logic;
SIGNAL \M1_unit|Equal1~5_combout\ : std_logic;
SIGNAL \M1_unit|Selector17~1_combout\ : std_logic;
SIGNAL \M1_unit|state.S_END_LINE_0~regout\ : std_logic;
SIGNAL \M1_unit|state.S_END_LINE_1~regout\ : std_logic;
SIGNAL \M1_unit|state.S_END_LINE_2~regout\ : std_logic;
SIGNAL \M1_unit|WideOr23~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector24~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector44~0_combout\ : std_logic;
SIGNAL \M1_unit|common_case~regout\ : std_logic;
SIGNAL \M1_unit|Selector24~1_combout\ : std_logic;
SIGNAL \M1_unit|Selector24~2_combout\ : std_logic;
SIGNAL \M1_unit|SRAM_we_n~regout\ : std_logic;
SIGNAL \SRAM_we_n~feeder_combout\ : std_logic;
SIGNAL \SWITCH_I[17]~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\ : std_logic;
SIGNAL \M1_unit|Selector46~0_combout\ : std_logic;
SIGNAL \M1_unit|M1_done~regout\ : std_logic;
SIGNAL \start_counter[0]~4_combout\ : std_logic;
SIGNAL \resetn~0_combout\ : std_logic;
SIGNAL \resetn~0clkctrl_outclk\ : std_logic;
SIGNAL \start_counter[1]~2_combout\ : std_logic;
SIGNAL \start_counter[2]~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S_TOP_IDLE~regout\ : std_logic;
SIGNAL \start_counter[3]~0_combout\ : std_logic;
SIGNAL \start_counter[3]~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.S_TOP_M1~regout\ : std_logic;
SIGNAL \SRAM_address[4]~0_combout\ : std_logic;
SIGNAL \SRAM_we_n~regout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_WE_N_O~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_WE_N_O~regout\ : std_logic;
SIGNAL \M1_unit|V_address[0]~18_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \M1_unit|WideOr35~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector43~0_combout\ : std_logic;
SIGNAL \M1_unit|cycle~regout\ : std_logic;
SIGNAL \M1_unit|V_address[4]~28_combout\ : std_logic;
SIGNAL \M1_unit|V_address[0]~19\ : std_logic;
SIGNAL \M1_unit|V_address[1]~21\ : std_logic;
SIGNAL \M1_unit|V_address[2]~22_combout\ : std_logic;
SIGNAL \M1_unit|V_address[2]~23\ : std_logic;
SIGNAL \M1_unit|V_address[3]~25\ : std_logic;
SIGNAL \M1_unit|V_address[4]~26_combout\ : std_logic;
SIGNAL \M1_unit|WideOr33~0_combout\ : std_logic;
SIGNAL \M1_unit|SRAM_address[14]~1_combout\ : std_logic;
SIGNAL \M1_unit|U_address[0]~18_combout\ : std_logic;
SIGNAL \M1_unit|U_address[7]~28_combout\ : std_logic;
SIGNAL \M1_unit|U_address[0]~19\ : std_logic;
SIGNAL \M1_unit|U_address[1]~21\ : std_logic;
SIGNAL \M1_unit|U_address[2]~22_combout\ : std_logic;
SIGNAL \M1_unit|U_address[2]~23\ : std_logic;
SIGNAL \M1_unit|U_address[3]~25\ : std_logic;
SIGNAL \M1_unit|U_address[4]~26_combout\ : std_logic;
SIGNAL \M1_unit|SRAM_address[14]~2_combout\ : std_logic;
SIGNAL \M1_unit|Selector60~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector60~combout\ : std_logic;
SIGNAL \M1_unit|SRAM_address[14]~5_combout\ : std_logic;
SIGNAL \M1_unit|SRAM_address[14]~4_combout\ : std_logic;
SIGNAL \M1_unit|SRAM_address[14]~6_combout\ : std_logic;
SIGNAL \M1_unit|V_address[4]~27\ : std_logic;
SIGNAL \M1_unit|V_address[5]~30\ : std_logic;
SIGNAL \M1_unit|V_address[6]~31_combout\ : std_logic;
SIGNAL \M1_unit|V_address[6]~32\ : std_logic;
SIGNAL \M1_unit|V_address[7]~33_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[0]~18_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[13]~28_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[0]~19\ : std_logic;
SIGNAL \M1_unit|RGB_address[1]~21\ : std_logic;
SIGNAL \M1_unit|RGB_address[2]~22_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[2]~23\ : std_logic;
SIGNAL \M1_unit|RGB_address[3]~25\ : std_logic;
SIGNAL \M1_unit|RGB_address[4]~26_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[4]~27\ : std_logic;
SIGNAL \M1_unit|RGB_address[5]~30\ : std_logic;
SIGNAL \M1_unit|RGB_address[6]~31_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[6]~32\ : std_logic;
SIGNAL \M1_unit|RGB_address[7]~33_combout\ : std_logic;
SIGNAL \M1_unit|Selector57~combout\ : std_logic;
SIGNAL \M1_unit|U_address[4]~27\ : std_logic;
SIGNAL \M1_unit|U_address[5]~30\ : std_logic;
SIGNAL \M1_unit|U_address[6]~31_combout\ : std_logic;
SIGNAL \M1_unit|SRAM_address[14]~3_combout\ : std_logic;
SIGNAL \M1_unit|Selector58~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector58~combout\ : std_logic;
SIGNAL \M1_unit|V_address[5]~29_combout\ : std_logic;
SIGNAL \M1_unit|U_address[5]~29_combout\ : std_logic;
SIGNAL \M1_unit|Selector59~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector59~combout\ : std_logic;
SIGNAL \unit0|WideOr6~0_combout\ : std_logic;
SIGNAL \unit0|WideOr5~0_combout\ : std_logic;
SIGNAL \unit0|WideOr4~0_combout\ : std_logic;
SIGNAL \unit0|WideOr3~0_combout\ : std_logic;
SIGNAL \unit0|WideOr2~0_combout\ : std_logic;
SIGNAL \unit0|WideOr1~0_combout\ : std_logic;
SIGNAL \unit0|WideOr0~0_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[7]~34\ : std_logic;
SIGNAL \M1_unit|RGB_address[8]~35_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[8]~36\ : std_logic;
SIGNAL \M1_unit|RGB_address[9]~37_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[9]~38\ : std_logic;
SIGNAL \M1_unit|RGB_address[10]~39_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[10]~40\ : std_logic;
SIGNAL \M1_unit|RGB_address[11]~41_combout\ : std_logic;
SIGNAL \M1_unit|V_address[7]~34\ : std_logic;
SIGNAL \M1_unit|V_address[8]~35_combout\ : std_logic;
SIGNAL \M1_unit|V_address[8]~36\ : std_logic;
SIGNAL \M1_unit|V_address[9]~37_combout\ : std_logic;
SIGNAL \M1_unit|V_address[9]~38\ : std_logic;
SIGNAL \M1_unit|V_address[10]~39_combout\ : std_logic;
SIGNAL \M1_unit|V_address[10]~40\ : std_logic;
SIGNAL \M1_unit|V_address[11]~41_combout\ : std_logic;
SIGNAL \M1_unit|U_address[6]~32\ : std_logic;
SIGNAL \M1_unit|U_address[7]~33_combout\ : std_logic;
SIGNAL \M1_unit|U_address[7]~34\ : std_logic;
SIGNAL \M1_unit|U_address[8]~35_combout\ : std_logic;
SIGNAL \M1_unit|U_address[8]~36\ : std_logic;
SIGNAL \M1_unit|U_address[9]~37_combout\ : std_logic;
SIGNAL \M1_unit|U_address[9]~38\ : std_logic;
SIGNAL \M1_unit|U_address[10]~39_combout\ : std_logic;
SIGNAL \M1_unit|U_address[10]~40\ : std_logic;
SIGNAL \M1_unit|U_address[11]~41_combout\ : std_logic;
SIGNAL \M1_unit|Selector53~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector53~combout\ : std_logic;
SIGNAL \M1_unit|Selector55~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector55~combout\ : std_logic;
SIGNAL \M1_unit|Selector56~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector56~combout\ : std_logic;
SIGNAL \M1_unit|Selector54~combout\ : std_logic;
SIGNAL \unit1|WideOr6~0_combout\ : std_logic;
SIGNAL \unit1|WideOr5~0_combout\ : std_logic;
SIGNAL \unit1|WideOr4~0_combout\ : std_logic;
SIGNAL \unit1|WideOr3~0_combout\ : std_logic;
SIGNAL \unit1|WideOr2~0_combout\ : std_logic;
SIGNAL \unit1|WideOr1~0_combout\ : std_logic;
SIGNAL \unit1|WideOr0~0_combout\ : std_logic;
SIGNAL \M1_unit|Y_address[15]~48_combout\ : std_logic;
SIGNAL \M1_unit|Selector49~0_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[11]~42\ : std_logic;
SIGNAL \M1_unit|RGB_address[12]~44\ : std_logic;
SIGNAL \M1_unit|RGB_address[13]~45_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[13]~46\ : std_logic;
SIGNAL \M1_unit|RGB_address[14]~48\ : std_logic;
SIGNAL \M1_unit|RGB_address[15]~49_combout\ : std_logic;
SIGNAL \M1_unit|Selector49~combout\ : std_logic;
SIGNAL \M1_unit|V_address[11]~42\ : std_logic;
SIGNAL \M1_unit|V_address[12]~44\ : std_logic;
SIGNAL \M1_unit|V_address[13]~45_combout\ : std_logic;
SIGNAL \M1_unit|V_address[13]~46\ : std_logic;
SIGNAL \M1_unit|V_address[14]~47_combout\ : std_logic;
SIGNAL \M1_unit|Selector50~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector50~combout\ : std_logic;
SIGNAL \M1_unit|V_address[12]~43_combout\ : std_logic;
SIGNAL \M1_unit|U_address[11]~42\ : std_logic;
SIGNAL \M1_unit|U_address[12]~43_combout\ : std_logic;
SIGNAL \M1_unit|Selector52~0_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[12]~43_combout\ : std_logic;
SIGNAL \M1_unit|Selector52~combout\ : std_logic;
SIGNAL \M1_unit|U_address[12]~44\ : std_logic;
SIGNAL \M1_unit|U_address[13]~45_combout\ : std_logic;
SIGNAL \M1_unit|Selector51~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector51~combout\ : std_logic;
SIGNAL \unit2|WideOr6~0_combout\ : std_logic;
SIGNAL \unit2|WideOr5~0_combout\ : std_logic;
SIGNAL \unit2|WideOr4~0_combout\ : std_logic;
SIGNAL \unit2|WideOr3~0_combout\ : std_logic;
SIGNAL \unit2|WideOr2~0_combout\ : std_logic;
SIGNAL \unit2|WideOr1~0_combout\ : std_logic;
SIGNAL \unit2|WideOr0~0_combout\ : std_logic;
SIGNAL \M1_unit|V_address[14]~48\ : std_logic;
SIGNAL \M1_unit|V_address[15]~50\ : std_logic;
SIGNAL \M1_unit|V_address[16]~51_combout\ : std_logic;
SIGNAL \M1_unit|V_address[16]~52\ : std_logic;
SIGNAL \M1_unit|V_address[17]~53_combout\ : std_logic;
SIGNAL \M1_unit|Selector47~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector47~combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[15]~50\ : std_logic;
SIGNAL \M1_unit|RGB_address[16]~51_combout\ : std_logic;
SIGNAL \M1_unit|U_address[13]~46\ : std_logic;
SIGNAL \M1_unit|U_address[14]~48\ : std_logic;
SIGNAL \M1_unit|U_address[15]~50\ : std_logic;
SIGNAL \M1_unit|U_address[16]~51_combout\ : std_logic;
SIGNAL \M1_unit|Selector48~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector48~combout\ : std_logic;
SIGNAL \unit3|Decoder0~0_combout\ : std_logic;
SIGNAL \unit3|Decoder0~1_combout\ : std_logic;
SIGNAL \unit3|Decoder0~2_combout\ : std_logic;
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
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_BLANK~combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add0~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_unit|always0~1_combout\ : std_logic;
SIGNAL \VGA_unit|always0~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~1\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~3\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~5\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~7\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~9\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~10_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add0~1_combout\ : std_logic;
SIGNAL \VGA_unit|always0~4_combout\ : std_logic;
SIGNAL \VGA_unit|always0~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan4~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_enable~0_combout\ : std_logic;
SIGNAL \VGA_enable~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_1~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\ : std_logic;
SIGNAL \VGA_unit|LessThan2~2_combout\ : std_logic;
SIGNAL \VGA_unit|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add0~3_combout\ : std_logic;
SIGNAL \VGA_unit|LessThan2~3_combout\ : std_logic;
SIGNAL \VGA_unit|Selector23~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~1_combout\ : std_logic;
SIGNAL \VGA_unit|Selector18~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~16_combout\ : std_logic;
SIGNAL \VGA_unit|always0~6_combout\ : std_logic;
SIGNAL \VGA_unit|always0~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_1~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][8]~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][8]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_4~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][0]~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][0]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green[8]~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][12]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][5]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][13]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~11_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][7]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][15]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~15_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][1]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][9]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][8]~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][9]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][3]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][11]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][11]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][13]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][13]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][5]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~11_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][14]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][14]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][6]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~13_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][0]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][8]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][11]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][13]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~13_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][6]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][6]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][14]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~15_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][15]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~17_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~7_combout\ : std_logic;
SIGNAL \M1_unit|Selector64~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector64~combout\ : std_logic;
SIGNAL \SRAM_address[0]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[0]~feeder_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[1]~20_combout\ : std_logic;
SIGNAL \M1_unit|Selector63~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector63~combout\ : std_logic;
SIGNAL \SRAM_address[1]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[1]~feeder_combout\ : std_logic;
SIGNAL \M1_unit|Selector62~combout\ : std_logic;
SIGNAL \SRAM_address[2]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[2]~feeder_combout\ : std_logic;
SIGNAL \M1_unit|V_address[3]~24_combout\ : std_logic;
SIGNAL \M1_unit|RGB_address[3]~24_combout\ : std_logic;
SIGNAL \M1_unit|Selector61~combout\ : std_logic;
SIGNAL \SRAM_address[3]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[5]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[7]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[9]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[10]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[11]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[13]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[14]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[15]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[16]~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~regout\ : std_logic;
SIGNAL start_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL SRAM_address : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_blue\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|V_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M1_unit|Y_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_read_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|H_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M1_unit|V_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_ADDRESS_O\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_green\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M1_unit|RGB_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M1_unit|Y_compare_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_red\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M1_unit|U_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_G\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \M1_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ : std_logic;
SIGNAL \M1_unit|ALT_INV_state.S_END_LINE_5~regout\ : std_logic;
SIGNAL \M1_unit|ALT_INV_state.S_M1_IDLE~regout\ : std_logic;
SIGNAL \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ : std_logic;
SIGNAL \unit7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL ALT_INV_SRAM_address : std_logic_vector(17 DOWNTO 17);
SIGNAL \unit2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit0|ALT_INV_WideOr0~0_combout\ : std_logic;
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
\M1_unit|ALT_INV_state.S_END_LINE_5~regout\ <= NOT \M1_unit|state.S_END_LINE_5~regout\;
\M1_unit|ALT_INV_state.S_M1_IDLE~regout\ <= NOT \M1_unit|state.S_M1_IDLE~regout\;
\SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\ <= NOT \SRAM_unit|SRAM_WE_N_O~regout\;
\SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ <= NOT \SRAM_unit|SRAM_CE_N_O~regout\;
\unit7|ALT_INV_WideOr0~0_combout\ <= NOT \unit7|WideOr0~0_combout\;
\unit6|ALT_INV_WideOr0~0_combout\ <= NOT \unit6|WideOr0~0_combout\;
\unit5|ALT_INV_WideOr0~0_combout\ <= NOT \unit5|WideOr0~0_combout\;
\unit4|ALT_INV_WideOr0~0_combout\ <= NOT \unit4|WideOr0~0_combout\;
ALT_INV_SRAM_address(17) <= NOT SRAM_address(17);
\unit2|ALT_INV_WideOr0~0_combout\ <= NOT \unit2|WideOr0~0_combout\;
\unit1|ALT_INV_WideOr0~0_combout\ <= NOT \unit1|WideOr0~0_combout\;
\unit0|ALT_INV_WideOr0~0_combout\ <= NOT \unit0|WideOr0~0_combout\;
\ALT_INV_resetn~0_combout\ <= NOT \resetn~0_combout\;

-- Location: LCFF_X42_Y21_N25
\M1_unit|RGB_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[5]~29_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(5));

-- Location: LCFF_X42_Y20_N11
\M1_unit|RGB_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[14]~47_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(14));

-- Location: LCFF_X43_Y21_N11
\M1_unit|U_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[14]~47_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(14));

-- Location: LCFF_X42_Y23_N13
\M1_unit|V_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[15]~49_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(15));

-- Location: LCFF_X43_Y21_N13
\M1_unit|U_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[15]~49_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(15));

-- Location: LCFF_X42_Y20_N17
\M1_unit|RGB_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[17]~53_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(17));

-- Location: LCFF_X43_Y21_N17
\M1_unit|U_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[17]~53_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(17));

-- Location: LCCOMB_X27_Y27_N10
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

-- Location: LCCOMB_X27_Y27_N12
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

-- Location: LCCOMB_X27_Y27_N18
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

-- Location: LCFF_X42_Y24_N17
\M1_unit|V_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[1]~20_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(1));

-- Location: LCCOMB_X42_Y24_N16
\M1_unit|V_address[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[1]~20_combout\ = (\M1_unit|V_address\(1) & (!\M1_unit|V_address[0]~19\)) # (!\M1_unit|V_address\(1) & ((\M1_unit|V_address[0]~19\) # (GND)))
-- \M1_unit|V_address[1]~21\ = CARRY((!\M1_unit|V_address[0]~19\) # (!\M1_unit|V_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(1),
	datad => VCC,
	cin => \M1_unit|V_address[0]~19\,
	combout => \M1_unit|V_address[1]~20_combout\,
	cout => \M1_unit|V_address[1]~21\);

-- Location: LCFF_X44_Y22_N21
\M1_unit|Y_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[3]~24_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(3));

-- Location: LCFF_X43_Y22_N21
\M1_unit|U_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[3]~24_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(3));

-- Location: LCFF_X43_Y22_N17
\M1_unit|U_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[1]~20_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(1));

-- Location: LCCOMB_X43_Y22_N16
\M1_unit|U_address[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[1]~20_combout\ = (\M1_unit|U_address\(1) & (!\M1_unit|U_address[0]~19\)) # (!\M1_unit|U_address\(1) & ((\M1_unit|U_address[0]~19\) # (GND)))
-- \M1_unit|U_address[1]~21\ = CARRY((!\M1_unit|U_address[0]~19\) # (!\M1_unit|U_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(1),
	datad => VCC,
	cin => \M1_unit|U_address[0]~19\,
	combout => \M1_unit|U_address[1]~20_combout\,
	cout => \M1_unit|U_address[1]~21\);

-- Location: LCCOMB_X43_Y22_N20
\M1_unit|U_address[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[3]~24_combout\ = (\M1_unit|U_address\(3) & (!\M1_unit|U_address[2]~23\)) # (!\M1_unit|U_address\(3) & ((\M1_unit|U_address[2]~23\) # (GND)))
-- \M1_unit|U_address[3]~25\ = CARRY((!\M1_unit|U_address[2]~23\) # (!\M1_unit|U_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(3),
	datad => VCC,
	cin => \M1_unit|U_address[2]~23\,
	combout => \M1_unit|U_address[3]~24_combout\,
	cout => \M1_unit|U_address[3]~25\);

-- Location: LCCOMB_X44_Y22_N20
\M1_unit|Y_address[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[3]~24_combout\ = (\M1_unit|Y_address\(3) & (!\M1_unit|Y_address[2]~23\)) # (!\M1_unit|Y_address\(3) & ((\M1_unit|Y_address[2]~23\) # (GND)))
-- \M1_unit|Y_address[3]~25\ = CARRY((!\M1_unit|Y_address[2]~23\) # (!\M1_unit|Y_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(3),
	datad => VCC,
	cin => \M1_unit|Y_address[2]~23\,
	combout => \M1_unit|Y_address[3]~24_combout\,
	cout => \M1_unit|Y_address[3]~25\);

-- Location: LCCOMB_X45_Y21_N8
\M1_unit|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~6_combout\ = (\M1_unit|Y_address\(8) & ((\M1_unit|Y_compare_address\(8) & (!\M1_unit|Add4~5\)) # (!\M1_unit|Y_compare_address\(8) & (\M1_unit|Add4~5\ & VCC)))) # (!\M1_unit|Y_address\(8) & ((\M1_unit|Y_compare_address\(8) & 
-- ((\M1_unit|Add4~5\) # (GND))) # (!\M1_unit|Y_compare_address\(8) & (!\M1_unit|Add4~5\))))
-- \M1_unit|Add4~7\ = CARRY((\M1_unit|Y_address\(8) & (\M1_unit|Y_compare_address\(8) & !\M1_unit|Add4~5\)) # (!\M1_unit|Y_address\(8) & ((\M1_unit|Y_compare_address\(8)) # (!\M1_unit|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(8),
	datab => \M1_unit|Y_compare_address\(8),
	datad => VCC,
	cin => \M1_unit|Add4~5\,
	combout => \M1_unit|Add4~6_combout\,
	cout => \M1_unit|Add4~7\);

-- Location: LCCOMB_X45_Y21_N12
\M1_unit|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~10_combout\ = (\M1_unit|Y_address\(10) & ((\M1_unit|Y_compare_address\(10) & (!\M1_unit|Add4~9\)) # (!\M1_unit|Y_compare_address\(10) & (\M1_unit|Add4~9\ & VCC)))) # (!\M1_unit|Y_address\(10) & ((\M1_unit|Y_compare_address\(10) & 
-- ((\M1_unit|Add4~9\) # (GND))) # (!\M1_unit|Y_compare_address\(10) & (!\M1_unit|Add4~9\))))
-- \M1_unit|Add4~11\ = CARRY((\M1_unit|Y_address\(10) & (\M1_unit|Y_compare_address\(10) & !\M1_unit|Add4~9\)) # (!\M1_unit|Y_address\(10) & ((\M1_unit|Y_compare_address\(10)) # (!\M1_unit|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(10),
	datab => \M1_unit|Y_compare_address\(10),
	datad => VCC,
	cin => \M1_unit|Add4~9\,
	combout => \M1_unit|Add4~10_combout\,
	cout => \M1_unit|Add4~11\);

-- Location: LCFF_X41_Y21_N21
\M1_unit|Y_compare_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[12]~27_combout\,
	sdata => \M1_unit|Selector88~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(12));

-- Location: LCCOMB_X45_Y21_N24
\M1_unit|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~22_combout\ = (\M1_unit|Y_address\(16) & ((\M1_unit|Y_compare_address\(16) & (!\M1_unit|Add4~21\)) # (!\M1_unit|Y_compare_address\(16) & (\M1_unit|Add4~21\ & VCC)))) # (!\M1_unit|Y_address\(16) & ((\M1_unit|Y_compare_address\(16) & 
-- ((\M1_unit|Add4~21\) # (GND))) # (!\M1_unit|Y_compare_address\(16) & (!\M1_unit|Add4~21\))))
-- \M1_unit|Add4~23\ = CARRY((\M1_unit|Y_address\(16) & (\M1_unit|Y_compare_address\(16) & !\M1_unit|Add4~21\)) # (!\M1_unit|Y_address\(16) & ((\M1_unit|Y_compare_address\(16)) # (!\M1_unit|Add4~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(16),
	datab => \M1_unit|Y_compare_address\(16),
	datad => VCC,
	cin => \M1_unit|Add4~21\,
	combout => \M1_unit|Add4~22_combout\,
	cout => \M1_unit|Add4~23\);

-- Location: LCCOMB_X42_Y21_N24
\M1_unit|RGB_address[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[5]~29_combout\ = (\M1_unit|RGB_address\(5) & (!\M1_unit|RGB_address[4]~27\)) # (!\M1_unit|RGB_address\(5) & ((\M1_unit|RGB_address[4]~27\) # (GND)))
-- \M1_unit|RGB_address[5]~30\ = CARRY((!\M1_unit|RGB_address[4]~27\) # (!\M1_unit|RGB_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(5),
	datad => VCC,
	cin => \M1_unit|RGB_address[4]~27\,
	combout => \M1_unit|RGB_address[5]~29_combout\,
	cout => \M1_unit|RGB_address[5]~30\);

-- Location: LCCOMB_X42_Y20_N10
\M1_unit|RGB_address[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[14]~47_combout\ = (\M1_unit|RGB_address\(14) & (\M1_unit|RGB_address[13]~46\ $ (GND))) # (!\M1_unit|RGB_address\(14) & (!\M1_unit|RGB_address[13]~46\ & VCC))
-- \M1_unit|RGB_address[14]~48\ = CARRY((\M1_unit|RGB_address\(14) & !\M1_unit|RGB_address[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(14),
	datad => VCC,
	cin => \M1_unit|RGB_address[13]~46\,
	combout => \M1_unit|RGB_address[14]~47_combout\,
	cout => \M1_unit|RGB_address[14]~48\);

-- Location: LCCOMB_X43_Y21_N10
\M1_unit|U_address[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[14]~47_combout\ = (\M1_unit|U_address\(14) & (\M1_unit|U_address[13]~46\ $ (GND))) # (!\M1_unit|U_address\(14) & (!\M1_unit|U_address[13]~46\ & VCC))
-- \M1_unit|U_address[14]~48\ = CARRY((\M1_unit|U_address\(14) & !\M1_unit|U_address[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(14),
	datad => VCC,
	cin => \M1_unit|U_address[13]~46\,
	combout => \M1_unit|U_address[14]~47_combout\,
	cout => \M1_unit|U_address[14]~48\);

-- Location: LCCOMB_X42_Y23_N12
\M1_unit|V_address[15]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[15]~49_combout\ = (\M1_unit|V_address\(15) & (!\M1_unit|V_address[14]~48\)) # (!\M1_unit|V_address\(15) & ((\M1_unit|V_address[14]~48\) # (GND)))
-- \M1_unit|V_address[15]~50\ = CARRY((!\M1_unit|V_address[14]~48\) # (!\M1_unit|V_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(15),
	datad => VCC,
	cin => \M1_unit|V_address[14]~48\,
	combout => \M1_unit|V_address[15]~49_combout\,
	cout => \M1_unit|V_address[15]~50\);

-- Location: LCCOMB_X43_Y21_N12
\M1_unit|U_address[15]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[15]~49_combout\ = (\M1_unit|U_address\(15) & (!\M1_unit|U_address[14]~48\)) # (!\M1_unit|U_address\(15) & ((\M1_unit|U_address[14]~48\) # (GND)))
-- \M1_unit|U_address[15]~50\ = CARRY((!\M1_unit|U_address[14]~48\) # (!\M1_unit|U_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(15),
	datad => VCC,
	cin => \M1_unit|U_address[14]~48\,
	combout => \M1_unit|U_address[15]~49_combout\,
	cout => \M1_unit|U_address[15]~50\);

-- Location: LCCOMB_X42_Y20_N14
\M1_unit|RGB_address[16]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[16]~51_combout\ = (\M1_unit|RGB_address\(16) & (\M1_unit|RGB_address[15]~50\ $ (GND))) # (!\M1_unit|RGB_address\(16) & (!\M1_unit|RGB_address[15]~50\ & VCC))
-- \M1_unit|RGB_address[16]~52\ = CARRY((\M1_unit|RGB_address\(16) & !\M1_unit|RGB_address[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(16),
	datad => VCC,
	cin => \M1_unit|RGB_address[15]~50\,
	combout => \M1_unit|RGB_address[16]~51_combout\,
	cout => \M1_unit|RGB_address[16]~52\);

-- Location: LCCOMB_X43_Y21_N14
\M1_unit|U_address[16]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[16]~51_combout\ = (\M1_unit|U_address\(16) & (\M1_unit|U_address[15]~50\ $ (GND))) # (!\M1_unit|U_address\(16) & (!\M1_unit|U_address[15]~50\ & VCC))
-- \M1_unit|U_address[16]~52\ = CARRY((\M1_unit|U_address\(16) & !\M1_unit|U_address[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(16),
	datad => VCC,
	cin => \M1_unit|U_address[15]~50\,
	combout => \M1_unit|U_address[16]~51_combout\,
	cout => \M1_unit|U_address[16]~52\);

-- Location: LCCOMB_X42_Y20_N16
\M1_unit|RGB_address[17]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[17]~53_combout\ = \M1_unit|RGB_address\(17) $ (\M1_unit|RGB_address[16]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(17),
	cin => \M1_unit|RGB_address[16]~52\,
	combout => \M1_unit|RGB_address[17]~53_combout\);

-- Location: LCCOMB_X43_Y21_N16
\M1_unit|U_address[17]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[17]~53_combout\ = \M1_unit|U_address\(17) $ (\M1_unit|U_address[16]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(17),
	cin => \M1_unit|U_address[16]~52\,
	combout => \M1_unit|U_address[17]~53_combout\);

-- Location: LCCOMB_X41_Y21_N20
\M1_unit|Y_compare_address[12]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[12]~27_combout\ = (\M1_unit|Y_compare_address\(12) & (!\M1_unit|Y_compare_address[11]~26\)) # (!\M1_unit|Y_compare_address\(12) & ((\M1_unit|Y_compare_address[11]~26\) # (GND)))
-- \M1_unit|Y_compare_address[12]~28\ = CARRY((!\M1_unit|Y_compare_address[11]~26\) # (!\M1_unit|Y_compare_address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(12),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[11]~26\,
	combout => \M1_unit|Y_compare_address[12]~27_combout\,
	cout => \M1_unit|Y_compare_address[12]~28\);

-- Location: LCCOMB_X27_Y25_N10
\VGA_unit|VGA_unit|oVGA_V_SYNC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(7),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\);

-- Location: LCCOMB_X28_Y27_N4
\VGA_unit|VGA_unit|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~3_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont\(9) & !\VGA_unit|VGA_unit|V_Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(7),
	datab => \VGA_unit|VGA_unit|V_Cont\(8),
	datac => \VGA_unit|VGA_unit|V_Cont\(9),
	datad => \VGA_unit|VGA_unit|V_Cont\(6),
	combout => \VGA_unit|VGA_unit|LessThan6~3_combout\);

-- Location: LCFF_X22_Y31_N29
\VGA_unit|VGA_red[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(4));

-- Location: LCFF_X22_Y31_N31
\VGA_unit|VGA_red[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~8_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(5));

-- Location: LCFF_X22_Y31_N9
\VGA_unit|VGA_green[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(2));

-- Location: LCFF_X22_Y31_N5
\VGA_unit|VGA_green[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(4));

-- Location: LCFF_X22_Y30_N3
\VGA_unit|VGA_blue[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(3));

-- Location: LCFF_X22_Y30_N13
\VGA_unit|VGA_blue[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~7_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(4));

-- Location: LCFF_X22_Y30_N9
\VGA_unit|VGA_blue[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~11_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(6));

-- Location: LCCOMB_X41_Y22_N28
\M1_unit|SRAM_address[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|SRAM_address[14]~0_combout\ = (!\M1_unit|state.S_RUN_4~regout\ & (\M1_unit|state.S_M1_IDLE~regout\ & !\M1_unit|state.S_START_LINE_0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_4~regout\,
	datab => \M1_unit|state.S_M1_IDLE~regout\,
	datac => \M1_unit|state.S_START_LINE_0~regout\,
	combout => \M1_unit|SRAM_address[14]~0_combout\);

-- Location: LCCOMB_X44_Y22_N2
\M1_unit|Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector57~0_combout\ = (\M1_unit|SRAM_address[14]~3_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(7)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(7))))) # (!\M1_unit|SRAM_address[14]~3_combout\ & 
-- (((\M1_unit|SRAM_address[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~3_combout\,
	datab => \M1_unit|U_address\(7),
	datac => \M1_unit|SRAM_address[14]~2_combout\,
	datad => \M1_unit|Y_address\(7),
	combout => \M1_unit|Selector57~0_combout\);

-- Location: LCCOMB_X44_Y21_N26
\M1_unit|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector54~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|SRAM_address[14]~3_combout\ & \M1_unit|Y_address\(10))))) # (!\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|U_address\(10)) # 
-- ((!\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(10),
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|SRAM_address[14]~3_combout\,
	datad => \M1_unit|Y_address\(10),
	combout => \M1_unit|Selector54~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\VGA_unit|VGA_unit|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont\(5) & !\VGA_unit|VGA_unit|H_Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => \VGA_unit|VGA_unit|H_Cont\(7),
	combout => \VGA_unit|VGA_unit|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\VGA_unit|VGA_unit|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~1_combout\ = (\VGA_unit|VGA_unit|LessThan0~0_combout\ & (((!\VGA_unit|Equal0~0_combout\) # (!\VGA_unit|VGA_unit|H_Cont\(4))) # (!\VGA_unit|VGA_unit|H_Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(1),
	datab => \VGA_unit|VGA_unit|LessThan0~0_combout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|Equal0~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y27_N30
\VGA_unit|VGA_unit|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~1_combout\ = ((!\VGA_unit|VGA_unit|V_Cont\(2) & ((!\VGA_unit|VGA_unit|V_Cont\(0)) # (!\VGA_unit|VGA_unit|V_Cont\(1))))) # (!\VGA_unit|VGA_unit|V_Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datab => \VGA_unit|VGA_unit|V_Cont\(2),
	datac => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => \VGA_unit|VGA_unit|V_Cont\(0),
	combout => \VGA_unit|VGA_unit|LessThan2~1_combout\);

-- Location: LCCOMB_X27_Y26_N12
\VGA_unit|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~1_combout\ = (!\VGA_unit|VGA_unit|Add1~16_combout\ & (!\VGA_unit|VGA_unit|Add1~14_combout\ & (!\VGA_unit|VGA_unit|Add1~2_combout\ & !\VGA_unit|VGA_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~14_combout\,
	datac => \VGA_unit|VGA_unit|Add1~2_combout\,
	datad => \VGA_unit|VGA_unit|Add1~0_combout\,
	combout => \VGA_unit|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y26_N8
\VGA_unit|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~0_combout\ = (\VGA_unit|VGA_unit|Add1~8_combout\ & (\VGA_unit|VGA_unit|Add1~12_combout\ & (\VGA_unit|VGA_unit|Add1~6_combout\ & \VGA_unit|VGA_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~8_combout\,
	datab => \VGA_unit|VGA_unit|Add1~12_combout\,
	datac => \VGA_unit|VGA_unit|Add1~6_combout\,
	datad => \VGA_unit|VGA_unit|Add1~0_combout\,
	combout => \VGA_unit|Equal4~0_combout\);

-- Location: LCCOMB_X27_Y26_N10
\VGA_unit|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~1_combout\ = (\VGA_unit|VGA_unit|Add1~2_combout\ & (\VGA_unit|VGA_unit|Add1~4_combout\ & (!\VGA_unit|VGA_unit|Add1~18_combout\ & !\VGA_unit|VGA_unit|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~2_combout\,
	datab => \VGA_unit|VGA_unit|Add1~4_combout\,
	datac => \VGA_unit|VGA_unit|Add1~18_combout\,
	datad => \VGA_unit|VGA_unit|Add1~10_combout\,
	combout => \VGA_unit|Equal4~1_combout\);

-- Location: LCCOMB_X27_Y26_N20
\VGA_unit|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal4~2_combout\ = (\VGA_unit|Equal4~1_combout\ & (\VGA_unit|VGA_unit|Add1~14_combout\ & (\VGA_unit|Equal4~0_combout\ & \VGA_unit|VGA_unit|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal4~1_combout\,
	datab => \VGA_unit|VGA_unit|Add1~14_combout\,
	datac => \VGA_unit|Equal4~0_combout\,
	datad => \VGA_unit|VGA_unit|Add1~16_combout\,
	combout => \VGA_unit|Equal4~2_combout\);

-- Location: LCCOMB_X28_Y25_N24
\VGA_unit|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(3) & (!\VGA_unit|VGA_unit|H_Cont\(2) & (\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(3),
	datab => \VGA_unit|VGA_unit|H_Cont\(2),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(0),
	combout => \VGA_unit|always0~0_combout\);

-- Location: LCFF_X23_Y31_N9
\VGA_unit|VGA_sram_data[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][1]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][1]~regout\);

-- Location: LCFF_X23_Y31_N3
\VGA_unit|VGA_sram_data[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(9),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][9]~regout\);

-- Location: LCCOMB_X23_Y31_N2
\VGA_unit|VGA_red~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~3_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][1]~regout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[2][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][9]~regout\,
	datad => \VGA_unit|VGA_sram_data[1][1]~regout\,
	combout => \VGA_unit|VGA_red~3_combout\);

-- Location: LCFF_X23_Y31_N13
\VGA_unit|VGA_sram_data[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][2]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][2]~regout\);

-- Location: LCFF_X23_Y31_N7
\VGA_unit|VGA_sram_data[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(10),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][10]~regout\);

-- Location: LCCOMB_X23_Y31_N6
\VGA_unit|VGA_red~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~5_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][2]~regout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[2][10]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][10]~regout\,
	datad => \VGA_unit|VGA_sram_data[1][2]~regout\,
	combout => \VGA_unit|VGA_red~5_combout\);

-- Location: LCCOMB_X22_Y31_N28
\VGA_unit|VGA_red~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~6_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~5_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~5_combout\,
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~6_combout\);

-- Location: LCFF_X23_Y31_N17
\VGA_unit|VGA_sram_data[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][3]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][3]~regout\);

-- Location: LCFF_X23_Y31_N27
\VGA_unit|VGA_sram_data[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(11),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][11]~regout\);

-- Location: LCCOMB_X23_Y31_N26
\VGA_unit|VGA_red~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~7_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[1][3]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[1][3]~regout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][11]~regout\,
	combout => \VGA_unit|VGA_red~7_combout\);

-- Location: LCCOMB_X22_Y31_N30
\VGA_unit|VGA_red~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~8_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~7_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~7_combout\,
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~8_combout\);

-- Location: LCFF_X21_Y31_N7
\VGA_unit|VGA_sram_data[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(4),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][4]~regout\);

-- Location: LCFF_X21_Y31_N23
\VGA_unit|VGA_sram_data[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][6]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][6]~regout\);

-- Location: LCFF_X21_Y31_N9
\VGA_unit|VGA_sram_data[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(14),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][14]~regout\);

-- Location: LCCOMB_X21_Y31_N8
\VGA_unit|VGA_red~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~13_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[1][6]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[1][6]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][14]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_red~13_combout\);

-- Location: LCFF_X23_Y33_N31
\VGA_unit|VGA_sram_data[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][8]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][8]~regout\);

-- Location: LCFF_X23_Y31_N5
\VGA_unit|VGA_sram_data[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(0),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][0]~regout\);

-- Location: LCCOMB_X23_Y31_N4
\VGA_unit|VGA_green~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~1_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[0][8]~regout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[2][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][0]~regout\,
	datad => \VGA_unit|VGA_sram_data[0][8]~regout\,
	combout => \VGA_unit|VGA_green~1_combout\);

-- Location: LCCOMB_X22_Y31_N8
\VGA_unit|VGA_green~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~2_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_green~1_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~1_combout\,
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green~2_combout\);

-- Location: LCFF_X23_Y33_N27
\VGA_unit|VGA_sram_data[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(10),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][10]~regout\);

-- Location: LCFF_X23_Y31_N25
\VGA_unit|VGA_sram_data[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(2),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][2]~regout\);

-- Location: LCCOMB_X23_Y31_N24
\VGA_unit|VGA_green~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~5_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[0][10]~regout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[2][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][2]~regout\,
	datad => \VGA_unit|VGA_sram_data[0][10]~regout\,
	combout => \VGA_unit|VGA_green~5_combout\);

-- Location: LCCOMB_X22_Y31_N4
\VGA_unit|VGA_green~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~6_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_green~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_green~5_combout\,
	combout => \VGA_unit|VGA_green~6_combout\);

-- Location: LCFF_X17_Y32_N23
\VGA_unit|VGA_sram_data[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][12]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][12]~regout\);

-- Location: LCFF_X21_Y31_N15
\VGA_unit|VGA_sram_data[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(4),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][4]~regout\);

-- Location: LCCOMB_X21_Y31_N14
\VGA_unit|VGA_green~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~9_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][12]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[0][12]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][4]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_green~9_combout\);

-- Location: LCFF_X17_Y32_N5
\VGA_unit|VGA_sram_data[0][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][15]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][15]~regout\);

-- Location: LCFF_X21_Y31_N13
\VGA_unit|VGA_sram_data[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(7),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][7]~regout\);

-- Location: LCCOMB_X21_Y31_N12
\VGA_unit|VGA_green~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~15_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][15]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[0][15]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][7]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_green~15_combout\);

-- Location: LCFF_X12_Y30_N19
\VGA_unit|VGA_sram_data[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][1]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][1]~regout\);

-- Location: LCFF_X22_Y30_N19
\VGA_unit|VGA_sram_data[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(9),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][9]~regout\);

-- Location: LCCOMB_X22_Y30_N18
\VGA_unit|VGA_blue~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~4_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][1]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[0][1]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][9]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~4_combout\);

-- Location: LCCOMB_X22_Y30_N2
\VGA_unit|VGA_blue~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~5_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datab => \VGA_unit|VGA_blue~4_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~5_combout\);

-- Location: LCFF_X12_Y30_N21
\VGA_unit|VGA_sram_data[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(2),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][2]~regout\);

-- Location: LCFF_X22_Y30_N29
\VGA_unit|VGA_sram_data[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(10),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][10]~regout\);

-- Location: LCCOMB_X22_Y30_N28
\VGA_unit|VGA_blue~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~6_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][2]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[0][2]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][10]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~6_combout\);

-- Location: LCCOMB_X22_Y30_N12
\VGA_unit|VGA_blue~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~7_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datab => \VGA_unit|VGA_blue~6_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~7_combout\);

-- Location: LCFF_X12_Y30_N15
\VGA_unit|VGA_sram_data[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][3]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][3]~regout\);

-- Location: LCFF_X12_Y30_N25
\VGA_unit|VGA_sram_data[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][4]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][4]~regout\);

-- Location: LCFF_X22_Y30_N25
\VGA_unit|VGA_sram_data[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(12),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][12]~regout\);

-- Location: LCCOMB_X22_Y30_N24
\VGA_unit|VGA_blue~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~10_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][4]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[0][4]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][12]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~10_combout\);

-- Location: LCCOMB_X22_Y30_N8
\VGA_unit|VGA_blue~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~11_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|VGA_blue~10_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~11_combout\);

-- Location: LCFF_X12_Y30_N3
\VGA_unit|VGA_sram_data[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][5]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][5]~regout\);

-- Location: LCFF_X12_Y30_N23
\VGA_unit|VGA_sram_data[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(7),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][7]~regout\);

-- Location: LCCOMB_X42_Y22_N10
\M1_unit|WideOr36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr36~0_combout\ = (!\M1_unit|state.S_RUN_5~regout\ & (!\M1_unit|state.S_RUN_3~regout\ & (!\M1_unit|state.S_END_LINE_4~regout\ & !\M1_unit|state.S_END_LINE_5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_5~regout\,
	datab => \M1_unit|state.S_RUN_3~regout\,
	datac => \M1_unit|state.S_END_LINE_4~regout\,
	datad => \M1_unit|state.S_END_LINE_5~regout\,
	combout => \M1_unit|WideOr36~0_combout\);

-- Location: LCCOMB_X44_Y22_N4
\M1_unit|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal1~0_combout\ = (\M1_unit|Y_address\(3) & (\M1_unit|Y_address\(2) & (\M1_unit|Y_address\(0) & \M1_unit|Y_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(3),
	datab => \M1_unit|Y_address\(2),
	datac => \M1_unit|Y_address\(0),
	datad => \M1_unit|Y_address\(4),
	combout => \M1_unit|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y25_N24
\VGA_unit|VGA_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add0~2_combout\ = \VGA_unit|VGA_unit|H_Cont\(9) $ (((\VGA_unit|VGA_unit|Add0~0_combout\) # (\VGA_unit|VGA_unit|H_Cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|Add0~0_combout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_unit|H_Cont\(9),
	combout => \VGA_unit|VGA_unit|Add0~2_combout\);

-- Location: LCCOMB_X28_Y25_N26
\VGA_unit|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|LessThan2~1_combout\ = (((\VGA_unit|VGA_unit|H_Cont\(4)) # (!\VGA_unit|VGA_unit|H_Cont\(1))) # (!\VGA_unit|VGA_unit|H_Cont\(2))) # (!\VGA_unit|VGA_unit|H_Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(3),
	datab => \VGA_unit|VGA_unit|H_Cont\(2),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(1),
	combout => \VGA_unit|LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y25_N28
\VGA_unit|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~3_combout\ = (\VGA_unit|VGA_unit|H_Cont\(3) & (\VGA_unit|VGA_unit|H_Cont\(2) & (!\VGA_unit|VGA_unit|H_Cont\(4) & \VGA_unit|VGA_unit|H_Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(3),
	datab => \VGA_unit|VGA_unit|H_Cont\(2),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(0),
	combout => \VGA_unit|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y26_N22
\VGA_unit|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~4_combout\ = (\VGA_unit|VGA_unit|Add0~1_combout\ & (\VGA_unit|Equal0~2_combout\ & (\VGA_unit|Equal0~3_combout\ & \VGA_unit|VGA_unit|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~1_combout\,
	datab => \VGA_unit|Equal0~2_combout\,
	datac => \VGA_unit|Equal0~3_combout\,
	datad => \VGA_unit|VGA_unit|Add0~3_combout\,
	combout => \VGA_unit|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y30_N6
\VGA_unit|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Selector18~0_combout\ = (\VGA_unit|Equal0~4_combout\ & (!\VGA_unit|always0~7_combout\ & !\VGA_unit|VGA_unit|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|Equal0~4_combout\,
	datac => \VGA_unit|always0~7_combout\,
	datad => \VGA_unit|VGA_unit|Add1~18_combout\,
	combout => \VGA_unit|Selector18~0_combout\);

-- Location: LCFF_X23_Y30_N13
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~regout\);

-- Location: LCCOMB_X44_Y22_N10
\M1_unit|Selector62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector62~0_combout\ = (\M1_unit|SRAM_address[14]~3_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(2)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(2))))) # (!\M1_unit|SRAM_address[14]~3_combout\ & 
-- (((\M1_unit|SRAM_address[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~3_combout\,
	datab => \M1_unit|U_address\(2),
	datac => \M1_unit|SRAM_address[14]~2_combout\,
	datad => \M1_unit|Y_address\(2),
	combout => \M1_unit|Selector62~0_combout\);

-- Location: LCCOMB_X44_Y22_N12
\M1_unit|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector61~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|Y_address\(3)) # (!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(3) & 
-- ((\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(3),
	datab => \M1_unit|Y_address\(3),
	datac => \M1_unit|SRAM_address[14]~2_combout\,
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector61~0_combout\);

-- Location: LCCOMB_X41_Y22_N16
\M1_unit|WideOr23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr23~1_combout\ = (!\M1_unit|state.S_START_LINE_6~regout\ & (!\M1_unit|state.S_START_LINE_1~regout\ & (!\M1_unit|state.S_RUN_2~regout\ & !\M1_unit|state.S_START_LINE_0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_START_LINE_6~regout\,
	datab => \M1_unit|state.S_START_LINE_1~regout\,
	datac => \M1_unit|state.S_RUN_2~regout\,
	datad => \M1_unit|state.S_START_LINE_0~regout\,
	combout => \M1_unit|WideOr23~1_combout\);

-- Location: LCCOMB_X41_Y22_N6
\M1_unit|WideOr23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr23~2_combout\ = (!\M1_unit|state.S_START_LINE_4~regout\ & (\M1_unit|WideOr23~1_combout\ & (!\M1_unit|state.S_END_LINE_1~regout\ & !\M1_unit|state.S_START_LINE_5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_START_LINE_4~regout\,
	datab => \M1_unit|WideOr23~1_combout\,
	datac => \M1_unit|state.S_END_LINE_1~regout\,
	datad => \M1_unit|state.S_START_LINE_5~regout\,
	combout => \M1_unit|WideOr23~2_combout\);

-- Location: LCCOMB_X42_Y21_N12
\M1_unit|Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector88~0_combout\ = (\M1_unit|Y_compare_address\(12) & \M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(12),
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector88~0_combout\);

-- Location: LCCOMB_X12_Y30_N18
\VGA_unit|VGA_sram_data[0][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][1]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(1),
	combout => \VGA_unit|VGA_sram_data[0][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y31_N8
\VGA_unit|VGA_sram_data[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][1]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(1),
	combout => \VGA_unit|VGA_sram_data[1][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y31_N12
\VGA_unit|VGA_sram_data[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][2]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \VGA_unit|VGA_sram_data[1][2]~feeder_combout\);

-- Location: LCCOMB_X12_Y30_N14
\VGA_unit|VGA_sram_data[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][3]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \VGA_unit|VGA_sram_data[0][3]~feeder_combout\);

-- Location: LCCOMB_X23_Y31_N16
\VGA_unit|VGA_sram_data[1][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][3]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \VGA_unit|VGA_sram_data[1][3]~feeder_combout\);

-- Location: LCCOMB_X12_Y30_N24
\VGA_unit|VGA_sram_data[0][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][4]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(4),
	combout => \VGA_unit|VGA_sram_data[0][4]~feeder_combout\);

-- Location: LCCOMB_X12_Y30_N2
\VGA_unit|VGA_sram_data[0][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][5]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \VGA_unit|VGA_sram_data[0][5]~feeder_combout\);

-- Location: LCCOMB_X21_Y31_N22
\VGA_unit|VGA_sram_data[1][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][6]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \VGA_unit|VGA_sram_data[1][6]~feeder_combout\);

-- Location: LCCOMB_X23_Y33_N30
\VGA_unit|VGA_sram_data[0][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][8]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(8),
	combout => \VGA_unit|VGA_sram_data[0][8]~feeder_combout\);

-- Location: LCCOMB_X17_Y32_N22
\VGA_unit|VGA_sram_data[0][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][12]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \VGA_unit|VGA_sram_data[0][12]~feeder_combout\);

-- Location: LCCOMB_X17_Y32_N4
\VGA_unit|VGA_sram_data[0][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][15]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \VGA_unit|VGA_sram_data[0][15]~feeder_combout\);

-- Location: LCCOMB_X23_Y30_N12
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~feeder_combout\ = \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_4~regout\,
	combout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~feeder_combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(0),
	combout => \SRAM_DATA_IO[0]~0\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(1),
	combout => \SRAM_DATA_IO[1]~1\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(2),
	combout => \SRAM_DATA_IO[2]~2\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(3),
	combout => \SRAM_DATA_IO[3]~3\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(4),
	combout => \SRAM_DATA_IO[4]~4\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(5),
	combout => \SRAM_DATA_IO[5]~5\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(7),
	combout => \SRAM_DATA_IO[7]~7\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(8),
	combout => \SRAM_DATA_IO[8]~8\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(9),
	combout => \SRAM_DATA_IO[9]~9\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(10),
	combout => \SRAM_DATA_IO[10]~10\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(11),
	combout => \SRAM_DATA_IO[11]~11\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(12),
	combout => \SRAM_DATA_IO[12]~12\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(13),
	combout => \SRAM_DATA_IO[13]~13\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(14),
	combout => \SRAM_DATA_IO[14]~14\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	oe => VCC,
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

-- Location: LCCOMB_X41_Y21_N24
\M1_unit|Y_compare_address[14]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[14]~31_combout\ = (\M1_unit|Y_compare_address\(14) & (!\M1_unit|Y_compare_address[13]~30\)) # (!\M1_unit|Y_compare_address\(14) & ((\M1_unit|Y_compare_address[13]~30\) # (GND)))
-- \M1_unit|Y_compare_address[14]~32\ = CARRY((!\M1_unit|Y_compare_address[13]~30\) # (!\M1_unit|Y_compare_address\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(14),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[13]~30\,
	combout => \M1_unit|Y_compare_address[14]~31_combout\,
	cout => \M1_unit|Y_compare_address[14]~32\);

-- Location: LCCOMB_X44_Y22_N14
\M1_unit|Y_address[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[0]~18_combout\ = \M1_unit|Y_address\(0) $ (VCC)
-- \M1_unit|Y_address[0]~19\ = CARRY(\M1_unit|Y_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(0),
	datad => VCC,
	combout => \M1_unit|Y_address[0]~18_combout\,
	cout => \M1_unit|Y_address[0]~19\);

-- Location: LCCOMB_X41_Y21_N16
\M1_unit|Y_compare_address[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[10]~23_combout\ = (\M1_unit|Y_compare_address\(10) & (!\M1_unit|Y_compare_address[9]~22\)) # (!\M1_unit|Y_compare_address\(10) & ((\M1_unit|Y_compare_address[9]~22\) # (GND)))
-- \M1_unit|Y_compare_address[10]~24\ = CARRY((!\M1_unit|Y_compare_address[9]~22\) # (!\M1_unit|Y_compare_address\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(10),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[9]~22\,
	combout => \M1_unit|Y_compare_address[10]~23_combout\,
	cout => \M1_unit|Y_compare_address[10]~24\);

-- Location: LCCOMB_X42_Y20_N30
\M1_unit|Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector90~0_combout\ = (\M1_unit|Y_compare_address\(10) & \M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|Y_compare_address\(10),
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector90~0_combout\);

-- Location: LCFF_X41_Y22_N31
\M1_unit|state.S_END_LINE_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_END_LINE_2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_END_LINE_3~regout\);

-- Location: LCFF_X42_Y22_N11
\M1_unit|state.S_END_LINE_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_END_LINE_3~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_END_LINE_4~regout\);

-- Location: LCCOMB_X42_Y22_N24
\M1_unit|state.S_END_LINE_5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state.S_END_LINE_5~feeder_combout\ = \M1_unit|state.S_END_LINE_4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|state.S_END_LINE_4~regout\,
	combout => \M1_unit|state.S_END_LINE_5~feeder_combout\);

-- Location: LCFF_X42_Y22_N25
\M1_unit|state.S_END_LINE_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|state.S_END_LINE_5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_END_LINE_5~regout\);

-- Location: LCFF_X41_Y21_N17
\M1_unit|Y_compare_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[10]~23_combout\,
	sdata => \M1_unit|Selector90~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(10));

-- Location: LCCOMB_X41_Y21_N12
\M1_unit|Y_compare_address[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[8]~19_combout\ = (\M1_unit|Y_compare_address\(8) & (!\M1_unit|Y_compare_address[7]~18\)) # (!\M1_unit|Y_compare_address\(8) & ((\M1_unit|Y_compare_address[7]~18\) # (GND)))
-- \M1_unit|Y_compare_address[8]~20\ = CARRY((!\M1_unit|Y_compare_address[7]~18\) # (!\M1_unit|Y_compare_address\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(8),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[7]~18\,
	combout => \M1_unit|Y_compare_address[8]~19_combout\,
	cout => \M1_unit|Y_compare_address[8]~20\);

-- Location: LCCOMB_X44_Y21_N24
\M1_unit|Selector92~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector92~0_combout\ = (\M1_unit|Y_compare_address\(8) & \M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(8),
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector92~0_combout\);

-- Location: LCFF_X41_Y21_N13
\M1_unit|Y_compare_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[8]~19_combout\,
	sdata => \M1_unit|Selector92~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(8));

-- Location: LCCOMB_X41_Y21_N6
\M1_unit|Y_compare_address[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[5]~13_combout\ = (\M1_unit|Y_compare_address\(5) & (\M1_unit|state~58_combout\ $ (GND))) # (!\M1_unit|Y_compare_address\(5) & (!\M1_unit|state~58_combout\ & VCC))
-- \M1_unit|Y_compare_address[5]~14\ = CARRY((\M1_unit|Y_compare_address\(5) & !\M1_unit|state~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(5),
	datab => \M1_unit|state~58_combout\,
	datad => VCC,
	combout => \M1_unit|Y_compare_address[5]~13_combout\,
	cout => \M1_unit|Y_compare_address[5]~14\);

-- Location: LCCOMB_X41_Y21_N8
\M1_unit|Y_compare_address[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[6]~15_combout\ = (\M1_unit|Y_compare_address\(6) & (!\M1_unit|Y_compare_address[5]~14\)) # (!\M1_unit|Y_compare_address\(6) & ((\M1_unit|Y_compare_address[5]~14\) # (GND)))
-- \M1_unit|Y_compare_address[6]~16\ = CARRY((!\M1_unit|Y_compare_address[5]~14\) # (!\M1_unit|Y_compare_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(6),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[5]~14\,
	combout => \M1_unit|Y_compare_address[6]~15_combout\,
	cout => \M1_unit|Y_compare_address[6]~16\);

-- Location: LCCOMB_X42_Y21_N8
\M1_unit|Selector94~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector94~0_combout\ = (\M1_unit|state.S_M1_IDLE~regout\ & \M1_unit|Y_compare_address\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	datad => \M1_unit|Y_compare_address\(6),
	combout => \M1_unit|Selector94~0_combout\);

-- Location: LCFF_X41_Y21_N9
\M1_unit|Y_compare_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[6]~15_combout\,
	sdata => \M1_unit|Selector94~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(6));

-- Location: LCCOMB_X41_Y21_N10
\M1_unit|Y_compare_address[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[7]~17_combout\ = ((\M1_unit|Y_compare_address\(7) $ (\M1_unit|state~58_combout\ $ (\M1_unit|Y_compare_address[6]~16\)))) # (GND)
-- \M1_unit|Y_compare_address[7]~18\ = CARRY((\M1_unit|Y_compare_address\(7) & ((!\M1_unit|Y_compare_address[6]~16\) # (!\M1_unit|state~58_combout\))) # (!\M1_unit|Y_compare_address\(7) & (!\M1_unit|state~58_combout\ & !\M1_unit|Y_compare_address[6]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(7),
	datab => \M1_unit|state~58_combout\,
	datad => VCC,
	cin => \M1_unit|Y_compare_address[6]~16\,
	combout => \M1_unit|Y_compare_address[7]~17_combout\,
	cout => \M1_unit|Y_compare_address[7]~18\);

-- Location: LCCOMB_X42_Y21_N6
\M1_unit|Selector93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector93~0_combout\ = (\M1_unit|state.S_M1_IDLE~regout\ & \M1_unit|Y_compare_address\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	datad => \M1_unit|Y_compare_address\(7),
	combout => \M1_unit|Selector93~0_combout\);

-- Location: LCFF_X41_Y21_N11
\M1_unit|Y_compare_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[7]~17_combout\,
	sdata => \M1_unit|Selector93~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(7));

-- Location: LCCOMB_X44_Y21_N18
\M1_unit|Selector95~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector95~0_combout\ = (\M1_unit|state.S_M1_IDLE~regout\ & \M1_unit|Y_compare_address\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|state.S_M1_IDLE~regout\,
	datac => \M1_unit|Y_compare_address\(5),
	combout => \M1_unit|Selector95~0_combout\);

-- Location: LCFF_X41_Y21_N7
\M1_unit|Y_compare_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[5]~13_combout\,
	sdata => \M1_unit|Selector95~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(5));

-- Location: LCCOMB_X45_Y21_N2
\M1_unit|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~0_combout\ = (\M1_unit|Y_address\(5) & ((GND) # (!\M1_unit|Y_compare_address\(5)))) # (!\M1_unit|Y_address\(5) & (\M1_unit|Y_compare_address\(5) $ (GND)))
-- \M1_unit|Add4~1\ = CARRY((\M1_unit|Y_address\(5)) # (!\M1_unit|Y_compare_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(5),
	datab => \M1_unit|Y_compare_address\(5),
	datad => VCC,
	combout => \M1_unit|Add4~0_combout\,
	cout => \M1_unit|Add4~1\);

-- Location: LCCOMB_X45_Y21_N4
\M1_unit|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~2_combout\ = (\M1_unit|Y_address\(6) & ((\M1_unit|Y_compare_address\(6) & (!\M1_unit|Add4~1\)) # (!\M1_unit|Y_compare_address\(6) & (\M1_unit|Add4~1\ & VCC)))) # (!\M1_unit|Y_address\(6) & ((\M1_unit|Y_compare_address\(6) & 
-- ((\M1_unit|Add4~1\) # (GND))) # (!\M1_unit|Y_compare_address\(6) & (!\M1_unit|Add4~1\))))
-- \M1_unit|Add4~3\ = CARRY((\M1_unit|Y_address\(6) & (\M1_unit|Y_compare_address\(6) & !\M1_unit|Add4~1\)) # (!\M1_unit|Y_address\(6) & ((\M1_unit|Y_compare_address\(6)) # (!\M1_unit|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(6),
	datab => \M1_unit|Y_compare_address\(6),
	datad => VCC,
	cin => \M1_unit|Add4~1\,
	combout => \M1_unit|Add4~2_combout\,
	cout => \M1_unit|Add4~3\);

-- Location: LCCOMB_X45_Y21_N6
\M1_unit|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~4_combout\ = ((\M1_unit|Y_address\(7) $ (\M1_unit|Y_compare_address\(7) $ (\M1_unit|Add4~3\)))) # (GND)
-- \M1_unit|Add4~5\ = CARRY((\M1_unit|Y_address\(7) & ((!\M1_unit|Add4~3\) # (!\M1_unit|Y_compare_address\(7)))) # (!\M1_unit|Y_address\(7) & (!\M1_unit|Y_compare_address\(7) & !\M1_unit|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(7),
	datab => \M1_unit|Y_compare_address\(7),
	datad => VCC,
	cin => \M1_unit|Add4~3\,
	combout => \M1_unit|Add4~4_combout\,
	cout => \M1_unit|Add4~5\);

-- Location: LCCOMB_X45_Y21_N10
\M1_unit|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~8_combout\ = ((\M1_unit|Y_address\(9) $ (\M1_unit|Y_compare_address\(9) $ (\M1_unit|Add4~7\)))) # (GND)
-- \M1_unit|Add4~9\ = CARRY((\M1_unit|Y_address\(9) & ((!\M1_unit|Add4~7\) # (!\M1_unit|Y_compare_address\(9)))) # (!\M1_unit|Y_address\(9) & (!\M1_unit|Y_compare_address\(9) & !\M1_unit|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(9),
	datab => \M1_unit|Y_compare_address\(9),
	datad => VCC,
	cin => \M1_unit|Add4~7\,
	combout => \M1_unit|Add4~8_combout\,
	cout => \M1_unit|Add4~9\);

-- Location: LCCOMB_X45_Y21_N14
\M1_unit|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~12_combout\ = ((\M1_unit|Y_compare_address\(11) $ (\M1_unit|Y_address\(11) $ (\M1_unit|Add4~11\)))) # (GND)
-- \M1_unit|Add4~13\ = CARRY((\M1_unit|Y_compare_address\(11) & (\M1_unit|Y_address\(11) & !\M1_unit|Add4~11\)) # (!\M1_unit|Y_compare_address\(11) & ((\M1_unit|Y_address\(11)) # (!\M1_unit|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(11),
	datab => \M1_unit|Y_address\(11),
	datad => VCC,
	cin => \M1_unit|Add4~11\,
	combout => \M1_unit|Add4~12_combout\,
	cout => \M1_unit|Add4~13\);

-- Location: LCCOMB_X44_Y21_N6
\M1_unit|Y_address[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[12]~42_combout\ = (\M1_unit|Y_address\(12) & (\M1_unit|Y_address[11]~41\ $ (GND))) # (!\M1_unit|Y_address\(12) & (!\M1_unit|Y_address[11]~41\ & VCC))
-- \M1_unit|Y_address[12]~43\ = CARRY((\M1_unit|Y_address\(12) & !\M1_unit|Y_address[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(12),
	datad => VCC,
	cin => \M1_unit|Y_address[11]~41\,
	combout => \M1_unit|Y_address[12]~42_combout\,
	cout => \M1_unit|Y_address[12]~43\);

-- Location: LCFF_X44_Y21_N7
\M1_unit|Y_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[12]~42_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(12));

-- Location: LCCOMB_X45_Y21_N16
\M1_unit|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~14_combout\ = (\M1_unit|Y_compare_address\(12) & ((\M1_unit|Y_address\(12) & (!\M1_unit|Add4~13\)) # (!\M1_unit|Y_address\(12) & ((\M1_unit|Add4~13\) # (GND))))) # (!\M1_unit|Y_compare_address\(12) & ((\M1_unit|Y_address\(12) & 
-- (\M1_unit|Add4~13\ & VCC)) # (!\M1_unit|Y_address\(12) & (!\M1_unit|Add4~13\))))
-- \M1_unit|Add4~15\ = CARRY((\M1_unit|Y_compare_address\(12) & ((!\M1_unit|Add4~13\) # (!\M1_unit|Y_address\(12)))) # (!\M1_unit|Y_compare_address\(12) & (!\M1_unit|Y_address\(12) & !\M1_unit|Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_compare_address\(12),
	datab => \M1_unit|Y_address\(12),
	datad => VCC,
	cin => \M1_unit|Add4~13\,
	combout => \M1_unit|Add4~14_combout\,
	cout => \M1_unit|Add4~15\);

-- Location: LCCOMB_X45_Y21_N28
\M1_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal0~0_combout\ = (!\M1_unit|Add4~10_combout\ & (!\M1_unit|Add4~12_combout\ & (!\M1_unit|Add4~14_combout\ & !\M1_unit|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Add4~10_combout\,
	datab => \M1_unit|Add4~12_combout\,
	datac => \M1_unit|Add4~14_combout\,
	datad => \M1_unit|Add4~8_combout\,
	combout => \M1_unit|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y21_N0
\M1_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal0~2_combout\ = (!\M1_unit|Add4~6_combout\ & (\M1_unit|Add4~4_combout\ & (!\M1_unit|Add4~2_combout\ & !\M1_unit|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Add4~6_combout\,
	datab => \M1_unit|Add4~4_combout\,
	datac => \M1_unit|Add4~2_combout\,
	datad => \M1_unit|Add4~0_combout\,
	combout => \M1_unit|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y22_N20
\M1_unit|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal0~3_combout\ = (\M1_unit|Equal1~0_combout\ & (\M1_unit|Equal0~0_combout\ & (\M1_unit|Equal0~1_combout\ & \M1_unit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Equal1~0_combout\,
	datab => \M1_unit|Equal0~0_combout\,
	datac => \M1_unit|Equal0~1_combout\,
	datad => \M1_unit|Equal0~2_combout\,
	combout => \M1_unit|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y22_N30
\M1_unit|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector0~0_combout\ = ((!\M1_unit|state~58_combout\ & \M1_unit|state.S_END_LINE_5~regout\)) # (!\M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|state~58_combout\,
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	datad => \M1_unit|state.S_END_LINE_5~regout\,
	combout => \M1_unit|Selector0~0_combout\);

-- Location: LCFF_X42_Y22_N31
\M1_unit|state.S_M1_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_M1_START~regout\);

-- Location: LCFF_X41_Y22_N29
\M1_unit|state.S_START_LINE_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_M1_START~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_0~regout\);

-- Location: LCCOMB_X41_Y22_N26
\M1_unit|state.S_START_LINE_1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state.S_START_LINE_1~feeder_combout\ = \M1_unit|state.S_START_LINE_0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|state.S_START_LINE_0~regout\,
	combout => \M1_unit|state.S_START_LINE_1~feeder_combout\);

-- Location: LCFF_X41_Y22_N27
\M1_unit|state.S_START_LINE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|state.S_START_LINE_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_1~regout\);

-- Location: LCCOMB_X41_Y22_N12
\M1_unit|state.S_START_LINE_2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state.S_START_LINE_2~feeder_combout\ = \M1_unit|state.S_START_LINE_1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|state.S_START_LINE_1~regout\,
	combout => \M1_unit|state.S_START_LINE_2~feeder_combout\);

-- Location: LCFF_X41_Y22_N13
\M1_unit|state.S_START_LINE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|state.S_START_LINE_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_2~regout\);

-- Location: LCCOMB_X41_Y22_N2
\M1_unit|state.S_START_LINE_3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state.S_START_LINE_3~feeder_combout\ = \M1_unit|state.S_START_LINE_2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|state.S_START_LINE_2~regout\,
	combout => \M1_unit|state.S_START_LINE_3~feeder_combout\);

-- Location: LCFF_X41_Y22_N3
\M1_unit|state.S_START_LINE_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|state.S_START_LINE_3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_3~regout\);

-- Location: LCFF_X41_Y22_N25
\M1_unit|state.S_START_LINE_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_START_LINE_3~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_4~regout\);

-- Location: LCFF_X41_Y22_N23
\M1_unit|state.S_START_LINE_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_START_LINE_4~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_5~regout\);

-- Location: LCFF_X41_Y22_N5
\M1_unit|state.S_START_LINE_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_START_LINE_5~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_6~regout\);

-- Location: LCFF_X41_Y22_N11
\M1_unit|state.S_START_LINE_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_START_LINE_6~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_7~regout\);

-- Location: LCFF_X40_Y22_N17
\M1_unit|state.S_START_LINE_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_START_LINE_7~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_8~regout\);

-- Location: LCFF_X42_Y22_N23
\M1_unit|state.S_START_LINE_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_START_LINE_8~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_START_LINE_9~regout\);

-- Location: LCCOMB_X44_Y22_N16
\M1_unit|Y_address[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[1]~20_combout\ = (\M1_unit|Y_address\(1) & (!\M1_unit|Y_address[0]~19\)) # (!\M1_unit|Y_address\(1) & ((\M1_unit|Y_address[0]~19\) # (GND)))
-- \M1_unit|Y_address[1]~21\ = CARRY((!\M1_unit|Y_address[0]~19\) # (!\M1_unit|Y_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(1),
	datad => VCC,
	cin => \M1_unit|Y_address[0]~19\,
	combout => \M1_unit|Y_address[1]~20_combout\,
	cout => \M1_unit|Y_address[1]~21\);

-- Location: LCFF_X44_Y22_N17
\M1_unit|Y_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[1]~20_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(1));

-- Location: LCCOMB_X42_Y22_N22
\M1_unit|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector11~0_combout\ = (\M1_unit|state.S_START_LINE_9~regout\) # ((\M1_unit|state.S_RUN_5~regout\ & \M1_unit|Y_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_5~regout\,
	datac => \M1_unit|state.S_START_LINE_9~regout\,
	datad => \M1_unit|Y_address\(1),
	combout => \M1_unit|Selector11~0_combout\);

-- Location: LCCOMB_X42_Y22_N4
\M1_unit|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector11~1_combout\ = (\M1_unit|Selector11~0_combout\) # ((\M1_unit|state.S_RUN_5~regout\ & ((\M1_unit|Add4~24_combout\) # (!\M1_unit|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_5~regout\,
	datab => \M1_unit|Add4~24_combout\,
	datac => \M1_unit|Equal0~3_combout\,
	datad => \M1_unit|Selector11~0_combout\,
	combout => \M1_unit|Selector11~1_combout\);

-- Location: LCFF_X42_Y22_N5
\M1_unit|state.S_RUN_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_RUN_0~regout\);

-- Location: LCFF_X41_Y22_N9
\M1_unit|state.S_RUN_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_RUN_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_RUN_1~regout\);

-- Location: LCCOMB_X41_Y22_N8
\M1_unit|WideOr33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr33~1_combout\ = (\M1_unit|state.S_START_LINE_5~regout\) # ((\M1_unit|state.S_END_LINE_1~regout\) # ((\M1_unit|state.S_RUN_1~regout\) # (!\M1_unit|state.S_M1_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_START_LINE_5~regout\,
	datab => \M1_unit|state.S_END_LINE_1~regout\,
	datac => \M1_unit|state.S_RUN_1~regout\,
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|WideOr33~1_combout\);

-- Location: LCFF_X44_Y22_N15
\M1_unit|Y_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[0]~18_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(0));

-- Location: LCCOMB_X44_Y22_N18
\M1_unit|Y_address[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[2]~22_combout\ = (\M1_unit|Y_address\(2) & (\M1_unit|Y_address[1]~21\ $ (GND))) # (!\M1_unit|Y_address\(2) & (!\M1_unit|Y_address[1]~21\ & VCC))
-- \M1_unit|Y_address[2]~23\ = CARRY((\M1_unit|Y_address\(2) & !\M1_unit|Y_address[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(2),
	datad => VCC,
	cin => \M1_unit|Y_address[1]~21\,
	combout => \M1_unit|Y_address[2]~22_combout\,
	cout => \M1_unit|Y_address[2]~23\);

-- Location: LCFF_X44_Y22_N19
\M1_unit|Y_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[2]~22_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(2));

-- Location: LCCOMB_X44_Y22_N22
\M1_unit|Y_address[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[4]~26_combout\ = (\M1_unit|Y_address\(4) & (\M1_unit|Y_address[3]~25\ $ (GND))) # (!\M1_unit|Y_address\(4) & (!\M1_unit|Y_address[3]~25\ & VCC))
-- \M1_unit|Y_address[4]~27\ = CARRY((\M1_unit|Y_address\(4) & !\M1_unit|Y_address[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(4),
	datad => VCC,
	cin => \M1_unit|Y_address[3]~25\,
	combout => \M1_unit|Y_address[4]~26_combout\,
	cout => \M1_unit|Y_address[4]~27\);

-- Location: LCFF_X44_Y22_N23
\M1_unit|Y_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[4]~26_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(4));

-- Location: LCCOMB_X44_Y22_N24
\M1_unit|Y_address[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[5]~28_combout\ = (\M1_unit|Y_address\(5) & (!\M1_unit|Y_address[4]~27\)) # (!\M1_unit|Y_address\(5) & ((\M1_unit|Y_address[4]~27\) # (GND)))
-- \M1_unit|Y_address[5]~29\ = CARRY((!\M1_unit|Y_address[4]~27\) # (!\M1_unit|Y_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(5),
	datad => VCC,
	cin => \M1_unit|Y_address[4]~27\,
	combout => \M1_unit|Y_address[5]~28_combout\,
	cout => \M1_unit|Y_address[5]~29\);

-- Location: LCCOMB_X44_Y22_N26
\M1_unit|Y_address[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[6]~30_combout\ = (\M1_unit|Y_address\(6) & (\M1_unit|Y_address[5]~29\ $ (GND))) # (!\M1_unit|Y_address\(6) & (!\M1_unit|Y_address[5]~29\ & VCC))
-- \M1_unit|Y_address[6]~31\ = CARRY((\M1_unit|Y_address\(6) & !\M1_unit|Y_address[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(6),
	datad => VCC,
	cin => \M1_unit|Y_address[5]~29\,
	combout => \M1_unit|Y_address[6]~30_combout\,
	cout => \M1_unit|Y_address[6]~31\);

-- Location: LCFF_X44_Y22_N27
\M1_unit|Y_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[6]~30_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(6));

-- Location: LCCOMB_X44_Y22_N28
\M1_unit|Y_address[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[7]~32_combout\ = (\M1_unit|Y_address\(7) & (!\M1_unit|Y_address[6]~31\)) # (!\M1_unit|Y_address\(7) & ((\M1_unit|Y_address[6]~31\) # (GND)))
-- \M1_unit|Y_address[7]~33\ = CARRY((!\M1_unit|Y_address[6]~31\) # (!\M1_unit|Y_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(7),
	datad => VCC,
	cin => \M1_unit|Y_address[6]~31\,
	combout => \M1_unit|Y_address[7]~32_combout\,
	cout => \M1_unit|Y_address[7]~33\);

-- Location: LCFF_X44_Y22_N29
\M1_unit|Y_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[7]~32_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(7));

-- Location: LCCOMB_X44_Y22_N30
\M1_unit|Y_address[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[8]~34_combout\ = (\M1_unit|Y_address\(8) & (\M1_unit|Y_address[7]~33\ $ (GND))) # (!\M1_unit|Y_address\(8) & (!\M1_unit|Y_address[7]~33\ & VCC))
-- \M1_unit|Y_address[8]~35\ = CARRY((\M1_unit|Y_address\(8) & !\M1_unit|Y_address[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(8),
	datad => VCC,
	cin => \M1_unit|Y_address[7]~33\,
	combout => \M1_unit|Y_address[8]~34_combout\,
	cout => \M1_unit|Y_address[8]~35\);

-- Location: LCFF_X44_Y22_N31
\M1_unit|Y_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[8]~34_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(8));

-- Location: LCCOMB_X44_Y21_N0
\M1_unit|Y_address[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[9]~36_combout\ = (\M1_unit|Y_address\(9) & (!\M1_unit|Y_address[8]~35\)) # (!\M1_unit|Y_address\(9) & ((\M1_unit|Y_address[8]~35\) # (GND)))
-- \M1_unit|Y_address[9]~37\ = CARRY((!\M1_unit|Y_address[8]~35\) # (!\M1_unit|Y_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(9),
	datad => VCC,
	cin => \M1_unit|Y_address[8]~35\,
	combout => \M1_unit|Y_address[9]~36_combout\,
	cout => \M1_unit|Y_address[9]~37\);

-- Location: LCFF_X44_Y21_N1
\M1_unit|Y_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[9]~36_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(9));

-- Location: LCCOMB_X44_Y21_N2
\M1_unit|Y_address[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[10]~38_combout\ = (\M1_unit|Y_address\(10) & (\M1_unit|Y_address[9]~37\ $ (GND))) # (!\M1_unit|Y_address\(10) & (!\M1_unit|Y_address[9]~37\ & VCC))
-- \M1_unit|Y_address[10]~39\ = CARRY((\M1_unit|Y_address\(10) & !\M1_unit|Y_address[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(10),
	datad => VCC,
	cin => \M1_unit|Y_address[9]~37\,
	combout => \M1_unit|Y_address[10]~38_combout\,
	cout => \M1_unit|Y_address[10]~39\);

-- Location: LCFF_X44_Y21_N3
\M1_unit|Y_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[10]~38_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(10));

-- Location: LCCOMB_X44_Y21_N4
\M1_unit|Y_address[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[11]~40_combout\ = (\M1_unit|Y_address\(11) & (!\M1_unit|Y_address[10]~39\)) # (!\M1_unit|Y_address\(11) & ((\M1_unit|Y_address[10]~39\) # (GND)))
-- \M1_unit|Y_address[11]~41\ = CARRY((!\M1_unit|Y_address[10]~39\) # (!\M1_unit|Y_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(11),
	datad => VCC,
	cin => \M1_unit|Y_address[10]~39\,
	combout => \M1_unit|Y_address[11]~40_combout\,
	cout => \M1_unit|Y_address[11]~41\);

-- Location: LCFF_X44_Y21_N5
\M1_unit|Y_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[11]~40_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(11));

-- Location: LCCOMB_X44_Y21_N8
\M1_unit|Y_address[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[13]~44_combout\ = (\M1_unit|Y_address\(13) & (!\M1_unit|Y_address[12]~43\)) # (!\M1_unit|Y_address\(13) & ((\M1_unit|Y_address[12]~43\) # (GND)))
-- \M1_unit|Y_address[13]~45\ = CARRY((!\M1_unit|Y_address[12]~43\) # (!\M1_unit|Y_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(13),
	datad => VCC,
	cin => \M1_unit|Y_address[12]~43\,
	combout => \M1_unit|Y_address[13]~44_combout\,
	cout => \M1_unit|Y_address[13]~45\);

-- Location: LCFF_X44_Y21_N9
\M1_unit|Y_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[13]~44_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(13));

-- Location: LCCOMB_X44_Y21_N10
\M1_unit|Y_address[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[14]~46_combout\ = (\M1_unit|Y_address\(14) & (\M1_unit|Y_address[13]~45\ $ (GND))) # (!\M1_unit|Y_address\(14) & (!\M1_unit|Y_address[13]~45\ & VCC))
-- \M1_unit|Y_address[14]~47\ = CARRY((\M1_unit|Y_address\(14) & !\M1_unit|Y_address[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(14),
	datad => VCC,
	cin => \M1_unit|Y_address[13]~45\,
	combout => \M1_unit|Y_address[14]~46_combout\,
	cout => \M1_unit|Y_address[14]~47\);

-- Location: LCCOMB_X44_Y21_N12
\M1_unit|Y_address[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[15]~48_combout\ = (\M1_unit|Y_address\(15) & (!\M1_unit|Y_address[14]~47\)) # (!\M1_unit|Y_address\(15) & ((\M1_unit|Y_address[14]~47\) # (GND)))
-- \M1_unit|Y_address[15]~49\ = CARRY((!\M1_unit|Y_address[14]~47\) # (!\M1_unit|Y_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(15),
	datad => VCC,
	cin => \M1_unit|Y_address[14]~47\,
	combout => \M1_unit|Y_address[15]~48_combout\,
	cout => \M1_unit|Y_address[15]~49\);

-- Location: LCCOMB_X44_Y21_N14
\M1_unit|Y_address[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[16]~50_combout\ = (\M1_unit|Y_address\(16) & (\M1_unit|Y_address[15]~49\ $ (GND))) # (!\M1_unit|Y_address\(16) & (!\M1_unit|Y_address[15]~49\ & VCC))
-- \M1_unit|Y_address[16]~51\ = CARRY((\M1_unit|Y_address\(16) & !\M1_unit|Y_address[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(16),
	datad => VCC,
	cin => \M1_unit|Y_address[15]~49\,
	combout => \M1_unit|Y_address[16]~50_combout\,
	cout => \M1_unit|Y_address[16]~51\);

-- Location: LCFF_X44_Y21_N15
\M1_unit|Y_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[16]~50_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(16));

-- Location: LCFF_X44_Y22_N25
\M1_unit|Y_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[5]~28_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(5));

-- Location: LCCOMB_X44_Y22_N6
\M1_unit|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal1~1_combout\ = (\M1_unit|Y_address\(7) & (\M1_unit|Y_address\(8) & (\M1_unit|Y_address\(5) & \M1_unit|Y_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(7),
	datab => \M1_unit|Y_address\(8),
	datac => \M1_unit|Y_address\(5),
	datad => \M1_unit|Y_address\(6),
	combout => \M1_unit|Equal1~1_combout\);

-- Location: LCCOMB_X44_Y21_N30
\M1_unit|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal1~2_combout\ = (\M1_unit|Y_address\(12) & (\M1_unit|Y_address\(10) & (!\M1_unit|Y_address\(11) & !\M1_unit|Y_address\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(12),
	datab => \M1_unit|Y_address\(10),
	datac => \M1_unit|Y_address\(11),
	datad => \M1_unit|Y_address\(9),
	combout => \M1_unit|Equal1~2_combout\);

-- Location: LCCOMB_X44_Y21_N16
\M1_unit|Y_address[17]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_address[17]~52_combout\ = \M1_unit|Y_address\(17) $ (\M1_unit|Y_address[16]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(17),
	cin => \M1_unit|Y_address[16]~51\,
	combout => \M1_unit|Y_address[17]~52_combout\);

-- Location: LCFF_X44_Y21_N17
\M1_unit|Y_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[17]~52_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(17));

-- Location: LCFF_X44_Y21_N11
\M1_unit|Y_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[14]~46_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(14));

-- Location: LCCOMB_X45_Y21_N0
\M1_unit|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal1~3_combout\ = (\M1_unit|Y_address\(15) & (!\M1_unit|Y_address\(17) & (!\M1_unit|Y_address\(14) & !\M1_unit|Y_address\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(15),
	datab => \M1_unit|Y_address\(17),
	datac => \M1_unit|Y_address\(14),
	datad => \M1_unit|Y_address\(13),
	combout => \M1_unit|Equal1~3_combout\);

-- Location: LCCOMB_X42_Y22_N8
\M1_unit|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal1~4_combout\ = (\M1_unit|Equal1~0_combout\ & (\M1_unit|Equal1~1_combout\ & (\M1_unit|Equal1~2_combout\ & \M1_unit|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Equal1~0_combout\,
	datab => \M1_unit|Equal1~1_combout\,
	datac => \M1_unit|Equal1~2_combout\,
	datad => \M1_unit|Equal1~3_combout\,
	combout => \M1_unit|Equal1~4_combout\);

-- Location: LCCOMB_X42_Y22_N16
\M1_unit|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector23~0_combout\ = ((\M1_unit|Y_address\(16)) # ((!\M1_unit|Y_address\(1)) # (!\M1_unit|Equal1~4_combout\))) # (!\M1_unit|state.S_END_LINE_5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_END_LINE_5~regout\,
	datab => \M1_unit|Y_address\(16),
	datac => \M1_unit|Equal1~4_combout\,
	datad => \M1_unit|Y_address\(1),
	combout => \M1_unit|Selector23~0_combout\);

-- Location: LCFF_X42_Y22_N17
\M1_unit|state.S_M1_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_M1_IDLE~regout\);

-- Location: LCCOMB_X41_Y21_N2
\M1_unit|Selector86~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector86~0_combout\ = (\M1_unit|Y_compare_address\(14) & \M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|Y_compare_address\(14),
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector86~0_combout\);

-- Location: LCFF_X41_Y21_N25
\M1_unit|Y_compare_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[14]~31_combout\,
	sdata => \M1_unit|Selector86~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(14));

-- Location: LCCOMB_X45_Y21_N18
\M1_unit|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~16_combout\ = ((\M1_unit|Y_address\(13) $ (\M1_unit|Y_compare_address\(13) $ (\M1_unit|Add4~15\)))) # (GND)
-- \M1_unit|Add4~17\ = CARRY((\M1_unit|Y_address\(13) & ((!\M1_unit|Add4~15\) # (!\M1_unit|Y_compare_address\(13)))) # (!\M1_unit|Y_address\(13) & (!\M1_unit|Y_compare_address\(13) & !\M1_unit|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(13),
	datab => \M1_unit|Y_compare_address\(13),
	datad => VCC,
	cin => \M1_unit|Add4~15\,
	combout => \M1_unit|Add4~16_combout\,
	cout => \M1_unit|Add4~17\);

-- Location: LCCOMB_X45_Y21_N20
\M1_unit|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~18_combout\ = (\M1_unit|Y_address\(14) & ((\M1_unit|Y_compare_address\(14) & (!\M1_unit|Add4~17\)) # (!\M1_unit|Y_compare_address\(14) & (\M1_unit|Add4~17\ & VCC)))) # (!\M1_unit|Y_address\(14) & ((\M1_unit|Y_compare_address\(14) & 
-- ((\M1_unit|Add4~17\) # (GND))) # (!\M1_unit|Y_compare_address\(14) & (!\M1_unit|Add4~17\))))
-- \M1_unit|Add4~19\ = CARRY((\M1_unit|Y_address\(14) & (\M1_unit|Y_compare_address\(14) & !\M1_unit|Add4~17\)) # (!\M1_unit|Y_address\(14) & ((\M1_unit|Y_compare_address\(14)) # (!\M1_unit|Add4~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(14),
	datab => \M1_unit|Y_compare_address\(14),
	datad => VCC,
	cin => \M1_unit|Add4~17\,
	combout => \M1_unit|Add4~18_combout\,
	cout => \M1_unit|Add4~19\);

-- Location: LCCOMB_X45_Y21_N22
\M1_unit|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~20_combout\ = ((\M1_unit|Y_address\(15) $ (\M1_unit|Y_compare_address\(15) $ (\M1_unit|Add4~19\)))) # (GND)
-- \M1_unit|Add4~21\ = CARRY((\M1_unit|Y_address\(15) & ((!\M1_unit|Add4~19\) # (!\M1_unit|Y_compare_address\(15)))) # (!\M1_unit|Y_address\(15) & (!\M1_unit|Y_compare_address\(15) & !\M1_unit|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(15),
	datab => \M1_unit|Y_compare_address\(15),
	datad => VCC,
	cin => \M1_unit|Add4~19\,
	combout => \M1_unit|Add4~20_combout\,
	cout => \M1_unit|Add4~21\);

-- Location: LCCOMB_X45_Y21_N30
\M1_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal0~1_combout\ = (!\M1_unit|Add4~22_combout\ & (!\M1_unit|Add4~20_combout\ & (!\M1_unit|Add4~18_combout\ & !\M1_unit|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Add4~22_combout\,
	datab => \M1_unit|Add4~20_combout\,
	datac => \M1_unit|Add4~18_combout\,
	datad => \M1_unit|Add4~16_combout\,
	combout => \M1_unit|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y22_N26
\M1_unit|state~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state~57_combout\ = (((\M1_unit|Add4~24_combout\) # (!\M1_unit|Equal0~2_combout\)) # (!\M1_unit|Y_address\(1))) # (!\M1_unit|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Equal1~0_combout\,
	datab => \M1_unit|Y_address\(1),
	datac => \M1_unit|Add4~24_combout\,
	datad => \M1_unit|Equal0~2_combout\,
	combout => \M1_unit|state~57_combout\);

-- Location: LCCOMB_X42_Y22_N28
\M1_unit|state~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state~58_combout\ = (\M1_unit|Equal1~5_combout\) # (((\M1_unit|state~57_combout\) # (!\M1_unit|Equal0~0_combout\)) # (!\M1_unit|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Equal1~5_combout\,
	datab => \M1_unit|Equal0~1_combout\,
	datac => \M1_unit|Equal0~0_combout\,
	datad => \M1_unit|state~57_combout\,
	combout => \M1_unit|state~58_combout\);

-- Location: LCCOMB_X41_Y21_N14
\M1_unit|Y_compare_address[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[9]~21_combout\ = (\M1_unit|Y_compare_address\(9) & (\M1_unit|Y_compare_address[8]~20\ $ (GND))) # (!\M1_unit|Y_compare_address\(9) & (!\M1_unit|Y_compare_address[8]~20\ & VCC))
-- \M1_unit|Y_compare_address[9]~22\ = CARRY((\M1_unit|Y_compare_address\(9) & !\M1_unit|Y_compare_address[8]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(9),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[8]~20\,
	combout => \M1_unit|Y_compare_address[9]~21_combout\,
	cout => \M1_unit|Y_compare_address[9]~22\);

-- Location: LCCOMB_X41_Y21_N0
\M1_unit|Selector91~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector91~0_combout\ = (\M1_unit|Y_compare_address\(9) & \M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|Y_compare_address\(9),
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector91~0_combout\);

-- Location: LCFF_X41_Y21_N15
\M1_unit|Y_compare_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[9]~21_combout\,
	sdata => \M1_unit|Selector91~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(9));

-- Location: LCCOMB_X41_Y21_N18
\M1_unit|Y_compare_address[11]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[11]~25_combout\ = (\M1_unit|Y_compare_address\(11) & (\M1_unit|Y_compare_address[10]~24\ $ (GND))) # (!\M1_unit|Y_compare_address\(11) & (!\M1_unit|Y_compare_address[10]~24\ & VCC))
-- \M1_unit|Y_compare_address[11]~26\ = CARRY((\M1_unit|Y_compare_address\(11) & !\M1_unit|Y_compare_address[10]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(11),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[10]~24\,
	combout => \M1_unit|Y_compare_address[11]~25_combout\,
	cout => \M1_unit|Y_compare_address[11]~26\);

-- Location: LCCOMB_X42_Y21_N10
\M1_unit|Selector89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector89~0_combout\ = (\M1_unit|state.S_M1_IDLE~regout\ & \M1_unit|Y_compare_address\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	datad => \M1_unit|Y_compare_address\(11),
	combout => \M1_unit|Selector89~0_combout\);

-- Location: LCFF_X41_Y21_N19
\M1_unit|Y_compare_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[11]~25_combout\,
	sdata => \M1_unit|Selector89~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(11));

-- Location: LCCOMB_X41_Y21_N22
\M1_unit|Y_compare_address[13]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[13]~29_combout\ = (\M1_unit|Y_compare_address\(13) & (\M1_unit|Y_compare_address[12]~28\ $ (GND))) # (!\M1_unit|Y_compare_address\(13) & (!\M1_unit|Y_compare_address[12]~28\ & VCC))
-- \M1_unit|Y_compare_address[13]~30\ = CARRY((\M1_unit|Y_compare_address\(13) & !\M1_unit|Y_compare_address[12]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(13),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[12]~28\,
	combout => \M1_unit|Y_compare_address[13]~29_combout\,
	cout => \M1_unit|Y_compare_address[13]~30\);

-- Location: LCCOMB_X44_Y21_N28
\M1_unit|Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector87~0_combout\ = (\M1_unit|state.S_M1_IDLE~regout\ & \M1_unit|Y_compare_address\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|state.S_M1_IDLE~regout\,
	datac => \M1_unit|Y_compare_address\(13),
	combout => \M1_unit|Selector87~0_combout\);

-- Location: LCFF_X41_Y21_N23
\M1_unit|Y_compare_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[13]~29_combout\,
	sdata => \M1_unit|Selector87~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(13));

-- Location: LCCOMB_X41_Y21_N26
\M1_unit|Y_compare_address[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[15]~33_combout\ = (\M1_unit|Y_compare_address\(15) & (\M1_unit|Y_compare_address[14]~32\ $ (GND))) # (!\M1_unit|Y_compare_address\(15) & (!\M1_unit|Y_compare_address[14]~32\ & VCC))
-- \M1_unit|Y_compare_address[15]~34\ = CARRY((\M1_unit|Y_compare_address\(15) & !\M1_unit|Y_compare_address[14]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(15),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[14]~32\,
	combout => \M1_unit|Y_compare_address[15]~33_combout\,
	cout => \M1_unit|Y_compare_address[15]~34\);

-- Location: LCCOMB_X41_Y21_N4
\M1_unit|Selector85~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector85~0_combout\ = (\M1_unit|Y_compare_address\(15) & \M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(15),
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector85~0_combout\);

-- Location: LCFF_X41_Y21_N27
\M1_unit|Y_compare_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[15]~33_combout\,
	sdata => \M1_unit|Selector85~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(15));

-- Location: LCCOMB_X41_Y21_N28
\M1_unit|Y_compare_address[16]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[16]~35_combout\ = (\M1_unit|Y_compare_address\(16) & (!\M1_unit|Y_compare_address[15]~34\)) # (!\M1_unit|Y_compare_address\(16) & ((\M1_unit|Y_compare_address[15]~34\) # (GND)))
-- \M1_unit|Y_compare_address[16]~36\ = CARRY((!\M1_unit|Y_compare_address[15]~34\) # (!\M1_unit|Y_compare_address\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(16),
	datad => VCC,
	cin => \M1_unit|Y_compare_address[15]~34\,
	combout => \M1_unit|Y_compare_address[16]~35_combout\,
	cout => \M1_unit|Y_compare_address[16]~36\);

-- Location: LCCOMB_X44_Y21_N22
\M1_unit|Selector84~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector84~0_combout\ = (\M1_unit|state.S_M1_IDLE~regout\ & \M1_unit|Y_compare_address\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	datad => \M1_unit|Y_compare_address\(16),
	combout => \M1_unit|Selector84~0_combout\);

-- Location: LCFF_X41_Y21_N29
\M1_unit|Y_compare_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[16]~35_combout\,
	sdata => \M1_unit|Selector84~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(16));

-- Location: LCCOMB_X41_Y21_N30
\M1_unit|Y_compare_address[17]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Y_compare_address[17]~37_combout\ = \M1_unit|Y_compare_address[16]~36\ $ (!\M1_unit|Y_compare_address\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|Y_compare_address\(17),
	cin => \M1_unit|Y_compare_address[16]~36\,
	combout => \M1_unit|Y_compare_address[17]~37_combout\);

-- Location: LCCOMB_X43_Y22_N12
\M1_unit|Selector83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector83~0_combout\ = (\M1_unit|Y_compare_address\(17) & \M1_unit|state.S_M1_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|Y_compare_address\(17),
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector83~0_combout\);

-- Location: LCFF_X41_Y21_N31
\M1_unit|Y_compare_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_compare_address[17]~37_combout\,
	sdata => \M1_unit|Selector83~0_combout\,
	sload => \M1_unit|ALT_INV_state.S_END_LINE_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_compare_address\(17));

-- Location: LCCOMB_X45_Y21_N26
\M1_unit|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Add4~24_combout\ = \M1_unit|Y_compare_address\(17) $ (\M1_unit|Add4~23\ $ (\M1_unit|Y_address\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_compare_address\(17),
	datad => \M1_unit|Y_address\(17),
	cin => \M1_unit|Add4~23\,
	combout => \M1_unit|Add4~24_combout\);

-- Location: LCFF_X41_Y22_N17
\M1_unit|state.S_RUN_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_RUN_1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_RUN_2~regout\);

-- Location: LCFF_X42_Y22_N19
\M1_unit|state.S_RUN_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_RUN_2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_RUN_3~regout\);

-- Location: LCFF_X42_Y22_N1
\M1_unit|state.S_RUN_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_RUN_3~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_RUN_4~regout\);

-- Location: LCFF_X42_Y22_N15
\M1_unit|state.S_RUN_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_RUN_4~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_RUN_5~regout\);

-- Location: LCCOMB_X42_Y22_N14
\M1_unit|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector17~0_combout\ = (\M1_unit|Equal0~3_combout\ & (!\M1_unit|Add4~24_combout\ & ((\M1_unit|state.S_RUN_5~regout\) # (\M1_unit|Y_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Equal0~3_combout\,
	datab => \M1_unit|Add4~24_combout\,
	datac => \M1_unit|state.S_RUN_5~regout\,
	datad => \M1_unit|Y_address\(1),
	combout => \M1_unit|Selector17~0_combout\);

-- Location: LCCOMB_X42_Y22_N12
\M1_unit|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Equal1~5_combout\ = (!\M1_unit|Y_address\(16) & (\M1_unit|Equal1~4_combout\ & \M1_unit|Y_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Y_address\(16),
	datac => \M1_unit|Equal1~4_combout\,
	datad => \M1_unit|Y_address\(1),
	combout => \M1_unit|Equal1~5_combout\);

-- Location: LCCOMB_X42_Y22_N6
\M1_unit|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector17~1_combout\ = (\M1_unit|Selector17~0_combout\ & (((!\M1_unit|Y_address\(1))))) # (!\M1_unit|Selector17~0_combout\ & (\M1_unit|state.S_END_LINE_5~regout\ & (!\M1_unit|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_END_LINE_5~regout\,
	datab => \M1_unit|Selector17~0_combout\,
	datac => \M1_unit|Equal1~5_combout\,
	datad => \M1_unit|Y_address\(1),
	combout => \M1_unit|Selector17~1_combout\);

-- Location: LCFF_X42_Y22_N7
\M1_unit|state.S_END_LINE_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_END_LINE_0~regout\);

-- Location: LCFF_X41_Y22_N7
\M1_unit|state.S_END_LINE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_END_LINE_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_END_LINE_1~regout\);

-- Location: LCFF_X41_Y22_N21
\M1_unit|state.S_END_LINE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|state.S_END_LINE_1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state.S_END_LINE_2~regout\);

-- Location: LCCOMB_X41_Y22_N10
\M1_unit|WideOr23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr23~0_combout\ = (!\M1_unit|state.S_START_LINE_2~regout\ & (!\M1_unit|state.S_START_LINE_3~regout\ & (!\M1_unit|state.S_START_LINE_7~regout\ & !\M1_unit|state.S_START_LINE_8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_START_LINE_2~regout\,
	datab => \M1_unit|state.S_START_LINE_3~regout\,
	datac => \M1_unit|state.S_START_LINE_7~regout\,
	datad => \M1_unit|state.S_START_LINE_8~regout\,
	combout => \M1_unit|WideOr23~0_combout\);

-- Location: LCCOMB_X41_Y22_N20
\M1_unit|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector24~0_combout\ = (\M1_unit|SRAM_we_n~regout\) # ((\M1_unit|WideOr23~2_combout\ & (!\M1_unit|state.S_END_LINE_2~regout\ & \M1_unit|WideOr23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr23~2_combout\,
	datab => \M1_unit|SRAM_we_n~regout\,
	datac => \M1_unit|state.S_END_LINE_2~regout\,
	datad => \M1_unit|WideOr23~0_combout\,
	combout => \M1_unit|Selector24~0_combout\);

-- Location: LCCOMB_X42_Y21_N2
\M1_unit|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector44~0_combout\ = (\M1_unit|state.S_RUN_5~regout\) # ((\M1_unit|state.S_M1_IDLE~regout\ & \M1_unit|common_case~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_M1_IDLE~regout\,
	datac => \M1_unit|common_case~regout\,
	datad => \M1_unit|state.S_RUN_5~regout\,
	combout => \M1_unit|Selector44~0_combout\);

-- Location: LCFF_X42_Y21_N3
\M1_unit|common_case\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|common_case~regout\);

-- Location: LCCOMB_X41_Y22_N14
\M1_unit|Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector24~1_combout\ = (!\M1_unit|state.S_END_LINE_3~regout\ & (((\M1_unit|SRAM_we_n~regout\ & !\M1_unit|common_case~regout\)) # (!\M1_unit|state.S_RUN_0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_0~regout\,
	datab => \M1_unit|state.S_END_LINE_3~regout\,
	datac => \M1_unit|SRAM_we_n~regout\,
	datad => \M1_unit|common_case~regout\,
	combout => \M1_unit|Selector24~1_combout\);

-- Location: LCCOMB_X41_Y22_N0
\M1_unit|Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector24~2_combout\ = (\M1_unit|WideOr36~0_combout\ & (\M1_unit|Selector24~0_combout\ & \M1_unit|Selector24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr36~0_combout\,
	datac => \M1_unit|Selector24~0_combout\,
	datad => \M1_unit|Selector24~1_combout\,
	combout => \M1_unit|Selector24~2_combout\);

-- Location: LCFF_X41_Y22_N1
\M1_unit|SRAM_we_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_we_n~regout\);

-- Location: LCCOMB_X41_Y24_N2
\SRAM_we_n~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_we_n~feeder_combout\ = \M1_unit|SRAM_we_n~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|SRAM_we_n~regout\,
	combout => \SRAM_we_n~feeder_combout\);

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

-- Location: LCCOMB_X45_Y22_N2
\M1_unit|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector46~0_combout\ = (\M1_unit|state.S_END_LINE_5~regout\ & ((\M1_unit|Equal1~5_combout\) # ((\M1_unit|M1_done~regout\)))) # (!\M1_unit|state.S_END_LINE_5~regout\ & (((\M1_unit|M1_done~regout\ & \M1_unit|state.S_M1_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Equal1~5_combout\,
	datab => \M1_unit|state.S_END_LINE_5~regout\,
	datac => \M1_unit|M1_done~regout\,
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|Selector46~0_combout\);

-- Location: LCFF_X45_Y22_N3
\M1_unit|M1_done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|M1_done~regout\);

-- Location: LCCOMB_X45_Y22_N20
\start_counter[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[0]~4_combout\ = \state.S_TOP_IDLE~regout\ $ (!start_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_IDLE~regout\,
	datac => start_counter(0),
	combout => \start_counter[0]~4_combout\);

-- Location: LCCOMB_X45_Y22_N0
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

-- Location: CLKCTRL_G7
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

-- Location: LCFF_X45_Y22_N21
\start_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[0]~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(0));

-- Location: LCCOMB_X45_Y22_N24
\start_counter[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[1]~2_combout\ = start_counter(1) $ (((!\state.S_TOP_IDLE~regout\ & start_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_IDLE~regout\,
	datac => start_counter(1),
	datad => start_counter(0),
	combout => \start_counter[1]~2_combout\);

-- Location: LCFF_X45_Y22_N25
\start_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[1]~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(1));

-- Location: LCCOMB_X45_Y22_N18
\start_counter[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[2]~3_combout\ = start_counter(2) $ (((!\state.S_TOP_IDLE~regout\ & (start_counter(1) & start_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_IDLE~regout\,
	datab => start_counter(1),
	datac => start_counter(2),
	datad => start_counter(0),
	combout => \start_counter[2]~3_combout\);

-- Location: LCFF_X45_Y22_N19
\start_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[2]~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(2));

-- Location: LCCOMB_X45_Y22_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.S_TOP_M1~regout\ & (!\M1_unit|M1_done~regout\ & ((\state.S_TOP_IDLE~regout\) # (\Selector3~0_combout\)))) # (!\state.S_TOP_M1~regout\ & (((\state.S_TOP_IDLE~regout\) # (\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_M1~regout\,
	datab => \M1_unit|M1_done~regout\,
	datac => \state.S_TOP_IDLE~regout\,
	datad => \Selector3~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X45_Y22_N17
\state.S_TOP_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_TOP_IDLE~regout\);

-- Location: LCCOMB_X45_Y22_N6
\start_counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_counter[3]~0_combout\ = (start_counter(1) & (start_counter(0) & (!\state.S_TOP_IDLE~regout\ & start_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => start_counter(1),
	datab => start_counter(0),
	datac => \state.S_TOP_IDLE~regout\,
	datad => start_counter(2),
	combout => \start_counter[3]~0_combout\);

-- Location: LCCOMB_X45_Y22_N30
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

-- Location: LCFF_X45_Y22_N31
\start_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \start_counter[3]~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_counter(3));

-- Location: LCCOMB_X45_Y22_N22
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (start_counter(1) & (!start_counter(2) & (!start_counter(0) & start_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => start_counter(1),
	datab => start_counter(2),
	datac => start_counter(0),
	datad => start_counter(3),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X45_Y22_N10
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.S_TOP_M1~regout\ & (((!\M1_unit|M1_done~regout\)))) # (!\state.S_TOP_M1~regout\ & (!\state.S_TOP_IDLE~regout\ & ((\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_TOP_IDLE~regout\,
	datab => \M1_unit|M1_done~regout\,
	datac => \state.S_TOP_M1~regout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCFF_X45_Y22_N11
\state.S_TOP_M1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector3~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_TOP_M1~regout\);

-- Location: LCCOMB_X45_Y22_N28
\SRAM_address[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[4]~0_combout\ = (!\SWITCH_I~combout\(17) & (\SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\ & \state.S_TOP_M1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWITCH_I~combout\(17),
	datac => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\,
	datad => \state.S_TOP_M1~regout\,
	combout => \SRAM_address[4]~0_combout\);

-- Location: LCFF_X41_Y24_N3
SRAM_we_n : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_we_n~feeder_combout\,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_we_n~regout\);

-- Location: LCCOMB_X41_Y24_N4
\SRAM_unit|SRAM_WE_N_O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_WE_N_O~0_combout\ = !\SRAM_we_n~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_we_n~regout\,
	combout => \SRAM_unit|SRAM_WE_N_O~0_combout\);

-- Location: LCFF_X41_Y24_N5
\SRAM_unit|SRAM_WE_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_WE_N_O~0_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_WE_N_O~regout\);

-- Location: LCCOMB_X42_Y24_N14
\M1_unit|V_address[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[0]~18_combout\ = \M1_unit|V_address\(0) $ (VCC)
-- \M1_unit|V_address[0]~19\ = CARRY(\M1_unit|V_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(0),
	datad => VCC,
	combout => \M1_unit|V_address[0]~18_combout\,
	cout => \M1_unit|V_address[0]~19\);

-- Location: LCCOMB_X42_Y23_N22
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X41_Y22_N4
\M1_unit|WideOr35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr35~0_combout\ = (!\M1_unit|state.S_RUN_2~regout\ & (!\M1_unit|state.S_START_LINE_1~regout\ & (!\M1_unit|state.S_START_LINE_6~regout\ & !\M1_unit|state.S_M1_START~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_2~regout\,
	datab => \M1_unit|state.S_START_LINE_1~regout\,
	datac => \M1_unit|state.S_START_LINE_6~regout\,
	datad => \M1_unit|state.S_M1_START~regout\,
	combout => \M1_unit|WideOr35~0_combout\);

-- Location: LCCOMB_X42_Y21_N0
\M1_unit|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector43~0_combout\ = (\M1_unit|cycle~regout\ & (\M1_unit|state.S_M1_IDLE~regout\ & !\M1_unit|state.S_RUN_5~regout\)) # (!\M1_unit|cycle~regout\ & ((\M1_unit|state.S_RUN_5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_M1_IDLE~regout\,
	datac => \M1_unit|cycle~regout\,
	datad => \M1_unit|state.S_RUN_5~regout\,
	combout => \M1_unit|Selector43~0_combout\);

-- Location: LCFF_X42_Y21_N1
\M1_unit|cycle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|cycle~regout\);

-- Location: LCCOMB_X42_Y23_N20
\M1_unit|V_address[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[4]~28_combout\ = (\M1_unit|state.S_RUN_2~regout\ & (\M1_unit|cycle~regout\ & ((!\M1_unit|state.S_M1_IDLE~regout\) # (!\M1_unit|WideOr35~0_combout\)))) # (!\M1_unit|state.S_RUN_2~regout\ & (((!\M1_unit|state.S_M1_IDLE~regout\)) # 
-- (!\M1_unit|WideOr35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_2~regout\,
	datab => \M1_unit|WideOr35~0_combout\,
	datac => \M1_unit|cycle~regout\,
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|V_address[4]~28_combout\);

-- Location: LCFF_X42_Y24_N15
\M1_unit|V_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[0]~18_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(0));

-- Location: LCCOMB_X42_Y24_N18
\M1_unit|V_address[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[2]~22_combout\ = (\M1_unit|V_address\(2) & (\M1_unit|V_address[1]~21\ $ (GND))) # (!\M1_unit|V_address\(2) & (!\M1_unit|V_address[1]~21\ & VCC))
-- \M1_unit|V_address[2]~23\ = CARRY((\M1_unit|V_address\(2) & !\M1_unit|V_address[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(2),
	datad => VCC,
	cin => \M1_unit|V_address[1]~21\,
	combout => \M1_unit|V_address[2]~22_combout\,
	cout => \M1_unit|V_address[2]~23\);

-- Location: LCFF_X42_Y24_N19
\M1_unit|V_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[2]~22_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(2));

-- Location: LCCOMB_X42_Y24_N20
\M1_unit|V_address[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[3]~24_combout\ = (\M1_unit|V_address\(3) & (!\M1_unit|V_address[2]~23\)) # (!\M1_unit|V_address\(3) & ((\M1_unit|V_address[2]~23\) # (GND)))
-- \M1_unit|V_address[3]~25\ = CARRY((!\M1_unit|V_address[2]~23\) # (!\M1_unit|V_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(3),
	datad => VCC,
	cin => \M1_unit|V_address[2]~23\,
	combout => \M1_unit|V_address[3]~24_combout\,
	cout => \M1_unit|V_address[3]~25\);

-- Location: LCCOMB_X42_Y24_N22
\M1_unit|V_address[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[4]~26_combout\ = (\M1_unit|V_address\(4) & (\M1_unit|V_address[3]~25\ $ (GND))) # (!\M1_unit|V_address\(4) & (!\M1_unit|V_address[3]~25\ & VCC))
-- \M1_unit|V_address[4]~27\ = CARRY((\M1_unit|V_address\(4) & !\M1_unit|V_address[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(4),
	datad => VCC,
	cin => \M1_unit|V_address[3]~25\,
	combout => \M1_unit|V_address[4]~26_combout\,
	cout => \M1_unit|V_address[4]~27\);

-- Location: LCFF_X42_Y24_N23
\M1_unit|V_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[4]~26_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(4));

-- Location: LCCOMB_X41_Y22_N22
\M1_unit|WideOr33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr33~0_combout\ = (!\M1_unit|state.S_END_LINE_1~regout\ & (!\M1_unit|state.S_START_LINE_5~regout\ & !\M1_unit|state.S_RUN_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|state.S_END_LINE_1~regout\,
	datac => \M1_unit|state.S_START_LINE_5~regout\,
	datad => \M1_unit|state.S_RUN_1~regout\,
	combout => \M1_unit|WideOr33~0_combout\);

-- Location: LCCOMB_X41_Y22_N18
\M1_unit|SRAM_address[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|SRAM_address[14]~1_combout\ = ((\M1_unit|state.S_START_LINE_4~regout\) # (!\M1_unit|WideOr33~0_combout\)) # (!\M1_unit|SRAM_address[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~0_combout\,
	datac => \M1_unit|state.S_START_LINE_4~regout\,
	datad => \M1_unit|WideOr33~0_combout\,
	combout => \M1_unit|SRAM_address[14]~1_combout\);

-- Location: LCCOMB_X43_Y22_N14
\M1_unit|U_address[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[0]~18_combout\ = \M1_unit|U_address\(0) $ (VCC)
-- \M1_unit|U_address[0]~19\ = CARRY(\M1_unit|U_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(0),
	datad => VCC,
	combout => \M1_unit|U_address[0]~18_combout\,
	cout => \M1_unit|U_address[0]~19\);

-- Location: LCCOMB_X42_Y22_N2
\M1_unit|U_address[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[7]~28_combout\ = (\M1_unit|SRAM_address[14]~0_combout\ & (\M1_unit|state.S_M1_START~regout\ & ((\M1_unit|cycle~regout\) # (!\M1_unit|state.S_RUN_4~regout\)))) # (!\M1_unit|SRAM_address[14]~0_combout\ & ((\M1_unit|cycle~regout\) # 
-- ((!\M1_unit|state.S_RUN_4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~0_combout\,
	datab => \M1_unit|cycle~regout\,
	datac => \M1_unit|state.S_RUN_4~regout\,
	datad => \M1_unit|state.S_M1_START~regout\,
	combout => \M1_unit|U_address[7]~28_combout\);

-- Location: LCFF_X43_Y22_N15
\M1_unit|U_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[0]~18_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(0));

-- Location: LCCOMB_X43_Y22_N18
\M1_unit|U_address[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[2]~22_combout\ = (\M1_unit|U_address\(2) & (\M1_unit|U_address[1]~21\ $ (GND))) # (!\M1_unit|U_address\(2) & (!\M1_unit|U_address[1]~21\ & VCC))
-- \M1_unit|U_address[2]~23\ = CARRY((\M1_unit|U_address\(2) & !\M1_unit|U_address[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(2),
	datad => VCC,
	cin => \M1_unit|U_address[1]~21\,
	combout => \M1_unit|U_address[2]~22_combout\,
	cout => \M1_unit|U_address[2]~23\);

-- Location: LCFF_X43_Y22_N19
\M1_unit|U_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[2]~22_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(2));

-- Location: LCCOMB_X43_Y22_N22
\M1_unit|U_address[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[4]~26_combout\ = (\M1_unit|U_address\(4) & (\M1_unit|U_address[3]~25\ $ (GND))) # (!\M1_unit|U_address\(4) & (!\M1_unit|U_address[3]~25\ & VCC))
-- \M1_unit|U_address[4]~27\ = CARRY((\M1_unit|U_address\(4) & !\M1_unit|U_address[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(4),
	datad => VCC,
	cin => \M1_unit|U_address[3]~25\,
	combout => \M1_unit|U_address[4]~26_combout\,
	cout => \M1_unit|U_address[4]~27\);

-- Location: LCFF_X43_Y22_N23
\M1_unit|U_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[4]~26_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(4));

-- Location: LCCOMB_X41_Y22_N24
\M1_unit|SRAM_address[14]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|SRAM_address[14]~2_combout\ = ((\M1_unit|SRAM_address[14]~0_combout\ & (!\M1_unit|state.S_START_LINE_4~regout\ & !\M1_unit|WideOr35~0_combout\))) # (!\M1_unit|WideOr33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~0_combout\,
	datab => \M1_unit|WideOr33~0_combout\,
	datac => \M1_unit|state.S_START_LINE_4~regout\,
	datad => \M1_unit|WideOr35~0_combout\,
	combout => \M1_unit|SRAM_address[14]~2_combout\);

-- Location: LCCOMB_X44_Y22_N0
\M1_unit|Selector60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector60~0_combout\ = (\M1_unit|SRAM_address[14]~3_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(4)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(4))))) # (!\M1_unit|SRAM_address[14]~3_combout\ & 
-- (((\M1_unit|SRAM_address[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~3_combout\,
	datab => \M1_unit|U_address\(4),
	datac => \M1_unit|SRAM_address[14]~2_combout\,
	datad => \M1_unit|Y_address\(4),
	combout => \M1_unit|Selector60~0_combout\);

-- Location: LCCOMB_X42_Y23_N18
\M1_unit|Selector60\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector60~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector60~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector60~0_combout\ & ((\M1_unit|V_address\(4)))) # (!\M1_unit|Selector60~0_combout\ & 
-- (\M1_unit|RGB_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(4),
	datab => \M1_unit|V_address\(4),
	datac => \M1_unit|SRAM_address[14]~1_combout\,
	datad => \M1_unit|Selector60~0_combout\,
	combout => \M1_unit|Selector60~combout\);

-- Location: LCCOMB_X41_Y22_N30
\M1_unit|SRAM_address[14]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|SRAM_address[14]~5_combout\ = (\M1_unit|state.S_END_LINE_3~regout\) # ((\M1_unit|state.S_END_LINE_0~regout\) # ((\M1_unit|state.S_RUN_0~regout\ & !\M1_unit|common_case~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_0~regout\,
	datab => \M1_unit|common_case~regout\,
	datac => \M1_unit|state.S_END_LINE_3~regout\,
	datad => \M1_unit|state.S_END_LINE_0~regout\,
	combout => \M1_unit|SRAM_address[14]~5_combout\);

-- Location: LCCOMB_X42_Y22_N0
\M1_unit|SRAM_address[14]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|SRAM_address[14]~4_combout\ = (\M1_unit|state.S_START_LINE_9~regout\) # ((!\M1_unit|cycle~regout\ & ((\M1_unit|state.S_RUN_2~regout\) # (\M1_unit|state.S_RUN_4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state.S_RUN_2~regout\,
	datab => \M1_unit|cycle~regout\,
	datac => \M1_unit|state.S_RUN_4~regout\,
	datad => \M1_unit|state.S_START_LINE_9~regout\,
	combout => \M1_unit|SRAM_address[14]~4_combout\);

-- Location: LCCOMB_X42_Y23_N26
\M1_unit|SRAM_address[14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|SRAM_address[14]~6_combout\ = (\M1_unit|WideOr23~0_combout\ & (!\M1_unit|state.S_END_LINE_2~regout\ & (!\M1_unit|SRAM_address[14]~5_combout\ & !\M1_unit|SRAM_address[14]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr23~0_combout\,
	datab => \M1_unit|state.S_END_LINE_2~regout\,
	datac => \M1_unit|SRAM_address[14]~5_combout\,
	datad => \M1_unit|SRAM_address[14]~4_combout\,
	combout => \M1_unit|SRAM_address[14]~6_combout\);

-- Location: LCFF_X42_Y23_N19
\M1_unit|SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector60~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(4));

-- Location: LCFF_X42_Y32_N25
\SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(4),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(4));

-- Location: LCCOMB_X42_Y24_N24
\M1_unit|V_address[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[5]~29_combout\ = (\M1_unit|V_address\(5) & (!\M1_unit|V_address[4]~27\)) # (!\M1_unit|V_address\(5) & ((\M1_unit|V_address[4]~27\) # (GND)))
-- \M1_unit|V_address[5]~30\ = CARRY((!\M1_unit|V_address[4]~27\) # (!\M1_unit|V_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(5),
	datad => VCC,
	cin => \M1_unit|V_address[4]~27\,
	combout => \M1_unit|V_address[5]~29_combout\,
	cout => \M1_unit|V_address[5]~30\);

-- Location: LCCOMB_X42_Y24_N26
\M1_unit|V_address[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[6]~31_combout\ = (\M1_unit|V_address\(6) & (\M1_unit|V_address[5]~30\ $ (GND))) # (!\M1_unit|V_address\(6) & (!\M1_unit|V_address[5]~30\ & VCC))
-- \M1_unit|V_address[6]~32\ = CARRY((\M1_unit|V_address\(6) & !\M1_unit|V_address[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(6),
	datad => VCC,
	cin => \M1_unit|V_address[5]~30\,
	combout => \M1_unit|V_address[6]~31_combout\,
	cout => \M1_unit|V_address[6]~32\);

-- Location: LCFF_X42_Y24_N27
\M1_unit|V_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[6]~31_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(6));

-- Location: LCCOMB_X42_Y24_N28
\M1_unit|V_address[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[7]~33_combout\ = (\M1_unit|V_address\(7) & (!\M1_unit|V_address[6]~32\)) # (!\M1_unit|V_address\(7) & ((\M1_unit|V_address[6]~32\) # (GND)))
-- \M1_unit|V_address[7]~34\ = CARRY((!\M1_unit|V_address[6]~32\) # (!\M1_unit|V_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(7),
	datad => VCC,
	cin => \M1_unit|V_address[6]~32\,
	combout => \M1_unit|V_address[7]~33_combout\,
	cout => \M1_unit|V_address[7]~34\);

-- Location: LCFF_X42_Y24_N29
\M1_unit|V_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[7]~33_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(7));

-- Location: LCCOMB_X42_Y21_N14
\M1_unit|RGB_address[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[0]~18_combout\ = \M1_unit|RGB_address\(0) $ (VCC)
-- \M1_unit|RGB_address[0]~19\ = CARRY(\M1_unit|RGB_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(0),
	datad => VCC,
	combout => \M1_unit|RGB_address[0]~18_combout\,
	cout => \M1_unit|RGB_address[0]~19\);

-- Location: LCCOMB_X42_Y21_N4
\M1_unit|RGB_address[13]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[13]~28_combout\ = (\M1_unit|state.S_RUN_0~regout\ & (((\M1_unit|common_case~regout\)))) # (!\M1_unit|state.S_RUN_0~regout\ & (((!\M1_unit|state.S_M1_IDLE~regout\)) # (!\M1_unit|WideOr36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr36~0_combout\,
	datab => \M1_unit|common_case~regout\,
	datac => \M1_unit|state.S_M1_IDLE~regout\,
	datad => \M1_unit|state.S_RUN_0~regout\,
	combout => \M1_unit|RGB_address[13]~28_combout\);

-- Location: LCFF_X42_Y21_N15
\M1_unit|RGB_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[0]~18_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(0));

-- Location: LCCOMB_X42_Y21_N16
\M1_unit|RGB_address[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[1]~20_combout\ = (\M1_unit|RGB_address\(1) & (!\M1_unit|RGB_address[0]~19\)) # (!\M1_unit|RGB_address\(1) & ((\M1_unit|RGB_address[0]~19\) # (GND)))
-- \M1_unit|RGB_address[1]~21\ = CARRY((!\M1_unit|RGB_address[0]~19\) # (!\M1_unit|RGB_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(1),
	datad => VCC,
	cin => \M1_unit|RGB_address[0]~19\,
	combout => \M1_unit|RGB_address[1]~20_combout\,
	cout => \M1_unit|RGB_address[1]~21\);

-- Location: LCCOMB_X42_Y21_N18
\M1_unit|RGB_address[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[2]~22_combout\ = (\M1_unit|RGB_address\(2) & (\M1_unit|RGB_address[1]~21\ $ (GND))) # (!\M1_unit|RGB_address\(2) & (!\M1_unit|RGB_address[1]~21\ & VCC))
-- \M1_unit|RGB_address[2]~23\ = CARRY((\M1_unit|RGB_address\(2) & !\M1_unit|RGB_address[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(2),
	datad => VCC,
	cin => \M1_unit|RGB_address[1]~21\,
	combout => \M1_unit|RGB_address[2]~22_combout\,
	cout => \M1_unit|RGB_address[2]~23\);

-- Location: LCFF_X42_Y21_N19
\M1_unit|RGB_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[2]~22_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(2));

-- Location: LCCOMB_X42_Y21_N20
\M1_unit|RGB_address[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[3]~24_combout\ = (\M1_unit|RGB_address\(3) & (!\M1_unit|RGB_address[2]~23\)) # (!\M1_unit|RGB_address\(3) & ((\M1_unit|RGB_address[2]~23\) # (GND)))
-- \M1_unit|RGB_address[3]~25\ = CARRY((!\M1_unit|RGB_address[2]~23\) # (!\M1_unit|RGB_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(3),
	datad => VCC,
	cin => \M1_unit|RGB_address[2]~23\,
	combout => \M1_unit|RGB_address[3]~24_combout\,
	cout => \M1_unit|RGB_address[3]~25\);

-- Location: LCCOMB_X42_Y21_N22
\M1_unit|RGB_address[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[4]~26_combout\ = (\M1_unit|RGB_address\(4) & (\M1_unit|RGB_address[3]~25\ $ (GND))) # (!\M1_unit|RGB_address\(4) & (!\M1_unit|RGB_address[3]~25\ & VCC))
-- \M1_unit|RGB_address[4]~27\ = CARRY((\M1_unit|RGB_address\(4) & !\M1_unit|RGB_address[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(4),
	datad => VCC,
	cin => \M1_unit|RGB_address[3]~25\,
	combout => \M1_unit|RGB_address[4]~26_combout\,
	cout => \M1_unit|RGB_address[4]~27\);

-- Location: LCFF_X42_Y21_N23
\M1_unit|RGB_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[4]~26_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(4));

-- Location: LCCOMB_X42_Y21_N26
\M1_unit|RGB_address[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[6]~31_combout\ = (\M1_unit|RGB_address\(6) & (\M1_unit|RGB_address[5]~30\ $ (GND))) # (!\M1_unit|RGB_address\(6) & (!\M1_unit|RGB_address[5]~30\ & VCC))
-- \M1_unit|RGB_address[6]~32\ = CARRY((\M1_unit|RGB_address\(6) & !\M1_unit|RGB_address[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(6),
	datad => VCC,
	cin => \M1_unit|RGB_address[5]~30\,
	combout => \M1_unit|RGB_address[6]~31_combout\,
	cout => \M1_unit|RGB_address[6]~32\);

-- Location: LCFF_X42_Y21_N27
\M1_unit|RGB_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[6]~31_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(6));

-- Location: LCCOMB_X42_Y21_N28
\M1_unit|RGB_address[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[7]~33_combout\ = (\M1_unit|RGB_address\(7) & (!\M1_unit|RGB_address[6]~32\)) # (!\M1_unit|RGB_address\(7) & ((\M1_unit|RGB_address[6]~32\) # (GND)))
-- \M1_unit|RGB_address[7]~34\ = CARRY((!\M1_unit|RGB_address[6]~32\) # (!\M1_unit|RGB_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(7),
	datad => VCC,
	cin => \M1_unit|RGB_address[6]~32\,
	combout => \M1_unit|RGB_address[7]~33_combout\,
	cout => \M1_unit|RGB_address[7]~34\);

-- Location: LCFF_X42_Y21_N29
\M1_unit|RGB_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[7]~33_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(7));

-- Location: LCCOMB_X42_Y24_N10
\M1_unit|Selector57\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector57~combout\ = (\M1_unit|Selector57~0_combout\ & ((\M1_unit|V_address\(7)) # ((\M1_unit|SRAM_address[14]~1_combout\)))) # (!\M1_unit|Selector57~0_combout\ & (((!\M1_unit|SRAM_address[14]~1_combout\ & \M1_unit|RGB_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Selector57~0_combout\,
	datab => \M1_unit|V_address\(7),
	datac => \M1_unit|SRAM_address[14]~1_combout\,
	datad => \M1_unit|RGB_address\(7),
	combout => \M1_unit|Selector57~combout\);

-- Location: LCFF_X42_Y24_N11
\M1_unit|SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector57~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(7));

-- Location: LCFF_X42_Y32_N23
\SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(7),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(7));

-- Location: LCCOMB_X43_Y22_N24
\M1_unit|U_address[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[5]~29_combout\ = (\M1_unit|U_address\(5) & (!\M1_unit|U_address[4]~27\)) # (!\M1_unit|U_address\(5) & ((\M1_unit|U_address[4]~27\) # (GND)))
-- \M1_unit|U_address[5]~30\ = CARRY((!\M1_unit|U_address[4]~27\) # (!\M1_unit|U_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(5),
	datad => VCC,
	cin => \M1_unit|U_address[4]~27\,
	combout => \M1_unit|U_address[5]~29_combout\,
	cout => \M1_unit|U_address[5]~30\);

-- Location: LCCOMB_X43_Y22_N26
\M1_unit|U_address[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[6]~31_combout\ = (\M1_unit|U_address\(6) & (\M1_unit|U_address[5]~30\ $ (GND))) # (!\M1_unit|U_address\(6) & (!\M1_unit|U_address[5]~30\ & VCC))
-- \M1_unit|U_address[6]~32\ = CARRY((\M1_unit|U_address\(6) & !\M1_unit|U_address[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(6),
	datad => VCC,
	cin => \M1_unit|U_address[5]~30\,
	combout => \M1_unit|U_address[6]~31_combout\,
	cout => \M1_unit|U_address[6]~32\);

-- Location: LCFF_X43_Y22_N27
\M1_unit|U_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[6]~31_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(6));

-- Location: LCCOMB_X43_Y22_N10
\M1_unit|SRAM_address[14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|SRAM_address[14]~3_combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\) # (\M1_unit|state.S_M1_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|SRAM_address[14]~2_combout\,
	datad => \M1_unit|state.S_M1_IDLE~regout\,
	combout => \M1_unit|SRAM_address[14]~3_combout\);

-- Location: LCCOMB_X43_Y22_N6
\M1_unit|Selector58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector58~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|Y_address\(6)) # (!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(6) & 
-- ((\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~2_combout\,
	datab => \M1_unit|U_address\(6),
	datac => \M1_unit|Y_address\(6),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector58~0_combout\);

-- Location: LCCOMB_X43_Y22_N8
\M1_unit|Selector58\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector58~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector58~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector58~0_combout\ & ((\M1_unit|V_address\(6)))) # (!\M1_unit|Selector58~0_combout\ & 
-- (\M1_unit|RGB_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(6),
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|V_address\(6),
	datad => \M1_unit|Selector58~0_combout\,
	combout => \M1_unit|Selector58~combout\);

-- Location: LCFF_X43_Y22_N9
\M1_unit|SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector58~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(6));

-- Location: LCFF_X42_Y32_N21
\SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(6),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(6));

-- Location: LCFF_X42_Y24_N25
\M1_unit|V_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[5]~29_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(5));

-- Location: LCFF_X43_Y22_N25
\M1_unit|U_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[5]~29_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(5));

-- Location: LCCOMB_X43_Y22_N4
\M1_unit|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector59~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(5)) # ((!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|U_address\(5) & 
-- \M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~2_combout\,
	datab => \M1_unit|Y_address\(5),
	datac => \M1_unit|U_address\(5),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector59~0_combout\);

-- Location: LCCOMB_X42_Y24_N0
\M1_unit|Selector59\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector59~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector59~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector59~0_combout\ & ((\M1_unit|V_address\(5)))) # (!\M1_unit|Selector59~0_combout\ & 
-- (\M1_unit|RGB_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(5),
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|V_address\(5),
	datad => \M1_unit|Selector59~0_combout\,
	combout => \M1_unit|Selector59~combout\);

-- Location: LCFF_X42_Y24_N1
\M1_unit|SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector59~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(5));

-- Location: LCFF_X42_Y32_N19
\SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(5),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(5));

-- Location: LCCOMB_X42_Y32_N0
\unit0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr6~0_combout\ = (SRAM_address(7) & (SRAM_address(4) & (SRAM_address(6) $ (SRAM_address(5))))) # (!SRAM_address(7) & (!SRAM_address(5) & (SRAM_address(4) $ (SRAM_address(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(4),
	datab => SRAM_address(7),
	datac => SRAM_address(6),
	datad => SRAM_address(5),
	combout => \unit0|WideOr6~0_combout\);

-- Location: LCCOMB_X42_Y32_N10
\unit0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr5~0_combout\ = (SRAM_address(7) & ((SRAM_address(4) & ((SRAM_address(5)))) # (!SRAM_address(4) & (SRAM_address(6))))) # (!SRAM_address(7) & (SRAM_address(6) & (SRAM_address(4) $ (SRAM_address(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(4),
	datab => SRAM_address(7),
	datac => SRAM_address(6),
	datad => SRAM_address(5),
	combout => \unit0|WideOr5~0_combout\);

-- Location: LCCOMB_X42_Y32_N28
\unit0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr4~0_combout\ = (SRAM_address(7) & (SRAM_address(6) & ((SRAM_address(5)) # (!SRAM_address(4))))) # (!SRAM_address(7) & (!SRAM_address(4) & (!SRAM_address(6) & SRAM_address(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(4),
	datab => SRAM_address(7),
	datac => SRAM_address(6),
	datad => SRAM_address(5),
	combout => \unit0|WideOr4~0_combout\);

-- Location: LCCOMB_X42_Y32_N24
\unit0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr3~0_combout\ = (SRAM_address(4) & (SRAM_address(6) $ (((!SRAM_address(5)))))) # (!SRAM_address(4) & ((SRAM_address(6) & (!SRAM_address(7) & !SRAM_address(5))) # (!SRAM_address(6) & (SRAM_address(7) & SRAM_address(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(6),
	datab => SRAM_address(7),
	datac => SRAM_address(4),
	datad => SRAM_address(5),
	combout => \unit0|WideOr3~0_combout\);

-- Location: LCCOMB_X42_Y32_N18
\unit0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr2~0_combout\ = (SRAM_address(5) & (((!SRAM_address(7) & SRAM_address(4))))) # (!SRAM_address(5) & ((SRAM_address(6) & (!SRAM_address(7))) # (!SRAM_address(6) & ((SRAM_address(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(6),
	datab => SRAM_address(7),
	datac => SRAM_address(5),
	datad => SRAM_address(4),
	combout => \unit0|WideOr2~0_combout\);

-- Location: LCCOMB_X42_Y32_N20
\unit0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr1~0_combout\ = (SRAM_address(4) & (SRAM_address(7) $ (((SRAM_address(5)) # (!SRAM_address(6)))))) # (!SRAM_address(4) & (!SRAM_address(7) & (!SRAM_address(6) & SRAM_address(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(4),
	datab => SRAM_address(7),
	datac => SRAM_address(6),
	datad => SRAM_address(5),
	combout => \unit0|WideOr1~0_combout\);

-- Location: LCCOMB_X42_Y32_N22
\unit0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr0~0_combout\ = (SRAM_address(4) & ((SRAM_address(7)) # (SRAM_address(6) $ (SRAM_address(5))))) # (!SRAM_address(4) & ((SRAM_address(5)) # (SRAM_address(6) $ (SRAM_address(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(6),
	datab => SRAM_address(5),
	datac => SRAM_address(7),
	datad => SRAM_address(4),
	combout => \unit0|WideOr0~0_combout\);

-- Location: LCCOMB_X42_Y21_N30
\M1_unit|RGB_address[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[8]~35_combout\ = (\M1_unit|RGB_address\(8) & (\M1_unit|RGB_address[7]~34\ $ (GND))) # (!\M1_unit|RGB_address\(8) & (!\M1_unit|RGB_address[7]~34\ & VCC))
-- \M1_unit|RGB_address[8]~36\ = CARRY((\M1_unit|RGB_address\(8) & !\M1_unit|RGB_address[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(8),
	datad => VCC,
	cin => \M1_unit|RGB_address[7]~34\,
	combout => \M1_unit|RGB_address[8]~35_combout\,
	cout => \M1_unit|RGB_address[8]~36\);

-- Location: LCFF_X42_Y21_N31
\M1_unit|RGB_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[8]~35_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(8));

-- Location: LCCOMB_X42_Y20_N0
\M1_unit|RGB_address[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[9]~37_combout\ = (\M1_unit|RGB_address\(9) & (!\M1_unit|RGB_address[8]~36\)) # (!\M1_unit|RGB_address\(9) & ((\M1_unit|RGB_address[8]~36\) # (GND)))
-- \M1_unit|RGB_address[9]~38\ = CARRY((!\M1_unit|RGB_address[8]~36\) # (!\M1_unit|RGB_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(9),
	datad => VCC,
	cin => \M1_unit|RGB_address[8]~36\,
	combout => \M1_unit|RGB_address[9]~37_combout\,
	cout => \M1_unit|RGB_address[9]~38\);

-- Location: LCFF_X42_Y20_N1
\M1_unit|RGB_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[9]~37_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(9));

-- Location: LCCOMB_X42_Y20_N2
\M1_unit|RGB_address[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[10]~39_combout\ = (\M1_unit|RGB_address\(10) & (\M1_unit|RGB_address[9]~38\ $ (GND))) # (!\M1_unit|RGB_address\(10) & (!\M1_unit|RGB_address[9]~38\ & VCC))
-- \M1_unit|RGB_address[10]~40\ = CARRY((\M1_unit|RGB_address\(10) & !\M1_unit|RGB_address[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(10),
	datad => VCC,
	cin => \M1_unit|RGB_address[9]~38\,
	combout => \M1_unit|RGB_address[10]~39_combout\,
	cout => \M1_unit|RGB_address[10]~40\);

-- Location: LCFF_X42_Y20_N3
\M1_unit|RGB_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[10]~39_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(10));

-- Location: LCCOMB_X42_Y20_N4
\M1_unit|RGB_address[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[11]~41_combout\ = (\M1_unit|RGB_address\(11) & (!\M1_unit|RGB_address[10]~40\)) # (!\M1_unit|RGB_address\(11) & ((\M1_unit|RGB_address[10]~40\) # (GND)))
-- \M1_unit|RGB_address[11]~42\ = CARRY((!\M1_unit|RGB_address[10]~40\) # (!\M1_unit|RGB_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(11),
	datad => VCC,
	cin => \M1_unit|RGB_address[10]~40\,
	combout => \M1_unit|RGB_address[11]~41_combout\,
	cout => \M1_unit|RGB_address[11]~42\);

-- Location: LCFF_X42_Y20_N5
\M1_unit|RGB_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[11]~41_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(11));

-- Location: LCCOMB_X42_Y24_N30
\M1_unit|V_address[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[8]~35_combout\ = (\M1_unit|V_address\(8) & (\M1_unit|V_address[7]~34\ $ (GND))) # (!\M1_unit|V_address\(8) & (!\M1_unit|V_address[7]~34\ & VCC))
-- \M1_unit|V_address[8]~36\ = CARRY((\M1_unit|V_address\(8) & !\M1_unit|V_address[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(8),
	datad => VCC,
	cin => \M1_unit|V_address[7]~34\,
	combout => \M1_unit|V_address[8]~35_combout\,
	cout => \M1_unit|V_address[8]~36\);

-- Location: LCFF_X42_Y24_N31
\M1_unit|V_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[8]~35_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(8));

-- Location: LCCOMB_X42_Y23_N0
\M1_unit|V_address[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[9]~37_combout\ = (\M1_unit|V_address\(9) & (!\M1_unit|V_address[8]~36\)) # (!\M1_unit|V_address\(9) & ((\M1_unit|V_address[8]~36\) # (GND)))
-- \M1_unit|V_address[9]~38\ = CARRY((!\M1_unit|V_address[8]~36\) # (!\M1_unit|V_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(9),
	datad => VCC,
	cin => \M1_unit|V_address[8]~36\,
	combout => \M1_unit|V_address[9]~37_combout\,
	cout => \M1_unit|V_address[9]~38\);

-- Location: LCFF_X42_Y23_N1
\M1_unit|V_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[9]~37_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(9));

-- Location: LCCOMB_X42_Y23_N2
\M1_unit|V_address[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[10]~39_combout\ = (\M1_unit|V_address\(10) & (\M1_unit|V_address[9]~38\ $ (GND))) # (!\M1_unit|V_address\(10) & (!\M1_unit|V_address[9]~38\ & VCC))
-- \M1_unit|V_address[10]~40\ = CARRY((\M1_unit|V_address\(10) & !\M1_unit|V_address[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(10),
	datad => VCC,
	cin => \M1_unit|V_address[9]~38\,
	combout => \M1_unit|V_address[10]~39_combout\,
	cout => \M1_unit|V_address[10]~40\);

-- Location: LCFF_X42_Y23_N3
\M1_unit|V_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[10]~39_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(10));

-- Location: LCCOMB_X42_Y23_N4
\M1_unit|V_address[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[11]~41_combout\ = (\M1_unit|V_address\(11) & (!\M1_unit|V_address[10]~40\)) # (!\M1_unit|V_address\(11) & ((\M1_unit|V_address[10]~40\) # (GND)))
-- \M1_unit|V_address[11]~42\ = CARRY((!\M1_unit|V_address[10]~40\) # (!\M1_unit|V_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(11),
	datad => VCC,
	cin => \M1_unit|V_address[10]~40\,
	combout => \M1_unit|V_address[11]~41_combout\,
	cout => \M1_unit|V_address[11]~42\);

-- Location: LCFF_X42_Y23_N5
\M1_unit|V_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[11]~41_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(11));

-- Location: LCCOMB_X43_Y22_N28
\M1_unit|U_address[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[7]~33_combout\ = (\M1_unit|U_address\(7) & (!\M1_unit|U_address[6]~32\)) # (!\M1_unit|U_address\(7) & ((\M1_unit|U_address[6]~32\) # (GND)))
-- \M1_unit|U_address[7]~34\ = CARRY((!\M1_unit|U_address[6]~32\) # (!\M1_unit|U_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(7),
	datad => VCC,
	cin => \M1_unit|U_address[6]~32\,
	combout => \M1_unit|U_address[7]~33_combout\,
	cout => \M1_unit|U_address[7]~34\);

-- Location: LCFF_X43_Y22_N29
\M1_unit|U_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[7]~33_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(7));

-- Location: LCCOMB_X43_Y22_N30
\M1_unit|U_address[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[8]~35_combout\ = (\M1_unit|U_address\(8) & (\M1_unit|U_address[7]~34\ $ (GND))) # (!\M1_unit|U_address\(8) & (!\M1_unit|U_address[7]~34\ & VCC))
-- \M1_unit|U_address[8]~36\ = CARRY((\M1_unit|U_address\(8) & !\M1_unit|U_address[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(8),
	datad => VCC,
	cin => \M1_unit|U_address[7]~34\,
	combout => \M1_unit|U_address[8]~35_combout\,
	cout => \M1_unit|U_address[8]~36\);

-- Location: LCFF_X43_Y22_N31
\M1_unit|U_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[8]~35_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(8));

-- Location: LCCOMB_X43_Y21_N0
\M1_unit|U_address[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[9]~37_combout\ = (\M1_unit|U_address\(9) & (!\M1_unit|U_address[8]~36\)) # (!\M1_unit|U_address\(9) & ((\M1_unit|U_address[8]~36\) # (GND)))
-- \M1_unit|U_address[9]~38\ = CARRY((!\M1_unit|U_address[8]~36\) # (!\M1_unit|U_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(9),
	datad => VCC,
	cin => \M1_unit|U_address[8]~36\,
	combout => \M1_unit|U_address[9]~37_combout\,
	cout => \M1_unit|U_address[9]~38\);

-- Location: LCFF_X43_Y21_N1
\M1_unit|U_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[9]~37_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(9));

-- Location: LCCOMB_X43_Y21_N2
\M1_unit|U_address[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[10]~39_combout\ = (\M1_unit|U_address\(10) & (\M1_unit|U_address[9]~38\ $ (GND))) # (!\M1_unit|U_address\(10) & (!\M1_unit|U_address[9]~38\ & VCC))
-- \M1_unit|U_address[10]~40\ = CARRY((\M1_unit|U_address\(10) & !\M1_unit|U_address[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(10),
	datad => VCC,
	cin => \M1_unit|U_address[9]~38\,
	combout => \M1_unit|U_address[10]~39_combout\,
	cout => \M1_unit|U_address[10]~40\);

-- Location: LCFF_X43_Y21_N3
\M1_unit|U_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[10]~39_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(10));

-- Location: LCCOMB_X43_Y21_N4
\M1_unit|U_address[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[11]~41_combout\ = (\M1_unit|U_address\(11) & (!\M1_unit|U_address[10]~40\)) # (!\M1_unit|U_address\(11) & ((\M1_unit|U_address[10]~40\) # (GND)))
-- \M1_unit|U_address[11]~42\ = CARRY((!\M1_unit|U_address[10]~40\) # (!\M1_unit|U_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(11),
	datad => VCC,
	cin => \M1_unit|U_address[10]~40\,
	combout => \M1_unit|U_address[11]~41_combout\,
	cout => \M1_unit|U_address[11]~42\);

-- Location: LCFF_X43_Y21_N5
\M1_unit|U_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[11]~41_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(11));

-- Location: LCCOMB_X43_Y21_N28
\M1_unit|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector53~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(11)) # ((!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|U_address\(11) & 
-- \M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(11),
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|U_address\(11),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector53~0_combout\);

-- Location: LCCOMB_X42_Y20_N20
\M1_unit|Selector53\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector53~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector53~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector53~0_combout\ & ((\M1_unit|V_address\(11)))) # (!\M1_unit|Selector53~0_combout\ & 
-- (\M1_unit|RGB_address\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~1_combout\,
	datab => \M1_unit|RGB_address\(11),
	datac => \M1_unit|V_address\(11),
	datad => \M1_unit|Selector53~0_combout\,
	combout => \M1_unit|Selector53~combout\);

-- Location: LCFF_X42_Y20_N21
\M1_unit|SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector53~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(11));

-- Location: LCFF_X47_Y32_N7
\SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(11),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(11));

-- Location: LCCOMB_X43_Y21_N18
\M1_unit|Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector55~0_combout\ = (\M1_unit|SRAM_address[14]~3_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(9)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(9))))) # (!\M1_unit|SRAM_address[14]~3_combout\ & 
-- (((!\M1_unit|SRAM_address[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~3_combout\,
	datab => \M1_unit|U_address\(9),
	datac => \M1_unit|Y_address\(9),
	datad => \M1_unit|SRAM_address[14]~2_combout\,
	combout => \M1_unit|Selector55~0_combout\);

-- Location: LCCOMB_X42_Y23_N28
\M1_unit|Selector55\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector55~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector55~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector55~0_combout\ & (\M1_unit|RGB_address\(9))) # (!\M1_unit|Selector55~0_combout\ & 
-- ((\M1_unit|V_address\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(9),
	datab => \M1_unit|V_address\(9),
	datac => \M1_unit|SRAM_address[14]~1_combout\,
	datad => \M1_unit|Selector55~0_combout\,
	combout => \M1_unit|Selector55~combout\);

-- Location: LCFF_X42_Y23_N29
\M1_unit|SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector55~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(9));

-- Location: LCFF_X47_Y32_N3
\SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(9),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(9));

-- Location: LCCOMB_X43_Y22_N0
\M1_unit|Selector56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector56~0_combout\ = (\M1_unit|SRAM_address[14]~3_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(8)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(8))))) # (!\M1_unit|SRAM_address[14]~3_combout\ & 
-- (((\M1_unit|SRAM_address[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~3_combout\,
	datab => \M1_unit|U_address\(8),
	datac => \M1_unit|SRAM_address[14]~2_combout\,
	datad => \M1_unit|Y_address\(8),
	combout => \M1_unit|Selector56~0_combout\);

-- Location: LCCOMB_X42_Y24_N12
\M1_unit|Selector56\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector56~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector56~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector56~0_combout\ & ((\M1_unit|V_address\(8)))) # (!\M1_unit|Selector56~0_combout\ & 
-- (\M1_unit|RGB_address\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(8),
	datab => \M1_unit|V_address\(8),
	datac => \M1_unit|SRAM_address[14]~1_combout\,
	datad => \M1_unit|Selector56~0_combout\,
	combout => \M1_unit|Selector56~combout\);

-- Location: LCFF_X42_Y24_N13
\M1_unit|SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector56~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(8));

-- Location: LCFF_X47_Y32_N9
\SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(8),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(8));

-- Location: LCCOMB_X42_Y20_N18
\M1_unit|Selector54\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector54~combout\ = (\M1_unit|Selector54~0_combout\ & (((\M1_unit|SRAM_address[14]~1_combout\) # (\M1_unit|RGB_address\(10))))) # (!\M1_unit|Selector54~0_combout\ & (\M1_unit|V_address\(10) & (!\M1_unit|SRAM_address[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Selector54~0_combout\,
	datab => \M1_unit|V_address\(10),
	datac => \M1_unit|SRAM_address[14]~1_combout\,
	datad => \M1_unit|RGB_address\(10),
	combout => \M1_unit|Selector54~combout\);

-- Location: LCFF_X42_Y20_N19
\M1_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector54~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(10));

-- Location: LCFF_X47_Y32_N13
\SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(10),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(10));

-- Location: LCCOMB_X47_Y32_N0
\unit1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr6~0_combout\ = (SRAM_address(11) & (SRAM_address(8) & (SRAM_address(9) $ (SRAM_address(10))))) # (!SRAM_address(11) & (!SRAM_address(9) & (SRAM_address(8) $ (SRAM_address(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(11),
	datab => SRAM_address(9),
	datac => SRAM_address(8),
	datad => SRAM_address(10),
	combout => \unit1|WideOr6~0_combout\);

-- Location: LCCOMB_X47_Y32_N10
\unit1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr5~0_combout\ = (SRAM_address(11) & ((SRAM_address(8) & (SRAM_address(9))) # (!SRAM_address(8) & ((SRAM_address(10)))))) # (!SRAM_address(11) & (SRAM_address(10) & (SRAM_address(9) $ (SRAM_address(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(11),
	datab => SRAM_address(9),
	datac => SRAM_address(8),
	datad => SRAM_address(10),
	combout => \unit1|WideOr5~0_combout\);

-- Location: LCCOMB_X47_Y32_N28
\unit1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr4~0_combout\ = (SRAM_address(11) & (SRAM_address(10) & ((SRAM_address(9)) # (!SRAM_address(8))))) # (!SRAM_address(11) & (SRAM_address(9) & (!SRAM_address(8) & !SRAM_address(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(11),
	datab => SRAM_address(9),
	datac => SRAM_address(8),
	datad => SRAM_address(10),
	combout => \unit1|WideOr4~0_combout\);

-- Location: LCCOMB_X47_Y32_N8
\unit1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr3~0_combout\ = (SRAM_address(8) & (SRAM_address(10) $ (((!SRAM_address(9)))))) # (!SRAM_address(8) & ((SRAM_address(10) & (!SRAM_address(11) & !SRAM_address(9))) # (!SRAM_address(10) & (SRAM_address(11) & SRAM_address(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(10),
	datab => SRAM_address(11),
	datac => SRAM_address(8),
	datad => SRAM_address(9),
	combout => \unit1|WideOr3~0_combout\);

-- Location: LCCOMB_X47_Y32_N2
\unit1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr2~0_combout\ = (SRAM_address(9) & (((SRAM_address(8) & !SRAM_address(11))))) # (!SRAM_address(9) & ((SRAM_address(10) & ((!SRAM_address(11)))) # (!SRAM_address(10) & (SRAM_address(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(10),
	datab => SRAM_address(8),
	datac => SRAM_address(9),
	datad => SRAM_address(11),
	combout => \unit1|WideOr2~0_combout\);

-- Location: LCCOMB_X47_Y32_N12
\unit1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr1~0_combout\ = (SRAM_address(9) & (!SRAM_address(11) & ((SRAM_address(8)) # (!SRAM_address(10))))) # (!SRAM_address(9) & (SRAM_address(8) & (SRAM_address(10) $ (!SRAM_address(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(9),
	datab => SRAM_address(8),
	datac => SRAM_address(10),
	datad => SRAM_address(11),
	combout => \unit1|WideOr1~0_combout\);

-- Location: LCCOMB_X47_Y32_N6
\unit1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr0~0_combout\ = (SRAM_address(8) & ((SRAM_address(11)) # (SRAM_address(9) $ (SRAM_address(10))))) # (!SRAM_address(8) & ((SRAM_address(9)) # (SRAM_address(11) $ (SRAM_address(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(9),
	datab => SRAM_address(8),
	datac => SRAM_address(11),
	datad => SRAM_address(10),
	combout => \unit1|WideOr0~0_combout\);

-- Location: LCFF_X44_Y21_N13
\M1_unit|Y_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Y_address[15]~48_combout\,
	sclr => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Y_address\(15));

-- Location: LCCOMB_X43_Y21_N26
\M1_unit|Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector49~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|Y_address\(15) & \M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|U_address\(15)) # 
-- ((!\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(15),
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|Y_address\(15),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector49~0_combout\);

-- Location: LCCOMB_X42_Y20_N6
\M1_unit|RGB_address[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[12]~43_combout\ = (\M1_unit|RGB_address\(12) & (\M1_unit|RGB_address[11]~42\ $ (GND))) # (!\M1_unit|RGB_address\(12) & (!\M1_unit|RGB_address[11]~42\ & VCC))
-- \M1_unit|RGB_address[12]~44\ = CARRY((\M1_unit|RGB_address\(12) & !\M1_unit|RGB_address[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(12),
	datad => VCC,
	cin => \M1_unit|RGB_address[11]~42\,
	combout => \M1_unit|RGB_address[12]~43_combout\,
	cout => \M1_unit|RGB_address[12]~44\);

-- Location: LCCOMB_X42_Y20_N8
\M1_unit|RGB_address[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[13]~45_combout\ = (\M1_unit|RGB_address\(13) & (!\M1_unit|RGB_address[12]~44\)) # (!\M1_unit|RGB_address\(13) & ((\M1_unit|RGB_address[12]~44\) # (GND)))
-- \M1_unit|RGB_address[13]~46\ = CARRY((!\M1_unit|RGB_address[12]~44\) # (!\M1_unit|RGB_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|RGB_address\(13),
	datad => VCC,
	cin => \M1_unit|RGB_address[12]~44\,
	combout => \M1_unit|RGB_address[13]~45_combout\,
	cout => \M1_unit|RGB_address[13]~46\);

-- Location: LCFF_X42_Y20_N9
\M1_unit|RGB_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[13]~45_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(13));

-- Location: LCCOMB_X42_Y20_N12
\M1_unit|RGB_address[15]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|RGB_address[15]~49_combout\ = (\M1_unit|RGB_address\(15) & (!\M1_unit|RGB_address[14]~48\)) # (!\M1_unit|RGB_address\(15) & ((\M1_unit|RGB_address[14]~48\) # (GND)))
-- \M1_unit|RGB_address[15]~50\ = CARRY((!\M1_unit|RGB_address[14]~48\) # (!\M1_unit|RGB_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(15),
	datad => VCC,
	cin => \M1_unit|RGB_address[14]~48\,
	combout => \M1_unit|RGB_address[15]~49_combout\,
	cout => \M1_unit|RGB_address[15]~50\);

-- Location: LCFF_X42_Y20_N13
\M1_unit|RGB_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[15]~49_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(15));

-- Location: LCCOMB_X42_Y23_N30
\M1_unit|Selector49\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector49~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector49~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector49~0_combout\ & ((\M1_unit|RGB_address\(15)))) # (!\M1_unit|Selector49~0_combout\ & 
-- (\M1_unit|V_address\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(15),
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|Selector49~0_combout\,
	datad => \M1_unit|RGB_address\(15),
	combout => \M1_unit|Selector49~combout\);

-- Location: LCFF_X42_Y23_N31
\M1_unit|SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector49~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(15));

-- Location: LCFF_X41_Y20_N7
\SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(15),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(15));

-- Location: LCCOMB_X42_Y23_N6
\M1_unit|V_address[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[12]~43_combout\ = (\M1_unit|V_address\(12) & (\M1_unit|V_address[11]~42\ $ (GND))) # (!\M1_unit|V_address\(12) & (!\M1_unit|V_address[11]~42\ & VCC))
-- \M1_unit|V_address[12]~44\ = CARRY((\M1_unit|V_address\(12) & !\M1_unit|V_address[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(12),
	datad => VCC,
	cin => \M1_unit|V_address[11]~42\,
	combout => \M1_unit|V_address[12]~43_combout\,
	cout => \M1_unit|V_address[12]~44\);

-- Location: LCCOMB_X42_Y23_N8
\M1_unit|V_address[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[13]~45_combout\ = (\M1_unit|V_address\(13) & (!\M1_unit|V_address[12]~44\)) # (!\M1_unit|V_address\(13) & ((\M1_unit|V_address[12]~44\) # (GND)))
-- \M1_unit|V_address[13]~46\ = CARRY((!\M1_unit|V_address[12]~44\) # (!\M1_unit|V_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(13),
	datad => VCC,
	cin => \M1_unit|V_address[12]~44\,
	combout => \M1_unit|V_address[13]~45_combout\,
	cout => \M1_unit|V_address[13]~46\);

-- Location: LCFF_X42_Y23_N9
\M1_unit|V_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[13]~45_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(13));

-- Location: LCCOMB_X42_Y23_N10
\M1_unit|V_address[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[14]~47_combout\ = (\M1_unit|V_address\(14) & (\M1_unit|V_address[13]~46\ $ (GND))) # (!\M1_unit|V_address\(14) & (!\M1_unit|V_address[13]~46\ & VCC))
-- \M1_unit|V_address[14]~48\ = CARRY((\M1_unit|V_address\(14) & !\M1_unit|V_address[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(14),
	datad => VCC,
	cin => \M1_unit|V_address[13]~46\,
	combout => \M1_unit|V_address[14]~47_combout\,
	cout => \M1_unit|V_address[14]~48\);

-- Location: LCFF_X42_Y23_N11
\M1_unit|V_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[14]~47_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(14));

-- Location: LCCOMB_X43_Y21_N24
\M1_unit|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector50~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|Y_address\(14)) # (!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(14) & 
-- ((\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(14),
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|Y_address\(14),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector50~0_combout\);

-- Location: LCCOMB_X42_Y20_N26
\M1_unit|Selector50\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector50~combout\ = (\M1_unit|Selector50~0_combout\ & (((\M1_unit|V_address\(14)) # (\M1_unit|SRAM_address[14]~1_combout\)))) # (!\M1_unit|Selector50~0_combout\ & (\M1_unit|RGB_address\(14) & ((!\M1_unit|SRAM_address[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(14),
	datab => \M1_unit|V_address\(14),
	datac => \M1_unit|Selector50~0_combout\,
	datad => \M1_unit|SRAM_address[14]~1_combout\,
	combout => \M1_unit|Selector50~combout\);

-- Location: LCFF_X42_Y20_N27
\M1_unit|SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector50~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(14));

-- Location: LCFF_X41_Y20_N29
\SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(14),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(14));

-- Location: LCFF_X42_Y23_N7
\M1_unit|V_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[12]~43_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(12));

-- Location: LCCOMB_X43_Y21_N6
\M1_unit|U_address[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[12]~43_combout\ = (\M1_unit|U_address\(12) & (\M1_unit|U_address[11]~42\ $ (GND))) # (!\M1_unit|U_address\(12) & (!\M1_unit|U_address[11]~42\ & VCC))
-- \M1_unit|U_address[12]~44\ = CARRY((\M1_unit|U_address\(12) & !\M1_unit|U_address[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(12),
	datad => VCC,
	cin => \M1_unit|U_address[11]~42\,
	combout => \M1_unit|U_address[12]~43_combout\,
	cout => \M1_unit|U_address[12]~44\);

-- Location: LCFF_X43_Y21_N7
\M1_unit|U_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[12]~43_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(12));

-- Location: LCCOMB_X44_Y21_N20
\M1_unit|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector52~0_combout\ = (\M1_unit|SRAM_address[14]~3_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(12)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(12))))) # (!\M1_unit|SRAM_address[14]~3_combout\ 
-- & (!\M1_unit|SRAM_address[14]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~3_combout\,
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|U_address\(12),
	datad => \M1_unit|Y_address\(12),
	combout => \M1_unit|Selector52~0_combout\);

-- Location: LCFF_X42_Y20_N7
\M1_unit|RGB_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[12]~43_combout\,
	sdata => VCC,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(12));

-- Location: LCCOMB_X42_Y20_N22
\M1_unit|Selector52\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector52~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector52~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector52~0_combout\ & ((\M1_unit|RGB_address\(12)))) # (!\M1_unit|Selector52~0_combout\ & 
-- (\M1_unit|V_address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~1_combout\,
	datab => \M1_unit|V_address\(12),
	datac => \M1_unit|Selector52~0_combout\,
	datad => \M1_unit|RGB_address\(12),
	combout => \M1_unit|Selector52~combout\);

-- Location: LCFF_X42_Y20_N23
\M1_unit|SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector52~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(12));

-- Location: LCFF_X41_Y20_N17
\SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(12),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(12));

-- Location: LCCOMB_X43_Y21_N8
\M1_unit|U_address[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|U_address[13]~45_combout\ = (\M1_unit|U_address\(13) & (!\M1_unit|U_address[12]~44\)) # (!\M1_unit|U_address\(13) & ((\M1_unit|U_address[12]~44\) # (GND)))
-- \M1_unit|U_address[13]~46\ = CARRY((!\M1_unit|U_address[12]~44\) # (!\M1_unit|U_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|U_address\(13),
	datad => VCC,
	cin => \M1_unit|U_address[12]~44\,
	combout => \M1_unit|U_address[13]~45_combout\,
	cout => \M1_unit|U_address[13]~46\);

-- Location: LCFF_X43_Y21_N9
\M1_unit|U_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[13]~45_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(13));

-- Location: LCCOMB_X43_Y21_N30
\M1_unit|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector51~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|Y_address\(13)) # (!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(13) & 
-- ((\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~2_combout\,
	datab => \M1_unit|U_address\(13),
	datac => \M1_unit|Y_address\(13),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector51~0_combout\);

-- Location: LCCOMB_X42_Y20_N24
\M1_unit|Selector51\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector51~combout\ = (\M1_unit|Selector51~0_combout\ & ((\M1_unit|V_address\(13)) # ((\M1_unit|SRAM_address[14]~1_combout\)))) # (!\M1_unit|Selector51~0_combout\ & (((\M1_unit|RGB_address\(13) & !\M1_unit|SRAM_address[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(13),
	datab => \M1_unit|RGB_address\(13),
	datac => \M1_unit|Selector51~0_combout\,
	datad => \M1_unit|SRAM_address[14]~1_combout\,
	combout => \M1_unit|Selector51~combout\);

-- Location: LCFF_X42_Y20_N25
\M1_unit|SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector51~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(13));

-- Location: LCFF_X41_Y20_N27
\SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(13),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(13));

-- Location: LCCOMB_X41_Y20_N8
\unit2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr6~0_combout\ = (SRAM_address(15) & (SRAM_address(12) & (SRAM_address(14) $ (SRAM_address(13))))) # (!SRAM_address(15) & (!SRAM_address(13) & (SRAM_address(14) $ (SRAM_address(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(15),
	datab => SRAM_address(14),
	datac => SRAM_address(12),
	datad => SRAM_address(13),
	combout => \unit2|WideOr6~0_combout\);

-- Location: LCCOMB_X41_Y20_N2
\unit2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr5~0_combout\ = (SRAM_address(15) & ((SRAM_address(12) & ((SRAM_address(13)))) # (!SRAM_address(12) & (SRAM_address(14))))) # (!SRAM_address(15) & (SRAM_address(14) & (SRAM_address(12) $ (SRAM_address(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(15),
	datab => SRAM_address(14),
	datac => SRAM_address(12),
	datad => SRAM_address(13),
	combout => \unit2|WideOr5~0_combout\);

-- Location: LCCOMB_X41_Y20_N20
\unit2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr4~0_combout\ = (SRAM_address(15) & (SRAM_address(14) & ((SRAM_address(13)) # (!SRAM_address(12))))) # (!SRAM_address(15) & (!SRAM_address(14) & (!SRAM_address(12) & SRAM_address(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(15),
	datab => SRAM_address(14),
	datac => SRAM_address(12),
	datad => SRAM_address(13),
	combout => \unit2|WideOr4~0_combout\);

-- Location: LCCOMB_X41_Y20_N28
\unit2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr3~0_combout\ = (SRAM_address(12) & ((SRAM_address(14) $ (!SRAM_address(13))))) # (!SRAM_address(12) & ((SRAM_address(15) & (!SRAM_address(14) & SRAM_address(13))) # (!SRAM_address(15) & (SRAM_address(14) & !SRAM_address(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(12),
	datab => SRAM_address(15),
	datac => SRAM_address(14),
	datad => SRAM_address(13),
	combout => \unit2|WideOr3~0_combout\);

-- Location: LCCOMB_X41_Y20_N6
\unit2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr2~0_combout\ = (SRAM_address(13) & (SRAM_address(12) & ((!SRAM_address(15))))) # (!SRAM_address(13) & ((SRAM_address(14) & ((!SRAM_address(15)))) # (!SRAM_address(14) & (SRAM_address(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(12),
	datab => SRAM_address(14),
	datac => SRAM_address(15),
	datad => SRAM_address(13),
	combout => \unit2|WideOr2~0_combout\);

-- Location: LCCOMB_X41_Y20_N16
\unit2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr1~0_combout\ = (SRAM_address(14) & (SRAM_address(12) & (SRAM_address(15) $ (SRAM_address(13))))) # (!SRAM_address(14) & (!SRAM_address(15) & ((SRAM_address(12)) # (SRAM_address(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(15),
	datab => SRAM_address(14),
	datac => SRAM_address(12),
	datad => SRAM_address(13),
	combout => \unit2|WideOr1~0_combout\);

-- Location: LCCOMB_X41_Y20_N26
\unit2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr0~0_combout\ = (SRAM_address(12) & ((SRAM_address(15)) # (SRAM_address(13) $ (SRAM_address(14))))) # (!SRAM_address(12) & ((SRAM_address(13)) # (SRAM_address(15) $ (SRAM_address(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(12),
	datab => SRAM_address(15),
	datac => SRAM_address(13),
	datad => SRAM_address(14),
	combout => \unit2|WideOr0~0_combout\);

-- Location: LCCOMB_X42_Y23_N14
\M1_unit|V_address[16]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[16]~51_combout\ = (\M1_unit|V_address\(16) & (\M1_unit|V_address[15]~50\ $ (GND))) # (!\M1_unit|V_address\(16) & (!\M1_unit|V_address[15]~50\ & VCC))
-- \M1_unit|V_address[16]~52\ = CARRY((\M1_unit|V_address\(16) & !\M1_unit|V_address[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|V_address\(16),
	datad => VCC,
	cin => \M1_unit|V_address[15]~50\,
	combout => \M1_unit|V_address[16]~51_combout\,
	cout => \M1_unit|V_address[16]~52\);

-- Location: LCFF_X42_Y23_N15
\M1_unit|V_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[16]~51_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(16));

-- Location: LCCOMB_X42_Y23_N16
\M1_unit|V_address[17]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|V_address[17]~53_combout\ = \M1_unit|V_address\(17) $ (\M1_unit|V_address[16]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(17),
	cin => \M1_unit|V_address[16]~52\,
	combout => \M1_unit|V_address[17]~53_combout\);

-- Location: LCFF_X42_Y23_N17
\M1_unit|V_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[17]~53_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(17));

-- Location: LCCOMB_X43_Y21_N22
\M1_unit|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector47~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|Y_address\(17)) # (!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(17) & 
-- ((\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(17),
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|Y_address\(17),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector47~0_combout\);

-- Location: LCCOMB_X42_Y23_N24
\M1_unit|Selector47\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector47~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector47~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector47~0_combout\ & ((\M1_unit|V_address\(17)))) # (!\M1_unit|Selector47~0_combout\ & 
-- (\M1_unit|RGB_address\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(17),
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|V_address\(17),
	datad => \M1_unit|Selector47~0_combout\,
	combout => \M1_unit|Selector47~combout\);

-- Location: LCFF_X42_Y23_N25
\M1_unit|SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector47~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(17));

-- Location: LCFF_X47_Y32_N17
\SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(17),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(17));

-- Location: LCFF_X42_Y20_N15
\M1_unit|RGB_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[16]~51_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(16));

-- Location: LCFF_X43_Y21_N15
\M1_unit|U_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|U_address[16]~51_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|U_address[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|U_address\(16));

-- Location: LCCOMB_X43_Y21_N20
\M1_unit|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector48~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|Y_address\(16)) # ((!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|U_address\(16) & 
-- \M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Y_address\(16),
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|U_address\(16),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector48~0_combout\);

-- Location: LCCOMB_X42_Y20_N28
\M1_unit|Selector48\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector48~combout\ = (\M1_unit|Selector48~0_combout\ & ((\M1_unit|V_address\(16)) # ((\M1_unit|SRAM_address[14]~1_combout\)))) # (!\M1_unit|Selector48~0_combout\ & (((\M1_unit|RGB_address\(16) & !\M1_unit|SRAM_address[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(16),
	datab => \M1_unit|RGB_address\(16),
	datac => \M1_unit|Selector48~0_combout\,
	datad => \M1_unit|SRAM_address[14]~1_combout\,
	combout => \M1_unit|Selector48~combout\);

-- Location: LCFF_X42_Y20_N29
\M1_unit|SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector48~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(16));

-- Location: LCFF_X47_Y32_N31
\SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \M1_unit|SRAM_address\(16),
	sload => VCC,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(16));

-- Location: LCCOMB_X47_Y32_N18
\unit3|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~0_combout\ = (!SRAM_address(17) & SRAM_address(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SRAM_address(17),
	datad => SRAM_address(16),
	combout => \unit3|Decoder0~0_combout\);

-- Location: LCCOMB_X47_Y32_N30
\unit3|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~1_combout\ = (SRAM_address(17) & !SRAM_address(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SRAM_address(17),
	datac => SRAM_address(16),
	combout => \unit3|Decoder0~1_combout\);

-- Location: LCCOMB_X47_Y32_N16
\unit3|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~2_combout\ = (SRAM_address(17)) # (SRAM_address(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SRAM_address(17),
	datad => SRAM_address(16),
	combout => \unit3|Decoder0~2_combout\);

-- Location: LCFF_X12_Y30_N11
\SRAM_unit|SRAM_read_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[1]~1\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(1));

-- Location: LCFF_X12_Y30_N5
\SRAM_unit|SRAM_read_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[2]~2\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(2));

-- Location: LCFF_X12_Y30_N1
\SRAM_unit|SRAM_read_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[0]~0\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(0));

-- Location: LCFF_X12_Y30_N31
\SRAM_unit|SRAM_read_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[3]~3\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(3));

-- Location: LCCOMB_X23_Y31_N0
\unit4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(2) & (!\SRAM_unit|SRAM_read_data\(1) & (\SRAM_unit|SRAM_read_data\(0) $ (!\SRAM_unit|SRAM_read_data\(3))))) # (!\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(0) & 
-- (\SRAM_unit|SRAM_read_data\(1) $ (!\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(2),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr6~0_combout\);

-- Location: LCCOMB_X23_Y31_N18
\unit4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(1) & ((\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(3)))) # (!\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(1) & 
-- (\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(0) $ (\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(2),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr5~0_combout\);

-- Location: LCCOMB_X12_Y30_N8
\unit4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(3) & ((\SRAM_unit|SRAM_read_data\(1)) # (!\SRAM_unit|SRAM_read_data\(0))))) # (!\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(1) & 
-- (!\SRAM_unit|SRAM_read_data\(0) & !\SRAM_unit|SRAM_read_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(2),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr4~0_combout\);

-- Location: LCCOMB_X12_Y30_N0
\unit4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(1) $ ((!\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(1) & (!\SRAM_unit|SRAM_read_data\(2) & 
-- \SRAM_unit|SRAM_read_data\(3))) # (!\SRAM_unit|SRAM_read_data\(1) & (\SRAM_unit|SRAM_read_data\(2) & !\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(2),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr3~0_combout\);

-- Location: LCCOMB_X12_Y30_N10
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

-- Location: LCCOMB_X12_Y30_N4
\unit4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(1) & (!\SRAM_unit|SRAM_read_data\(3) & ((\SRAM_unit|SRAM_read_data\(0)) # (!\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(1) & (\SRAM_unit|SRAM_read_data\(0) & 
-- (\SRAM_unit|SRAM_read_data\(2) $ (!\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(0),
	datac => \SRAM_unit|SRAM_read_data\(2),
	datad => \SRAM_unit|SRAM_read_data\(3),
	combout => \unit4|WideOr1~0_combout\);

-- Location: LCCOMB_X12_Y30_N30
\unit4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(3)) # (\SRAM_unit|SRAM_read_data\(1) $ (\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(1)) # 
-- (\SRAM_unit|SRAM_read_data\(2) $ (\SRAM_unit|SRAM_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(2),
	datac => \SRAM_unit|SRAM_read_data\(3),
	datad => \SRAM_unit|SRAM_read_data\(0),
	combout => \unit4|WideOr0~0_combout\);

-- Location: LCFF_X12_Y30_N27
\SRAM_unit|SRAM_read_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[4]~4\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(4));

-- Location: LCFF_X12_Y30_N13
\SRAM_unit|SRAM_read_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[5]~5\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(5));

-- Location: LCFF_X12_Y30_N17
\SRAM_unit|SRAM_read_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[7]~7\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(7));

-- Location: LCFF_X12_Y30_N7
\SRAM_unit|SRAM_read_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[6]~6\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(6));

-- Location: LCCOMB_X21_Y31_N0
\unit5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(5) $ (\SRAM_unit|SRAM_read_data\(6))))) # (!\SRAM_unit|SRAM_read_data\(7) & (!\SRAM_unit|SRAM_read_data\(5) & 
-- (\SRAM_unit|SRAM_read_data\(4) $ (\SRAM_unit|SRAM_read_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(5),
	datac => \SRAM_unit|SRAM_read_data\(7),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr6~0_combout\);

-- Location: LCCOMB_X21_Y31_N10
\unit5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(5) & ((\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(7))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(6)))))) # (!\SRAM_unit|SRAM_read_data\(5) & 
-- (\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(4) $ (\SRAM_unit|SRAM_read_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(5),
	datac => \SRAM_unit|SRAM_read_data\(7),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr5~0_combout\);

-- Location: LCCOMB_X21_Y31_N20
\unit5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(6) & ((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(4))))) # (!\SRAM_unit|SRAM_read_data\(7) & (!\SRAM_unit|SRAM_read_data\(4) & 
-- (\SRAM_unit|SRAM_read_data\(5) & !\SRAM_unit|SRAM_read_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(5),
	datac => \SRAM_unit|SRAM_read_data\(7),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr4~0_combout\);

-- Location: LCCOMB_X12_Y30_N26
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

-- Location: LCCOMB_X12_Y30_N12
\unit5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(5) & (!\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(4)))) # (!\SRAM_unit|SRAM_read_data\(5) & ((\SRAM_unit|SRAM_read_data\(6) & (!\SRAM_unit|SRAM_read_data\(7))) # 
-- (!\SRAM_unit|SRAM_read_data\(6) & ((\SRAM_unit|SRAM_read_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(7),
	datab => \SRAM_unit|SRAM_read_data\(4),
	datac => \SRAM_unit|SRAM_read_data\(5),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr2~0_combout\);

-- Location: LCCOMB_X12_Y30_N6
\unit5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(7) $ (((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(6)))))) # (!\SRAM_unit|SRAM_read_data\(4) & (!\SRAM_unit|SRAM_read_data\(7) & 
-- (!\SRAM_unit|SRAM_read_data\(6) & \SRAM_unit|SRAM_read_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(7),
	datab => \SRAM_unit|SRAM_read_data\(4),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr1~0_combout\);

-- Location: LCCOMB_X12_Y30_N16
\unit5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(7)) # (\SRAM_unit|SRAM_read_data\(5) $ (\SRAM_unit|SRAM_read_data\(6))))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5)) # 
-- (\SRAM_unit|SRAM_read_data\(7) $ (\SRAM_unit|SRAM_read_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(5),
	datab => \SRAM_unit|SRAM_read_data\(4),
	datac => \SRAM_unit|SRAM_read_data\(7),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr0~0_combout\);

-- Location: LCFF_X23_Y33_N9
\SRAM_unit|SRAM_read_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[8]~8\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(8));

-- Location: LCFF_X23_Y33_N23
\SRAM_unit|SRAM_read_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[11]~11\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(11));

-- Location: LCFF_X23_Y33_N21
\SRAM_unit|SRAM_read_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[10]~10\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(10));

-- Location: LCFF_X23_Y33_N11
\SRAM_unit|SRAM_read_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[9]~9\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(9));

-- Location: LCCOMB_X23_Y33_N16
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

-- Location: LCCOMB_X23_Y33_N18
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

-- Location: LCCOMB_X23_Y33_N28
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

-- Location: LCCOMB_X23_Y33_N8
\unit6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(10) $ (((!\SRAM_unit|SRAM_read_data\(9)))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(10) & (!\SRAM_unit|SRAM_read_data\(11) & 
-- !\SRAM_unit|SRAM_read_data\(9))) # (!\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(11) & \SRAM_unit|SRAM_read_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(10),
	datab => \SRAM_unit|SRAM_read_data\(11),
	datac => \SRAM_unit|SRAM_read_data\(8),
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \unit6|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y33_N10
\unit6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(9) & (((!\SRAM_unit|SRAM_read_data\(11) & \SRAM_unit|SRAM_read_data\(8))))) # (!\SRAM_unit|SRAM_read_data\(9) & ((\SRAM_unit|SRAM_read_data\(10) & (!\SRAM_unit|SRAM_read_data\(11))) # 
-- (!\SRAM_unit|SRAM_read_data\(10) & ((\SRAM_unit|SRAM_read_data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(10),
	datab => \SRAM_unit|SRAM_read_data\(11),
	datac => \SRAM_unit|SRAM_read_data\(9),
	datad => \SRAM_unit|SRAM_read_data\(8),
	combout => \unit6|WideOr2~0_combout\);

-- Location: LCCOMB_X23_Y33_N20
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

-- Location: LCCOMB_X23_Y33_N22
\unit6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(11)) # (\SRAM_unit|SRAM_read_data\(10) $ (\SRAM_unit|SRAM_read_data\(9))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(9)) # 
-- (\SRAM_unit|SRAM_read_data\(10) $ (\SRAM_unit|SRAM_read_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(10),
	datab => \SRAM_unit|SRAM_read_data\(8),
	datac => \SRAM_unit|SRAM_read_data\(11),
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \unit6|WideOr0~0_combout\);

-- Location: LCFF_X17_Y32_N11
\SRAM_unit|SRAM_read_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[13]~13\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(13));

-- Location: LCFF_X17_Y32_N29
\SRAM_unit|SRAM_read_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[14]~14\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(14));

-- Location: LCFF_X17_Y32_N31
\SRAM_unit|SRAM_read_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[15]~15\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(15));

-- Location: LCFF_X17_Y32_N9
\SRAM_unit|SRAM_read_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[12]~12\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(12));

-- Location: LCCOMB_X17_Y32_N30
\unit7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(15) $ (!\SRAM_unit|SRAM_read_data\(12))))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12) & 
-- (\SRAM_unit|SRAM_read_data\(13) $ (!\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(14),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr6~0_combout\);

-- Location: LCCOMB_X17_Y32_N28
\unit7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(15))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(14)))))) # (!\SRAM_unit|SRAM_read_data\(13) & 
-- (\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(15) $ (\SRAM_unit|SRAM_read_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(15),
	datac => \SRAM_unit|SRAM_read_data\(14),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr5~0_combout\);

-- Location: LCCOMB_X17_Y32_N16
\unit7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(15) & ((\SRAM_unit|SRAM_read_data\(13)) # (!\SRAM_unit|SRAM_read_data\(12))))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(13) & 
-- (!\SRAM_unit|SRAM_read_data\(15) & !\SRAM_unit|SRAM_read_data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(14),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr4~0_combout\);

-- Location: LCCOMB_X17_Y32_N26
\unit7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(13) $ ((!\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(13) & (!\SRAM_unit|SRAM_read_data\(14) & 
-- \SRAM_unit|SRAM_read_data\(15))) # (!\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(14) & !\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(14),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr3~0_combout\);

-- Location: LCCOMB_X17_Y32_N20
\unit7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & (((!\SRAM_unit|SRAM_read_data\(15) & \SRAM_unit|SRAM_read_data\(12))))) # (!\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(15))) # 
-- (!\SRAM_unit|SRAM_read_data\(14) & ((\SRAM_unit|SRAM_read_data\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(14),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \unit7|WideOr2~0_combout\);

-- Location: LCCOMB_X17_Y32_N8
\unit7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & (!\SRAM_unit|SRAM_read_data\(15) & ((\SRAM_unit|SRAM_read_data\(12)) # (!\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(12) & 
-- (\SRAM_unit|SRAM_read_data\(15) $ (!\SRAM_unit|SRAM_read_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(15),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr1~0_combout\);

-- Location: LCCOMB_X17_Y32_N10
\unit7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(15)) # (\SRAM_unit|SRAM_read_data\(13) $ (\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(13)) # 
-- (\SRAM_unit|SRAM_read_data\(15) $ (\SRAM_unit|SRAM_read_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(12),
	datab => \SRAM_unit|SRAM_read_data\(15),
	datac => \SRAM_unit|SRAM_read_data\(13),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
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

-- Location: LCCOMB_X28_Y25_N12
\VGA_unit|VGA_unit|H_Cont[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[6]~22_combout\ = (\VGA_unit|VGA_unit|H_Cont\(6) & (\VGA_unit|VGA_unit|H_Cont[5]~21\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont[5]~21\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[6]~23\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(6) & !\VGA_unit|VGA_unit|H_Cont[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[5]~21\,
	combout => \VGA_unit|VGA_unit|H_Cont[6]~22_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[6]~23\);

-- Location: LCCOMB_X28_Y25_N14
\VGA_unit|VGA_unit|H_Cont[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[7]~24_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7) & (!\VGA_unit|VGA_unit|H_Cont[6]~23\)) # (!\VGA_unit|VGA_unit|H_Cont\(7) & ((\VGA_unit|VGA_unit|H_Cont[6]~23\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[7]~25\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[6]~23\) # (!\VGA_unit|VGA_unit|H_Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[6]~23\,
	combout => \VGA_unit|VGA_unit|H_Cont[7]~24_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[7]~25\);

-- Location: LCCOMB_X23_Y32_N12
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

-- Location: LCFF_X23_Y32_N13
\VGA_unit|VGA_unit|counter_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|counter_enable~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|counter_enable~regout\);

-- Location: LCFF_X28_Y25_N15
\VGA_unit|VGA_unit|H_Cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[7]~24_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(7));

-- Location: LCCOMB_X28_Y25_N16
\VGA_unit|VGA_unit|H_Cont[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[8]~26_combout\ = (\VGA_unit|VGA_unit|H_Cont\(8) & (\VGA_unit|VGA_unit|H_Cont[7]~25\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(8) & (!\VGA_unit|VGA_unit|H_Cont[7]~25\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[8]~27\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(8) & !\VGA_unit|VGA_unit|H_Cont[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[7]~25\,
	combout => \VGA_unit|VGA_unit|H_Cont[8]~26_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[8]~27\);

-- Location: LCFF_X28_Y25_N17
\VGA_unit|VGA_unit|H_Cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[8]~26_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(8));

-- Location: LCCOMB_X28_Y25_N18
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

-- Location: LCFF_X28_Y25_N19
\VGA_unit|VGA_unit|H_Cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[9]~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(9));

-- Location: LCCOMB_X27_Y25_N30
\VGA_unit|VGA_unit|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~2_combout\ = (!\VGA_unit|VGA_unit|LessThan0~1_combout\ & (\VGA_unit|VGA_unit|H_Cont\(8) & \VGA_unit|VGA_unit|H_Cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_unit|H_Cont\(9),
	combout => \VGA_unit|VGA_unit|LessThan0~2_combout\);

-- Location: LCFF_X28_Y25_N1
\VGA_unit|VGA_unit|H_Cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[0]~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(0));

-- Location: LCCOMB_X28_Y25_N2
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

-- Location: LCFF_X28_Y25_N3
\VGA_unit|VGA_unit|H_Cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[1]~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(1));

-- Location: LCCOMB_X28_Y25_N4
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

-- Location: LCFF_X28_Y25_N5
\VGA_unit|VGA_unit|H_Cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[2]~14_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(2));

-- Location: LCCOMB_X28_Y25_N6
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

-- Location: LCCOMB_X28_Y25_N8
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

-- Location: LCFF_X28_Y25_N9
\VGA_unit|VGA_unit|H_Cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[4]~18_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(4));

-- Location: LCCOMB_X28_Y25_N10
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

-- Location: LCFF_X28_Y25_N13
\VGA_unit|VGA_unit|H_Cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[6]~22_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(6));

-- Location: LCFF_X28_Y25_N11
\VGA_unit|VGA_unit|H_Cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[5]~20_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(5));

-- Location: LCCOMB_X27_Y25_N0
\VGA_unit|VGA_unit|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan1~0_combout\ = ((\VGA_unit|VGA_unit|H_Cont\(7)) # ((\VGA_unit|VGA_unit|H_Cont\(6) & \VGA_unit|VGA_unit|H_Cont\(5)))) # (!\VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => \VGA_unit|VGA_unit|H_Cont\(7),
	combout => \VGA_unit|VGA_unit|LessThan1~0_combout\);

-- Location: LCFF_X27_Y25_N1
\VGA_unit|VGA_unit|oVGA_H_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|LessThan1~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\);

-- Location: LCFF_X28_Y25_N7
\VGA_unit|VGA_unit|H_Cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[3]~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(3));

-- Location: LCCOMB_X28_Y25_N20
\VGA_unit|VGA_unit|oVGA_V_SYNC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ = (\VGA_unit|VGA_unit|counter_enable~regout\ & (!\VGA_unit|VGA_unit|H_Cont\(0) & (!\VGA_unit|VGA_unit|H_Cont\(2) & !\VGA_unit|VGA_unit|H_Cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|counter_enable~regout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(0),
	datac => \VGA_unit|VGA_unit|H_Cont\(2),
	datad => \VGA_unit|VGA_unit|H_Cont\(3),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\);

-- Location: LCCOMB_X27_Y26_N16
\VGA_unit|VGA_unit|oVGA_V_SYNC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(9) & !\VGA_unit|VGA_unit|H_Cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(9),
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\);

-- Location: LCCOMB_X27_Y25_N28
\VGA_unit|VGA_unit|oVGA_V_SYNC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ & (\VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ & (\VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ & !\VGA_unit|VGA_unit|H_Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	datab => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\,
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\,
	datad => \VGA_unit|VGA_unit|H_Cont\(1),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\);

-- Location: LCCOMB_X28_Y27_N6
\VGA_unit|VGA_unit|V_Cont[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[0]~10_combout\ = \VGA_unit|VGA_unit|V_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|V_Cont[0]~11\ = CARRY(\VGA_unit|VGA_unit|V_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|V_Cont[0]~10_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[0]~11\);

-- Location: LCCOMB_X28_Y27_N8
\VGA_unit|VGA_unit|V_Cont[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[1]~12_combout\ = (\VGA_unit|VGA_unit|V_Cont\(1) & (!\VGA_unit|VGA_unit|V_Cont[0]~11\)) # (!\VGA_unit|VGA_unit|V_Cont\(1) & ((\VGA_unit|VGA_unit|V_Cont[0]~11\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[1]~13\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[0]~11\) # (!\VGA_unit|VGA_unit|V_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[0]~11\,
	combout => \VGA_unit|VGA_unit|V_Cont[1]~12_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[1]~13\);

-- Location: LCCOMB_X28_Y27_N16
\VGA_unit|VGA_unit|V_Cont[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[5]~20_combout\ = (\VGA_unit|VGA_unit|V_Cont\(5) & (!\VGA_unit|VGA_unit|V_Cont[4]~19\)) # (!\VGA_unit|VGA_unit|V_Cont\(5) & ((\VGA_unit|VGA_unit|V_Cont[4]~19\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[5]~21\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[4]~19\) # (!\VGA_unit|VGA_unit|V_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[4]~19\,
	combout => \VGA_unit|VGA_unit|V_Cont[5]~20_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[5]~21\);

-- Location: LCCOMB_X28_Y27_N18
\VGA_unit|VGA_unit|V_Cont[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[6]~22_combout\ = (\VGA_unit|VGA_unit|V_Cont\(6) & (\VGA_unit|VGA_unit|V_Cont[5]~21\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(6) & (!\VGA_unit|VGA_unit|V_Cont[5]~21\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[6]~23\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(6) & !\VGA_unit|VGA_unit|V_Cont[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[5]~21\,
	combout => \VGA_unit|VGA_unit|V_Cont[6]~22_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[6]~23\);

-- Location: LCFF_X28_Y27_N19
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

-- Location: LCCOMB_X28_Y27_N20
\VGA_unit|VGA_unit|V_Cont[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[7]~24_combout\ = (\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|V_Cont[6]~23\)) # (!\VGA_unit|VGA_unit|V_Cont\(7) & ((\VGA_unit|VGA_unit|V_Cont[6]~23\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[7]~25\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[6]~23\) # (!\VGA_unit|VGA_unit|V_Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[6]~23\,
	combout => \VGA_unit|VGA_unit|V_Cont[7]~24_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[7]~25\);

-- Location: LCCOMB_X28_Y27_N22
\VGA_unit|VGA_unit|V_Cont[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[8]~26_combout\ = (\VGA_unit|VGA_unit|V_Cont\(8) & (\VGA_unit|VGA_unit|V_Cont[7]~25\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont[7]~25\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[8]~27\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(8) & !\VGA_unit|VGA_unit|V_Cont[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[7]~25\,
	combout => \VGA_unit|VGA_unit|V_Cont[8]~26_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[8]~27\);

-- Location: LCFF_X28_Y27_N23
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

-- Location: LCCOMB_X28_Y27_N24
\VGA_unit|VGA_unit|V_Cont[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[9]~28_combout\ = \VGA_unit|VGA_unit|V_Cont\(9) $ (\VGA_unit|VGA_unit|V_Cont[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	cin => \VGA_unit|VGA_unit|V_Cont[8]~27\,
	combout => \VGA_unit|VGA_unit|V_Cont[9]~28_combout\);

-- Location: LCFF_X28_Y27_N25
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

-- Location: LCCOMB_X28_Y27_N26
\VGA_unit|VGA_unit|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont\(4) & !\VGA_unit|VGA_unit|V_Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(7),
	datab => \VGA_unit|VGA_unit|V_Cont\(8),
	datac => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => \VGA_unit|VGA_unit|V_Cont\(6),
	combout => \VGA_unit|VGA_unit|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y27_N30
\VGA_unit|VGA_unit|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~2_combout\ = (\VGA_unit|VGA_unit|V_Cont\(9) & (((\VGA_unit|VGA_unit|V_Cont\(5)) # (!\VGA_unit|VGA_unit|LessThan2~0_combout\)) # (!\VGA_unit|VGA_unit|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan2~1_combout\,
	datab => \VGA_unit|VGA_unit|V_Cont\(5),
	datac => \VGA_unit|VGA_unit|V_Cont\(9),
	datad => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan2~2_combout\);

-- Location: LCFF_X28_Y27_N9
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

-- Location: LCCOMB_X28_Y27_N10
\VGA_unit|VGA_unit|V_Cont[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[2]~14_combout\ = (\VGA_unit|VGA_unit|V_Cont\(2) & (\VGA_unit|VGA_unit|V_Cont[1]~13\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(2) & (!\VGA_unit|VGA_unit|V_Cont[1]~13\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[2]~15\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(2) & !\VGA_unit|VGA_unit|V_Cont[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[1]~13\,
	combout => \VGA_unit|VGA_unit|V_Cont[2]~14_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[2]~15\);

-- Location: LCCOMB_X28_Y27_N12
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

-- Location: LCCOMB_X28_Y27_N14
\VGA_unit|VGA_unit|V_Cont[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[4]~18_combout\ = (\VGA_unit|VGA_unit|V_Cont\(4) & (\VGA_unit|VGA_unit|V_Cont[3]~17\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(4) & (!\VGA_unit|VGA_unit|V_Cont[3]~17\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[4]~19\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(4) & !\VGA_unit|VGA_unit|V_Cont[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[3]~17\,
	combout => \VGA_unit|VGA_unit|V_Cont[4]~18_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[4]~19\);

-- Location: LCFF_X28_Y27_N15
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

-- Location: LCFF_X28_Y27_N17
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

-- Location: LCCOMB_X28_Y27_N28
\VGA_unit|VGA_unit|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~1_combout\ = (\VGA_unit|VGA_unit|LessThan6~0_combout\ & (!\VGA_unit|VGA_unit|V_Cont\(5) & \VGA_unit|VGA_unit|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan6~0_combout\,
	datac => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan6~1_combout\);

-- Location: LCCOMB_X28_Y27_N0
\VGA_unit|VGA_unit|oVGA_V_SYNC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & ((\VGA_unit|VGA_unit|V_Cont\(9)) # ((!\VGA_unit|VGA_unit|LessThan6~1_combout\)))) # (!\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & 
-- (((\VGA_unit|VGA_unit|oVGA_V_SYNC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	datab => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	datad => \VGA_unit|VGA_unit|LessThan6~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\);

-- Location: LCFF_X28_Y27_N1
\VGA_unit|VGA_unit|oVGA_V_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\);

-- Location: LCCOMB_X27_Y27_N0
\VGA_unit|VGA_unit|oVGA_BLANK\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_BLANK~combout\ = (\VGA_unit|VGA_unit|oVGA_H_SYNC~regout\ & \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\,
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	combout => \VGA_unit|VGA_unit|oVGA_BLANK~combout\);

-- Location: LCCOMB_X27_Y25_N16
\VGA_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~1_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont\(1) & (\VGA_unit|VGA_unit|H_Cont\(5) $ (\VGA_unit|VGA_unit|H_Cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(6),
	datab => \VGA_unit|VGA_unit|H_Cont\(5),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(1),
	combout => \VGA_unit|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y25_N2
\VGA_unit|VGA_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add0~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7) & ((\VGA_unit|VGA_unit|H_Cont\(5)) # ((\VGA_unit|VGA_unit|H_Cont\(6)) # (\VGA_unit|VGA_unit|H_Cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(7),
	combout => \VGA_unit|VGA_unit|Add0~0_combout\);

-- Location: LCCOMB_X27_Y26_N30
\VGA_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~2_combout\ = (\VGA_unit|Equal0~1_combout\ & (\VGA_unit|VGA_unit|H_Cont\(9) $ (((\VGA_unit|VGA_unit|H_Cont\(8)) # (\VGA_unit|VGA_unit|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(8),
	datab => \VGA_unit|Equal0~1_combout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(9),
	datad => \VGA_unit|VGA_unit|Add0~0_combout\,
	combout => \VGA_unit|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y25_N22
\VGA_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(0) & (\VGA_unit|VGA_unit|H_Cont\(2) & \VGA_unit|VGA_unit|H_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(0),
	datac => \VGA_unit|VGA_unit|H_Cont\(2),
	datad => \VGA_unit|VGA_unit|H_Cont\(3),
	combout => \VGA_unit|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\VGA_unit|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~1_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(4) & \VGA_unit|VGA_unit|H_Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(6),
	datab => \VGA_unit|VGA_unit|H_Cont\(5),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(1),
	combout => \VGA_unit|always0~1_combout\);

-- Location: LCCOMB_X27_Y26_N24
\VGA_unit|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~2_combout\ = (\VGA_unit|always0~1_combout\ & (\VGA_unit|VGA_unit|H_Cont\(9) $ (((!\VGA_unit|VGA_unit|Add0~0_combout\ & !\VGA_unit|VGA_unit|H_Cont\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(9),
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|always0~1_combout\,
	combout => \VGA_unit|always0~2_combout\);

-- Location: LCCOMB_X27_Y26_N2
\VGA_unit|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~3_combout\ = (\VGA_unit|always0~0_combout\ & ((\VGA_unit|Equal0~2_combout\) # ((\VGA_unit|Equal0~0_combout\ & \VGA_unit|always0~2_combout\)))) # (!\VGA_unit|always0~0_combout\ & (((\VGA_unit|Equal0~0_combout\ & 
-- \VGA_unit|always0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~0_combout\,
	datab => \VGA_unit|Equal0~2_combout\,
	datac => \VGA_unit|Equal0~0_combout\,
	datad => \VGA_unit|always0~2_combout\,
	combout => \VGA_unit|always0~3_combout\);

-- Location: LCFF_X28_Y27_N13
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

-- Location: LCFF_X28_Y27_N11
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

-- Location: LCCOMB_X27_Y27_N14
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

-- Location: LCCOMB_X27_Y27_N16
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

-- Location: LCCOMB_X27_Y27_N20
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

-- Location: LCCOMB_X27_Y27_N22
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

-- Location: LCFF_X28_Y27_N21
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

-- Location: LCCOMB_X27_Y27_N24
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

-- Location: LCCOMB_X27_Y27_N26
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

-- Location: LCCOMB_X27_Y27_N28
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

-- Location: LCCOMB_X27_Y26_N26
\VGA_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~0_combout\ = (!\VGA_unit|VGA_unit|Add1~8_combout\ & (!\VGA_unit|VGA_unit|Add1~18_combout\ & (!\VGA_unit|VGA_unit|Add1~6_combout\ & !\VGA_unit|VGA_unit|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~8_combout\,
	datab => \VGA_unit|VGA_unit|Add1~18_combout\,
	datac => \VGA_unit|VGA_unit|Add1~6_combout\,
	datad => \VGA_unit|VGA_unit|Add1~10_combout\,
	combout => \VGA_unit|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y26_N14
\VGA_unit|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~2_combout\ = (\VGA_unit|Equal3~1_combout\ & (!\VGA_unit|VGA_unit|Add1~12_combout\ & (!\VGA_unit|VGA_unit|Add1~4_combout\ & \VGA_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal3~1_combout\,
	datab => \VGA_unit|VGA_unit|Add1~12_combout\,
	datac => \VGA_unit|VGA_unit|Add1~4_combout\,
	datad => \VGA_unit|Equal3~0_combout\,
	combout => \VGA_unit|Equal3~2_combout\);

-- Location: LCCOMB_X27_Y25_N22
\VGA_unit|VGA_unit|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add0~1_combout\ = \VGA_unit|VGA_unit|H_Cont\(7) $ (((\VGA_unit|VGA_unit|H_Cont\(5)) # ((\VGA_unit|VGA_unit|H_Cont\(6)) # (\VGA_unit|VGA_unit|H_Cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(7),
	combout => \VGA_unit|VGA_unit|Add0~1_combout\);

-- Location: LCCOMB_X27_Y26_N28
\VGA_unit|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~4_combout\ = (!\VGA_unit|VGA_unit|Add0~1_combout\ & (\VGA_unit|VGA_unit|Add0~0_combout\ $ (\VGA_unit|VGA_unit|H_Cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~0_combout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_unit|Add0~1_combout\,
	combout => \VGA_unit|always0~4_combout\);

-- Location: LCCOMB_X27_Y26_N6
\VGA_unit|always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~5_combout\ = (\VGA_unit|Equal4~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # ((\VGA_unit|always0~3_combout\ & \VGA_unit|always0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal4~2_combout\,
	datab => \VGA_unit|always0~3_combout\,
	datac => \VGA_unit|Equal3~2_combout\,
	datad => \VGA_unit|always0~4_combout\,
	combout => \VGA_unit|always0~5_combout\);

-- Location: LCCOMB_X23_Y30_N22
\VGA_unit|VGA_blue~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~1_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_blue~0_combout\ & \VGA_unit|VGA_blue\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue~0_combout\,
	datac => \VGA_unit|VGA_blue\(0),
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~1_combout\);

-- Location: LCFF_X23_Y30_N23
\VGA_unit|VGA_blue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(0));

-- Location: LCCOMB_X27_Y27_N2
\VGA_unit|VGA_unit|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(2) & (!\VGA_unit|VGA_unit|V_Cont\(1) & !\VGA_unit|VGA_unit|V_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(2),
	datac => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => \VGA_unit|VGA_unit|V_Cont\(3),
	combout => \VGA_unit|VGA_unit|LessThan6~0_combout\);

-- Location: LCFF_X28_Y27_N7
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

-- Location: LCCOMB_X27_Y27_N4
\VGA_unit|VGA_unit|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~2_combout\ = ((\VGA_unit|VGA_unit|LessThan6~0_combout\ & (!\VGA_unit|VGA_unit|V_Cont\(4) & !\VGA_unit|VGA_unit|V_Cont\(0)))) # (!\VGA_unit|VGA_unit|V_Cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(5),
	datab => \VGA_unit|VGA_unit|LessThan6~0_combout\,
	datac => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => \VGA_unit|VGA_unit|V_Cont\(0),
	combout => \VGA_unit|VGA_unit|LessThan6~2_combout\);

-- Location: LCCOMB_X27_Y25_N14
\VGA_unit|VGA_unit|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan4~0_combout\ = ((!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(6) & !\VGA_unit|VGA_unit|H_Cont\(4)))) # (!\VGA_unit|VGA_unit|H_Cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(7),
	combout => \VGA_unit|VGA_unit|LessThan4~0_combout\);

-- Location: LCCOMB_X27_Y25_N8
\VGA_unit|VGA_unit|oVGA_R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(8) & ((\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\) # ((!\VGA_unit|VGA_unit|H_Cont\(9))))) # (!\VGA_unit|VGA_unit|H_Cont\(8) & (((\VGA_unit|VGA_unit|H_Cont\(9)) # 
-- (!\VGA_unit|VGA_unit|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	datab => \VGA_unit|VGA_unit|LessThan4~0_combout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_unit|H_Cont\(9),
	combout => \VGA_unit|VGA_unit|oVGA_R~0_combout\);

-- Location: LCCOMB_X28_Y27_N2
\VGA_unit|VGA_unit|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan7~0_combout\ = ((\VGA_unit|VGA_unit|LessThan6~1_combout\ & !\VGA_unit|VGA_unit|V_Cont\(0))) # (!\VGA_unit|VGA_unit|V_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|LessThan6~1_combout\,
	datac => \VGA_unit|VGA_unit|V_Cont\(9),
	datad => \VGA_unit|VGA_unit|V_Cont\(0),
	combout => \VGA_unit|VGA_unit|LessThan7~0_combout\);

-- Location: LCCOMB_X23_Y32_N30
\VGA_unit|VGA_unit|oVGA_R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~1_combout\ = (\VGA_unit|VGA_unit|oVGA_R~0_combout\ & (\VGA_unit|VGA_unit|LessThan7~0_combout\ & ((!\VGA_unit|VGA_unit|LessThan6~2_combout\) # (!\VGA_unit|VGA_unit|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan6~3_combout\,
	datab => \VGA_unit|VGA_unit|LessThan6~2_combout\,
	datac => \VGA_unit|VGA_unit|oVGA_R~0_combout\,
	datad => \VGA_unit|VGA_unit|LessThan7~0_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~1_combout\);

-- Location: LCCOMB_X23_Y32_N26
\VGA_unit|VGA_unit|oVGA_R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~2_combout\ = (\VGA_unit|VGA_blue\(0) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_blue\(0),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~2_combout\);

-- Location: LCCOMB_X23_Y32_N24
\VGA_unit|VGA_unit|oVGA_R[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R[0]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R[0]~feeder_combout\);

-- Location: LCFF_X23_Y32_N25
\VGA_unit|VGA_unit|oVGA_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R[0]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(0));

-- Location: LCCOMB_X23_Y32_N10
\VGA_unit|VGA_unit|oVGA_R[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R[1]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R[1]~feeder_combout\);

-- Location: LCFF_X23_Y32_N11
\VGA_unit|VGA_unit|oVGA_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R[1]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(1));

-- Location: LCCOMB_X45_Y22_N12
\VGA_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_enable~0_combout\ = (\VGA_enable~regout\) # ((\M1_unit|M1_done~regout\ & \state.S_TOP_M1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|M1_done~regout\,
	datac => \VGA_enable~regout\,
	datad => \state.S_TOP_M1~regout\,
	combout => \VGA_enable~0_combout\);

-- Location: LCFF_X45_Y22_N13
VGA_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_enable~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_enable~regout\);

-- Location: LCFF_X23_Y30_N25
\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_1~regout\);

-- Location: LCFF_X23_Y30_N17
\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_1~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\);

-- Location: LCFF_X23_Y30_N9
\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\);

-- Location: LCCOMB_X27_Y25_N4
\VGA_unit|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|LessThan2~2_combout\ = (\VGA_unit|LessThan2~1_combout\ & (\VGA_unit|VGA_unit|H_Cont\(5) $ (\VGA_unit|VGA_unit|H_Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|LessThan2~1_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(5),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	combout => \VGA_unit|LessThan2~2_combout\);

-- Location: LCCOMB_X27_Y25_N26
\VGA_unit|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|LessThan2~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(6) & ((\VGA_unit|VGA_unit|H_Cont\(7)) # ((!\VGA_unit|VGA_unit|H_Cont\(5) & !\VGA_unit|VGA_unit|H_Cont\(4))))) # (!\VGA_unit|VGA_unit|H_Cont\(6) & ((\VGA_unit|VGA_unit|H_Cont\(5)) # 
-- ((\VGA_unit|VGA_unit|H_Cont\(4)) # (!\VGA_unit|VGA_unit|H_Cont\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(7),
	combout => \VGA_unit|LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y26_N0
\VGA_unit|VGA_unit|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add0~3_combout\ = \VGA_unit|VGA_unit|H_Cont\(8) $ (\VGA_unit|VGA_unit|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_unit|Add0~0_combout\,
	combout => \VGA_unit|VGA_unit|Add0~3_combout\);

-- Location: LCCOMB_X27_Y25_N6
\VGA_unit|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|LessThan2~3_combout\ = (\VGA_unit|VGA_unit|Add0~2_combout\ & ((\VGA_unit|LessThan2~2_combout\) # ((\VGA_unit|LessThan2~0_combout\) # (\VGA_unit|VGA_unit|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~2_combout\,
	datab => \VGA_unit|LessThan2~2_combout\,
	datac => \VGA_unit|LessThan2~0_combout\,
	datad => \VGA_unit|VGA_unit|Add0~3_combout\,
	combout => \VGA_unit|LessThan2~3_combout\);

-- Location: LCCOMB_X23_Y30_N10
\VGA_unit|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Selector23~0_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~regout\) # ((\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\ & \VGA_unit|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~regout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\,
	datad => \VGA_unit|LessThan2~3_combout\,
	combout => \VGA_unit|Selector23~0_combout\);

-- Location: LCFF_X23_Y30_N11
\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Selector23~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0~regout\);

-- Location: LCCOMB_X23_Y30_N4
\VGA_unit|VGA_red~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~1_combout\ = (\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\) # (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0~regout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_red~1_combout\);

-- Location: LCCOMB_X23_Y30_N30
\VGA_unit|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Selector18~1_combout\ = (\VGA_unit|Selector18~0_combout\ & (((\VGA_unit|LessThan2~3_combout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\))) # (!\VGA_unit|Selector18~0_combout\ & 
-- (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\ & ((\VGA_unit|LessThan2~3_combout\) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Selector18~0_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\,
	datad => \VGA_unit|LessThan2~3_combout\,
	combout => \VGA_unit|Selector18~1_combout\);

-- Location: LCFF_X23_Y30_N31
\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Selector18~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\);

-- Location: LCCOMB_X27_Y26_N18
\VGA_unit|always0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~6_combout\ = (\VGA_unit|VGA_unit|Add1~12_combout\ & ((\VGA_unit|VGA_unit|Add1~8_combout\ & ((\VGA_unit|VGA_unit|Add1~6_combout\) # (\VGA_unit|VGA_unit|Add1~16_combout\))) # (!\VGA_unit|VGA_unit|Add1~8_combout\ & 
-- (\VGA_unit|VGA_unit|Add1~6_combout\ & \VGA_unit|VGA_unit|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~8_combout\,
	datab => \VGA_unit|VGA_unit|Add1~12_combout\,
	datac => \VGA_unit|VGA_unit|Add1~6_combout\,
	datad => \VGA_unit|VGA_unit|Add1~16_combout\,
	combout => \VGA_unit|always0~6_combout\);

-- Location: LCCOMB_X27_Y26_N4
\VGA_unit|always0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~7_combout\ = \VGA_unit|VGA_unit|Add1~16_combout\ $ (((!\VGA_unit|VGA_unit|Add1~14_combout\ & ((!\VGA_unit|always0~6_combout\) # (!\VGA_unit|VGA_unit|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~14_combout\,
	datac => \VGA_unit|VGA_unit|Add1~10_combout\,
	datad => \VGA_unit|always0~6_combout\,
	combout => \VGA_unit|always0~7_combout\);

-- Location: LCCOMB_X23_Y30_N18
\VGA_unit|VGA_SRAM_state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~28_combout\ = (\VGA_unit|Equal0~4_combout\ & (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\ & (!\VGA_unit|always0~7_combout\ & !\VGA_unit|VGA_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal0~4_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\,
	datac => \VGA_unit|always0~7_combout\,
	datad => \VGA_unit|VGA_unit|Add1~18_combout\,
	combout => \VGA_unit|VGA_SRAM_state~28_combout\);

-- Location: LCFF_X23_Y30_N19
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state~28_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_1~regout\);

-- Location: LCCOMB_X23_Y30_N26
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~feeder_combout\ = \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_1~regout\,
	combout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~feeder_combout\);

-- Location: LCFF_X23_Y30_N27
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~regout\);

-- Location: LCCOMB_X23_Y30_N14
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~feeder_combout\ = \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_2~regout\,
	combout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~feeder_combout\);

-- Location: LCFF_X23_Y30_N15
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~regout\);

-- Location: LCCOMB_X23_Y30_N24
\VGA_unit|VGA_sram_data[2][8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][8]~1_combout\ = (\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~regout\) # (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~regout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_1~regout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_sram_data[2][8]~1_combout\);

-- Location: LCFF_X23_Y31_N31
\VGA_unit|VGA_sram_data[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(8),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][8]~regout\);

-- Location: LCFF_X23_Y30_N29
\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_3~regout\,
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_4~regout\);

-- Location: LCCOMB_X23_Y30_N28
\VGA_unit|VGA_sram_data[1][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][0]~0_combout\ = (\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\) # (\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_4~regout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_sram_data[1][0]~0_combout\);

-- Location: LCFF_X23_Y31_N29
\VGA_unit|VGA_sram_data[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(0),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][0]~regout\);

-- Location: LCCOMB_X23_Y31_N30
\VGA_unit|VGA_red~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~0_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][0]~regout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[2][8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][8]~regout\,
	datad => \VGA_unit|VGA_sram_data[1][0]~regout\,
	combout => \VGA_unit|VGA_red~0_combout\);

-- Location: LCCOMB_X22_Y31_N16
\VGA_unit|VGA_red~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~2_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_red~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~0_combout\,
	combout => \VGA_unit|VGA_red~2_combout\);

-- Location: LCCOMB_X23_Y30_N16
\VGA_unit|VGA_blue~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~0_combout\ = (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0~regout\ & (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\ & (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & \VGA_enable~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_0~regout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~regout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_blue~0_combout\);

-- Location: LCCOMB_X23_Y30_N20
\VGA_unit|VGA_green[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green[8]~0_combout\ = (\VGA_unit|always0~5_combout\) # (!\VGA_unit|VGA_blue~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_blue~0_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green[8]~0_combout\);

-- Location: LCFF_X22_Y31_N17
\VGA_unit|VGA_red[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(2));

-- Location: LCCOMB_X23_Y32_N4
\VGA_unit|VGA_unit|oVGA_R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~3_combout\ = (\VGA_unit|VGA_red\(2) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_red\(2),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~3_combout\);

-- Location: LCFF_X23_Y32_N5
\VGA_unit|VGA_unit|oVGA_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(2));

-- Location: LCCOMB_X22_Y31_N26
\VGA_unit|VGA_red~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~4_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~3_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~3_combout\,
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~4_combout\);

-- Location: LCFF_X22_Y31_N27
\VGA_unit|VGA_red[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(3));

-- Location: LCCOMB_X23_Y32_N6
\VGA_unit|VGA_unit|oVGA_R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~4_combout\ = (\VGA_unit|VGA_red\(3) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_red\(3),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~4_combout\);

-- Location: LCFF_X23_Y32_N7
\VGA_unit|VGA_unit|oVGA_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(3));

-- Location: LCCOMB_X23_Y32_N8
\VGA_unit|VGA_unit|oVGA_R~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~5_combout\ = (\VGA_unit|VGA_red\(4) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red\(4),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~5_combout\);

-- Location: LCFF_X23_Y32_N9
\VGA_unit|VGA_unit|oVGA_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(4));

-- Location: LCCOMB_X23_Y32_N2
\VGA_unit|VGA_unit|oVGA_R~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~6_combout\ = (\VGA_unit|VGA_red\(5) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red\(5),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~6_combout\);

-- Location: LCFF_X23_Y32_N3
\VGA_unit|VGA_unit|oVGA_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(5));

-- Location: LCFF_X21_Y31_N25
\VGA_unit|VGA_sram_data[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(12),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][12]~regout\);

-- Location: LCCOMB_X21_Y31_N24
\VGA_unit|VGA_red~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~9_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[1][4]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[1][4]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][12]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_red~9_combout\);

-- Location: LCCOMB_X22_Y31_N24
\VGA_unit|VGA_red~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~10_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~9_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red~9_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~1_combout\,
	combout => \VGA_unit|VGA_red~10_combout\);

-- Location: LCFF_X22_Y31_N25
\VGA_unit|VGA_red[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(6));

-- Location: LCCOMB_X22_Y32_N8
\VGA_unit|VGA_unit|oVGA_R~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~7_combout\ = (\VGA_unit|VGA_red\(6) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_red\(6),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~7_combout\);

-- Location: LCFF_X22_Y32_N9
\VGA_unit|VGA_unit|oVGA_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~7_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(6));

-- Location: LCFF_X21_Y31_N27
\VGA_unit|VGA_sram_data[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(5),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][5]~regout\);

-- Location: LCFF_X21_Y31_N29
\VGA_unit|VGA_sram_data[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(13),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][13]~regout\);

-- Location: LCCOMB_X21_Y31_N28
\VGA_unit|VGA_red~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~11_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[1][5]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[1][5]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][13]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_red~11_combout\);

-- Location: LCCOMB_X22_Y31_N18
\VGA_unit|VGA_red~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~12_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~11_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red~11_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~1_combout\,
	combout => \VGA_unit|VGA_red~12_combout\);

-- Location: LCFF_X22_Y31_N19
\VGA_unit|VGA_red[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(7));

-- Location: LCCOMB_X23_Y32_N28
\VGA_unit|VGA_unit|oVGA_R~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~8_combout\ = (\VGA_unit|VGA_red\(7) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red\(7),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~8_combout\);

-- Location: LCFF_X23_Y32_N29
\VGA_unit|VGA_unit|oVGA_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~8_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(7));

-- Location: LCCOMB_X22_Y31_N12
\VGA_unit|VGA_red~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~14_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~13_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~13_combout\,
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~14_combout\);

-- Location: LCFF_X22_Y31_N13
\VGA_unit|VGA_red[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~14_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(8));

-- Location: LCCOMB_X23_Y32_N22
\VGA_unit|VGA_unit|oVGA_R~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~9_combout\ = (\VGA_unit|VGA_red\(8) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_red\(8),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~9_combout\);

-- Location: LCFF_X23_Y32_N23
\VGA_unit|VGA_unit|oVGA_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~9_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(8));

-- Location: LCFF_X21_Y31_N3
\VGA_unit|VGA_sram_data[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(7),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][7]~regout\);

-- Location: LCFF_X21_Y31_N5
\VGA_unit|VGA_sram_data[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(15),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][15]~regout\);

-- Location: LCCOMB_X21_Y31_N4
\VGA_unit|VGA_red~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~15_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[1][7]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[1][7]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][15]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_red~15_combout\);

-- Location: LCCOMB_X22_Y31_N14
\VGA_unit|VGA_red~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~16_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~15_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red~15_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~1_combout\,
	combout => \VGA_unit|VGA_red~16_combout\);

-- Location: LCFF_X22_Y31_N15
\VGA_unit|VGA_red[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(9));

-- Location: LCCOMB_X22_Y32_N26
\VGA_unit|VGA_unit|oVGA_R~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~10_combout\ = (\VGA_unit|VGA_red\(9) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_red\(9),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~10_combout\);

-- Location: LCFF_X22_Y32_N27
\VGA_unit|VGA_unit|oVGA_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(9));

-- Location: LCCOMB_X23_Y32_N16
\VGA_unit|VGA_unit|oVGA_G[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[0]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[0]~feeder_combout\);

-- Location: LCFF_X23_Y32_N17
\VGA_unit|VGA_unit|oVGA_G[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[0]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(0));

-- Location: LCCOMB_X23_Y32_N18
\VGA_unit|VGA_unit|oVGA_G[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\);

-- Location: LCFF_X23_Y32_N19
\VGA_unit|VGA_unit|oVGA_G[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G[1]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(1));

-- Location: LCCOMB_X23_Y32_N20
\VGA_unit|VGA_unit|oVGA_G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~0_combout\ = (\VGA_unit|VGA_green\(2) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green\(2),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~0_combout\);

-- Location: LCFF_X23_Y32_N21
\VGA_unit|VGA_unit|oVGA_G[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(2));

-- Location: LCFF_X23_Y31_N15
\VGA_unit|VGA_sram_data[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(1),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][1]~regout\);

-- Location: LCCOMB_X23_Y33_N24
\VGA_unit|VGA_sram_data[0][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][9]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \VGA_unit|VGA_sram_data[0][9]~feeder_combout\);

-- Location: LCCOMB_X23_Y30_N8
\VGA_unit|VGA_sram_data[0][8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][8]~2_combout\ = (\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~regout\) # (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_NEW_PIXEL_ROW_DELAY_5~regout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_3~regout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_sram_data[0][8]~2_combout\);

-- Location: LCFF_X23_Y33_N25
\VGA_unit|VGA_sram_data[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][9]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][9]~regout\);

-- Location: LCCOMB_X23_Y31_N14
\VGA_unit|VGA_green~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~3_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[0][9]~regout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[2][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][1]~regout\,
	datad => \VGA_unit|VGA_sram_data[0][9]~regout\,
	combout => \VGA_unit|VGA_green~3_combout\);

-- Location: LCCOMB_X22_Y31_N2
\VGA_unit|VGA_green~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~4_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_green~3_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green~3_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~1_combout\,
	combout => \VGA_unit|VGA_green~4_combout\);

-- Location: LCFF_X22_Y31_N3
\VGA_unit|VGA_green[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(3));

-- Location: LCCOMB_X22_Y32_N20
\VGA_unit|VGA_unit|oVGA_G~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~1_combout\ = (\VGA_unit|VGA_green\(3) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(3),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~1_combout\);

-- Location: LCFF_X22_Y32_N21
\VGA_unit|VGA_unit|oVGA_G[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(3));

-- Location: LCCOMB_X22_Y32_N22
\VGA_unit|VGA_unit|oVGA_G~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~2_combout\ = (\VGA_unit|VGA_green\(4) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green\(4),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~2_combout\);

-- Location: LCFF_X22_Y32_N23
\VGA_unit|VGA_unit|oVGA_G[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(4));

-- Location: LCFF_X23_Y31_N11
\VGA_unit|VGA_sram_data[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(3),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][3]~regout\);

-- Location: LCCOMB_X23_Y33_N12
\VGA_unit|VGA_sram_data[0][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][11]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \VGA_unit|VGA_sram_data[0][11]~feeder_combout\);

-- Location: LCFF_X23_Y33_N13
\VGA_unit|VGA_sram_data[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][11]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][11]~regout\);

-- Location: LCCOMB_X23_Y31_N10
\VGA_unit|VGA_green~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~7_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[0][11]~regout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	datac => \VGA_unit|VGA_sram_data[2][3]~regout\,
	datad => \VGA_unit|VGA_sram_data[0][11]~regout\,
	combout => \VGA_unit|VGA_green~7_combout\);

-- Location: LCCOMB_X22_Y31_N22
\VGA_unit|VGA_green~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~8_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_green~7_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green~7_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~1_combout\,
	combout => \VGA_unit|VGA_green~8_combout\);

-- Location: LCFF_X22_Y31_N23
\VGA_unit|VGA_green[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~8_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(5));

-- Location: LCCOMB_X23_Y32_N14
\VGA_unit|VGA_unit|oVGA_G~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~3_combout\ = (\VGA_unit|VGA_green\(5) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(5),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~3_combout\);

-- Location: LCFF_X23_Y32_N15
\VGA_unit|VGA_unit|oVGA_G[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(5));

-- Location: LCCOMB_X22_Y31_N0
\VGA_unit|VGA_green~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~10_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_green~9_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~9_combout\,
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green~10_combout\);

-- Location: LCFF_X22_Y31_N1
\VGA_unit|VGA_green[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~10_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(6));

-- Location: LCCOMB_X22_Y32_N0
\VGA_unit|VGA_unit|oVGA_G~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~4_combout\ = (\VGA_unit|VGA_green\(6) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(6),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~4_combout\);

-- Location: LCFF_X22_Y32_N1
\VGA_unit|VGA_unit|oVGA_G[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(6));

-- Location: LCCOMB_X17_Y32_N24
\VGA_unit|VGA_sram_data[0][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][13]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(13),
	combout => \VGA_unit|VGA_sram_data[0][13]~feeder_combout\);

-- Location: LCFF_X17_Y32_N25
\VGA_unit|VGA_sram_data[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][13]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][13]~regout\);

-- Location: LCFF_X21_Y31_N17
\VGA_unit|VGA_sram_data[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(5),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][5]~regout\);

-- Location: LCCOMB_X21_Y31_N16
\VGA_unit|VGA_green~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~11_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][13]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[0][13]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][5]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_green~11_combout\);

-- Location: LCCOMB_X22_Y31_N10
\VGA_unit|VGA_green~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~12_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_green~11_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green~11_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~1_combout\,
	combout => \VGA_unit|VGA_green~12_combout\);

-- Location: LCFF_X22_Y31_N11
\VGA_unit|VGA_green[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~12_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(7));

-- Location: LCCOMB_X22_Y32_N10
\VGA_unit|VGA_unit|oVGA_G~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~5_combout\ = (\VGA_unit|VGA_green\(7) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_green\(7),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~5_combout\);

-- Location: LCFF_X22_Y32_N11
\VGA_unit|VGA_unit|oVGA_G[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(7));

-- Location: LCCOMB_X17_Y32_N18
\VGA_unit|VGA_sram_data[0][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][14]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \VGA_unit|VGA_sram_data[0][14]~feeder_combout\);

-- Location: LCFF_X17_Y32_N19
\VGA_unit|VGA_sram_data[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][14]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][14]~regout\);

-- Location: LCFF_X21_Y31_N19
\VGA_unit|VGA_sram_data[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(6),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][6]~regout\);

-- Location: LCCOMB_X21_Y31_N18
\VGA_unit|VGA_green~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~13_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][14]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[2][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[0][14]~regout\,
	datac => \VGA_unit|VGA_sram_data[2][6]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_green~13_combout\);

-- Location: LCCOMB_X22_Y31_N20
\VGA_unit|VGA_green~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~14_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_green~13_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green~13_combout\,
	datac => \VGA_unit|always0~5_combout\,
	datad => \VGA_unit|VGA_red~1_combout\,
	combout => \VGA_unit|VGA_green~14_combout\);

-- Location: LCFF_X22_Y31_N21
\VGA_unit|VGA_green[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~14_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(8));

-- Location: LCCOMB_X22_Y32_N28
\VGA_unit|VGA_unit|oVGA_G~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~6_combout\ = (\VGA_unit|VGA_green\(8) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(8),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~6_combout\);

-- Location: LCFF_X22_Y32_N29
\VGA_unit|VGA_unit|oVGA_G[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(8));

-- Location: LCCOMB_X22_Y31_N6
\VGA_unit|VGA_green~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~16_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_green~15_combout\ & \VGA_unit|VGA_red~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~15_combout\,
	datab => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green~16_combout\);

-- Location: LCFF_X22_Y31_N7
\VGA_unit|VGA_green[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~16_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(9));

-- Location: LCCOMB_X22_Y32_N6
\VGA_unit|VGA_unit|oVGA_G~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~7_combout\ = (\VGA_unit|VGA_green\(9) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(9),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~7_combout\);

-- Location: LCFF_X22_Y32_N7
\VGA_unit|VGA_unit|oVGA_G[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~7_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(9));

-- Location: LCCOMB_X23_Y32_N0
\VGA_unit|VGA_unit|oVGA_B[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\ = \VGA_unit|VGA_unit|oVGA_R~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\);

-- Location: LCFF_X23_Y32_N1
\VGA_unit|VGA_unit|oVGA_B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B[0]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(0));

-- Location: LCFF_X23_Y32_N27
\VGA_unit|VGA_unit|oVGA_B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(1));

-- Location: LCFF_X17_Y32_N15
\VGA_unit|VGA_sram_data[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(0),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][0]~regout\);

-- Location: LCFF_X22_Y30_N1
\VGA_unit|VGA_sram_data[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(8),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][8]~regout\);

-- Location: LCCOMB_X22_Y30_N0
\VGA_unit|VGA_blue~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~2_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][0]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[0][0]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][8]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~2_combout\);

-- Location: LCCOMB_X22_Y30_N16
\VGA_unit|VGA_blue~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~3_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datab => \VGA_unit|VGA_blue~2_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~3_combout\);

-- Location: LCFF_X22_Y30_N17
\VGA_unit|VGA_blue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(2));

-- Location: LCCOMB_X22_Y32_N16
\VGA_unit|VGA_unit|oVGA_B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~0_combout\ = (\VGA_unit|VGA_blue\(2) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_blue\(2),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~0_combout\);

-- Location: LCFF_X22_Y32_N17
\VGA_unit|VGA_unit|oVGA_B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~0_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(2));

-- Location: LCCOMB_X22_Y32_N2
\VGA_unit|VGA_unit|oVGA_B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~1_combout\ = (\VGA_unit|VGA_blue\(3) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(3),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~1_combout\);

-- Location: LCFF_X22_Y32_N3
\VGA_unit|VGA_unit|oVGA_B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~1_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(3));

-- Location: LCCOMB_X22_Y32_N4
\VGA_unit|VGA_unit|oVGA_B~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~2_combout\ = (\VGA_unit|VGA_blue\(4) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(4),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~2_combout\);

-- Location: LCFF_X22_Y32_N5
\VGA_unit|VGA_unit|oVGA_B[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~2_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(4));

-- Location: LCFF_X22_Y30_N23
\VGA_unit|VGA_sram_data[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(11),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][11]~regout\);

-- Location: LCCOMB_X22_Y30_N22
\VGA_unit|VGA_blue~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~8_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][3]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[0][3]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][11]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~8_combout\);

-- Location: LCCOMB_X22_Y30_N6
\VGA_unit|VGA_blue~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~9_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datab => \VGA_unit|VGA_blue~8_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~9_combout\);

-- Location: LCFF_X22_Y30_N7
\VGA_unit|VGA_blue[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~9_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(5));

-- Location: LCCOMB_X22_Y32_N14
\VGA_unit|VGA_unit|oVGA_B~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~3_combout\ = (\VGA_unit|VGA_blue\(5) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_blue\(5),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~3_combout\);

-- Location: LCFF_X22_Y32_N15
\VGA_unit|VGA_unit|oVGA_B[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~3_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(5));

-- Location: LCCOMB_X22_Y32_N24
\VGA_unit|VGA_unit|oVGA_B~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~4_combout\ = (\VGA_unit|VGA_blue\(6) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(6),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~4_combout\);

-- Location: LCFF_X22_Y32_N25
\VGA_unit|VGA_unit|oVGA_B[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~4_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(6));

-- Location: LCFF_X22_Y30_N27
\VGA_unit|VGA_sram_data[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(13),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][13]~regout\);

-- Location: LCCOMB_X22_Y30_N26
\VGA_unit|VGA_blue~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~12_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][5]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[0][5]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][13]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~12_combout\);

-- Location: LCCOMB_X22_Y30_N10
\VGA_unit|VGA_blue~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~13_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datab => \VGA_unit|VGA_blue~12_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~13_combout\);

-- Location: LCFF_X22_Y30_N11
\VGA_unit|VGA_blue[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~13_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(7));

-- Location: LCCOMB_X22_Y32_N18
\VGA_unit|VGA_unit|oVGA_B~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~5_combout\ = (\VGA_unit|VGA_blue\(7) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_blue\(7),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~5_combout\);

-- Location: LCFF_X22_Y32_N19
\VGA_unit|VGA_unit|oVGA_B[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~5_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(7));

-- Location: LCCOMB_X12_Y30_N28
\VGA_unit|VGA_sram_data[0][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][6]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \VGA_unit|VGA_sram_data[0][6]~feeder_combout\);

-- Location: LCFF_X12_Y30_N29
\VGA_unit|VGA_sram_data[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[0][6]~feeder_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][6]~regout\);

-- Location: LCFF_X22_Y30_N5
\VGA_unit|VGA_sram_data[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(14),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][14]~regout\);

-- Location: LCCOMB_X22_Y30_N4
\VGA_unit|VGA_blue~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~14_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][6]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_sram_data[0][6]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][14]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~14_combout\);

-- Location: LCCOMB_X22_Y30_N20
\VGA_unit|VGA_blue~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~15_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datac => \VGA_unit|VGA_blue~14_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~15_combout\);

-- Location: LCFF_X22_Y30_N21
\VGA_unit|VGA_blue[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~15_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(8));

-- Location: LCCOMB_X22_Y32_N12
\VGA_unit|VGA_unit|oVGA_B~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~6_combout\ = (\VGA_unit|VGA_blue\(8) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_blue\(8),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~6_combout\);

-- Location: LCFF_X22_Y32_N13
\VGA_unit|VGA_unit|oVGA_B[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~6_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(8));

-- Location: LCFF_X22_Y30_N31
\VGA_unit|VGA_sram_data[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(15),
	aclr => \resetn~0clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][15]~regout\);

-- Location: LCCOMB_X22_Y30_N30
\VGA_unit|VGA_blue~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~16_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & (\VGA_unit|VGA_sram_data[0][7]~regout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\ & ((\VGA_unit|VGA_sram_data[1][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[0][7]~regout\,
	datac => \VGA_unit|VGA_sram_data[1][15]~regout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_FETCH_PIXEL_DATA_2~regout\,
	combout => \VGA_unit|VGA_blue~16_combout\);

-- Location: LCCOMB_X22_Y30_N14
\VGA_unit|VGA_blue~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~17_combout\ = (\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~1_combout\ & \VGA_unit|VGA_blue~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~1_combout\,
	datab => \VGA_unit|VGA_blue~16_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~17_combout\);

-- Location: LCFF_X22_Y30_N15
\VGA_unit|VGA_blue[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~17_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(9));

-- Location: LCCOMB_X22_Y32_N30
\VGA_unit|VGA_unit|oVGA_B~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~7_combout\ = (\VGA_unit|VGA_blue\(9) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_blue\(9),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~7_combout\);

-- Location: LCFF_X22_Y32_N31
\VGA_unit|VGA_unit|oVGA_B[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~7_combout\,
	aclr => \resetn~0clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(9));

-- Location: LCCOMB_X44_Y22_N8
\M1_unit|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector64~0_combout\ = (\M1_unit|SRAM_address[14]~3_combout\ & ((\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|Y_address\(0))) # (!\M1_unit|SRAM_address[14]~2_combout\ & ((\M1_unit|U_address\(0)))))) # (!\M1_unit|SRAM_address[14]~3_combout\ & 
-- (((\M1_unit|SRAM_address[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address[14]~3_combout\,
	datab => \M1_unit|Y_address\(0),
	datac => \M1_unit|SRAM_address[14]~2_combout\,
	datad => \M1_unit|U_address\(0),
	combout => \M1_unit|Selector64~0_combout\);

-- Location: LCCOMB_X42_Y24_N6
\M1_unit|Selector64\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector64~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector64~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector64~0_combout\ & ((\M1_unit|V_address\(0)))) # (!\M1_unit|Selector64~0_combout\ & 
-- (\M1_unit|RGB_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|RGB_address\(0),
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|V_address\(0),
	datad => \M1_unit|Selector64~0_combout\,
	combout => \M1_unit|Selector64~combout\);

-- Location: LCFF_X42_Y24_N7
\M1_unit|SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector64~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(0));

-- Location: LCCOMB_X41_Y20_N10
\SRAM_address[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[0]~feeder_combout\ = \M1_unit|SRAM_address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|SRAM_address\(0),
	combout => \SRAM_address[0]~feeder_combout\);

-- Location: LCFF_X41_Y20_N11
\SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[0]~feeder_combout\,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(0));

-- Location: LCCOMB_X41_Y20_N22
\SRAM_unit|SRAM_ADDRESS_O[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[0]~feeder_combout\ = SRAM_address(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(0),
	combout => \SRAM_unit|SRAM_ADDRESS_O[0]~feeder_combout\);

-- Location: LCFF_X41_Y20_N23
\SRAM_unit|SRAM_ADDRESS_O[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[0]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(0));

-- Location: LCFF_X42_Y21_N17
\M1_unit|RGB_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[1]~20_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(1));

-- Location: LCCOMB_X43_Y22_N2
\M1_unit|Selector63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector63~0_combout\ = (\M1_unit|SRAM_address[14]~2_combout\ & (((\M1_unit|Y_address\(1)) # (!\M1_unit|SRAM_address[14]~3_combout\)))) # (!\M1_unit|SRAM_address[14]~2_combout\ & (\M1_unit|U_address\(1) & 
-- ((\M1_unit|SRAM_address[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|U_address\(1),
	datab => \M1_unit|SRAM_address[14]~2_combout\,
	datac => \M1_unit|Y_address\(1),
	datad => \M1_unit|SRAM_address[14]~3_combout\,
	combout => \M1_unit|Selector63~0_combout\);

-- Location: LCCOMB_X42_Y24_N8
\M1_unit|Selector63\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector63~combout\ = (\M1_unit|SRAM_address[14]~1_combout\ & (((\M1_unit|Selector63~0_combout\)))) # (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|Selector63~0_combout\ & (\M1_unit|V_address\(1))) # (!\M1_unit|Selector63~0_combout\ & 
-- ((\M1_unit|RGB_address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|V_address\(1),
	datab => \M1_unit|RGB_address\(1),
	datac => \M1_unit|SRAM_address[14]~1_combout\,
	datad => \M1_unit|Selector63~0_combout\,
	combout => \M1_unit|Selector63~combout\);

-- Location: LCFF_X42_Y24_N9
\M1_unit|SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector63~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(1));

-- Location: LCCOMB_X41_Y20_N12
\SRAM_address[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[1]~feeder_combout\ = \M1_unit|SRAM_address\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|SRAM_address\(1),
	combout => \SRAM_address[1]~feeder_combout\);

-- Location: LCFF_X41_Y20_N13
\SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[1]~feeder_combout\,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(1));

-- Location: LCCOMB_X41_Y20_N0
\SRAM_unit|SRAM_ADDRESS_O[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[1]~feeder_combout\ = SRAM_address(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(1),
	combout => \SRAM_unit|SRAM_ADDRESS_O[1]~feeder_combout\);

-- Location: LCFF_X41_Y20_N1
\SRAM_unit|SRAM_ADDRESS_O[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[1]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(1));

-- Location: LCCOMB_X42_Y24_N2
\M1_unit|Selector62\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector62~combout\ = (\M1_unit|Selector62~0_combout\ & ((\M1_unit|SRAM_address[14]~1_combout\) # ((\M1_unit|V_address\(2))))) # (!\M1_unit|Selector62~0_combout\ & (!\M1_unit|SRAM_address[14]~1_combout\ & (\M1_unit|RGB_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Selector62~0_combout\,
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|RGB_address\(2),
	datad => \M1_unit|V_address\(2),
	combout => \M1_unit|Selector62~combout\);

-- Location: LCFF_X42_Y24_N3
\M1_unit|SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector62~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(2));

-- Location: LCCOMB_X41_Y24_N6
\SRAM_address[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[2]~feeder_combout\ = \M1_unit|SRAM_address\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|SRAM_address\(2),
	combout => \SRAM_address[2]~feeder_combout\);

-- Location: LCFF_X41_Y24_N7
\SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[2]~feeder_combout\,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(2));

-- Location: LCCOMB_X41_Y24_N0
\SRAM_unit|SRAM_ADDRESS_O[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[2]~feeder_combout\ = SRAM_address(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(2),
	combout => \SRAM_unit|SRAM_ADDRESS_O[2]~feeder_combout\);

-- Location: LCFF_X41_Y24_N1
\SRAM_unit|SRAM_ADDRESS_O[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[2]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(2));

-- Location: LCFF_X42_Y24_N21
\M1_unit|V_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|V_address[3]~24_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|V_address[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|V_address\(3));

-- Location: LCFF_X42_Y21_N21
\M1_unit|RGB_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|RGB_address[3]~24_combout\,
	sdata => \~GND~combout\,
	sload => \M1_unit|ALT_INV_state.S_M1_IDLE~regout\,
	ena => \M1_unit|RGB_address[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|RGB_address\(3));

-- Location: LCCOMB_X42_Y24_N4
\M1_unit|Selector61\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector61~combout\ = (\M1_unit|Selector61~0_combout\ & ((\M1_unit|SRAM_address[14]~1_combout\) # ((\M1_unit|V_address\(3))))) # (!\M1_unit|Selector61~0_combout\ & (!\M1_unit|SRAM_address[14]~1_combout\ & ((\M1_unit|RGB_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Selector61~0_combout\,
	datab => \M1_unit|SRAM_address[14]~1_combout\,
	datac => \M1_unit|V_address\(3),
	datad => \M1_unit|RGB_address\(3),
	combout => \M1_unit|Selector61~combout\);

-- Location: LCFF_X42_Y24_N5
\M1_unit|SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector61~combout\,
	ena => \M1_unit|SRAM_address[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(3));

-- Location: LCCOMB_X41_Y24_N16
\SRAM_address[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[3]~feeder_combout\ = \M1_unit|SRAM_address\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|SRAM_address\(3),
	combout => \SRAM_address[3]~feeder_combout\);

-- Location: LCFF_X41_Y24_N17
\SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[3]~feeder_combout\,
	ena => \SRAM_address[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SRAM_address(3));

-- Location: LCFF_X41_Y24_N19
\SRAM_unit|SRAM_ADDRESS_O[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => SRAM_address(3),
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(3));

-- Location: LCFF_X42_Y32_N7
\SRAM_unit|SRAM_ADDRESS_O[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => SRAM_address(4),
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(4));

-- Location: LCCOMB_X42_Y32_N16
\SRAM_unit|SRAM_ADDRESS_O[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[5]~feeder_combout\ = SRAM_address(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(5),
	combout => \SRAM_unit|SRAM_ADDRESS_O[5]~feeder_combout\);

-- Location: LCFF_X42_Y32_N17
\SRAM_unit|SRAM_ADDRESS_O[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[5]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(5));

-- Location: LCFF_X42_Y32_N27
\SRAM_unit|SRAM_ADDRESS_O[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => SRAM_address(6),
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(6));

-- Location: LCCOMB_X42_Y32_N12
\SRAM_unit|SRAM_ADDRESS_O[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[7]~feeder_combout\ = SRAM_address(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(7),
	combout => \SRAM_unit|SRAM_ADDRESS_O[7]~feeder_combout\);

-- Location: LCFF_X42_Y32_N13
\SRAM_unit|SRAM_ADDRESS_O[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[7]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(7));

-- Location: LCFF_X47_Y32_N5
\SRAM_unit|SRAM_ADDRESS_O[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => SRAM_address(8),
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(8));

-- Location: LCCOMB_X47_Y32_N22
\SRAM_unit|SRAM_ADDRESS_O[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[9]~feeder_combout\ = SRAM_address(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(9),
	combout => \SRAM_unit|SRAM_ADDRESS_O[9]~feeder_combout\);

-- Location: LCFF_X47_Y32_N23
\SRAM_unit|SRAM_ADDRESS_O[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[9]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(9));

-- Location: LCCOMB_X47_Y32_N24
\SRAM_unit|SRAM_ADDRESS_O[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[10]~feeder_combout\ = SRAM_address(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(10),
	combout => \SRAM_unit|SRAM_ADDRESS_O[10]~feeder_combout\);

-- Location: LCFF_X47_Y32_N25
\SRAM_unit|SRAM_ADDRESS_O[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[10]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(10));

-- Location: LCCOMB_X47_Y32_N26
\SRAM_unit|SRAM_ADDRESS_O[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[11]~feeder_combout\ = SRAM_address(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(11),
	combout => \SRAM_unit|SRAM_ADDRESS_O[11]~feeder_combout\);

-- Location: LCFF_X47_Y32_N27
\SRAM_unit|SRAM_ADDRESS_O[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[11]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(11));

-- Location: LCFF_X41_Y20_N19
\SRAM_unit|SRAM_ADDRESS_O[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => SRAM_address(12),
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(12));

-- Location: LCCOMB_X41_Y20_N4
\SRAM_unit|SRAM_ADDRESS_O[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[13]~feeder_combout\ = SRAM_address(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(13),
	combout => \SRAM_unit|SRAM_ADDRESS_O[13]~feeder_combout\);

-- Location: LCFF_X41_Y20_N5
\SRAM_unit|SRAM_ADDRESS_O[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[13]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(13));

-- Location: LCCOMB_X41_Y20_N30
\SRAM_unit|SRAM_ADDRESS_O[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[14]~feeder_combout\ = SRAM_address(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(14),
	combout => \SRAM_unit|SRAM_ADDRESS_O[14]~feeder_combout\);

-- Location: LCFF_X41_Y20_N31
\SRAM_unit|SRAM_ADDRESS_O[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[14]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(14));

-- Location: LCCOMB_X41_Y20_N24
\SRAM_unit|SRAM_ADDRESS_O[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[15]~feeder_combout\ = SRAM_address(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(15),
	combout => \SRAM_unit|SRAM_ADDRESS_O[15]~feeder_combout\);

-- Location: LCFF_X41_Y20_N25
\SRAM_unit|SRAM_ADDRESS_O[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[15]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(15));

-- Location: LCCOMB_X47_Y32_N20
\SRAM_unit|SRAM_ADDRESS_O[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[16]~feeder_combout\ = SRAM_address(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SRAM_address(16),
	combout => \SRAM_unit|SRAM_ADDRESS_O[16]~feeder_combout\);

-- Location: LCFF_X47_Y32_N21
\SRAM_unit|SRAM_ADDRESS_O[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[16]~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(16));

-- Location: LCFF_X47_Y32_N15
\SRAM_unit|SRAM_ADDRESS_O[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => SRAM_address(17),
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	sload => VCC,
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

-- Location: LCCOMB_X1_Y28_N16
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

-- Location: LCFF_X1_Y28_N17
\SRAM_unit|SRAM_CE_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_CE_N_O~feeder_combout\,
	aclr => \SWITCH_I[17]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_CE_N_O~regout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(0));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(2));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(3));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => SRAM_address(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(4));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(5));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => ALT_INV_SRAM_address(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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


