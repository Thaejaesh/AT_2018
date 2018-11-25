`ifndef DEFINE_STATE

// This defines the states

typedef enum logic [4:0] {
	S_M2_START,
	
	S_FS,
	S_CT,
	S_CS,
	S_WS,
	
	S_M2_IDLE
}M2_state_type;

typedef enum logic [4:0] {
	
	S_FS_START,
	S_FS_IDLE,
	S_FS_LI_1,
	S_FS_LI_2,
	S_FS_LI_3,
	S_FS_COMMON_CASE,
	S_FS_LO_1,
	S_FS_LO_2,	
	S_FS_LO_3	
	
}FS_state_type;

typedef enum logic [4:0] {
	
	S_MM_START,
	S_MM_IDLE,
	S_MM_LI_0,
	S_MM_LI_1,		
	S_MM_CC,
	S_MM_LO_0,
	S_MM_LO_1,
	S_MM_LO_2
	
	
}MATRIX_MULT_state_type;

typedef enum logic [3:0] {
	
	S_WS_START,
	S_WS_IDLE, 
	S_WS_LI_1,
	S_WS_LI_2,
	S_WS_COMMON_CASE,
	S_WS_LO_1,
	S_WS_LO_2,
	S_WS_LO_3
	
}WS_state_type;

typedef enum logic [4:0] {
	S_M1_START,
	S_START_LINE_0,
	S_START_LINE_1,
	S_START_LINE_2,
	S_START_LINE_3,
	S_START_LINE_4,
	S_START_LINE_5,
	S_START_LINE_6,
	S_START_LINE_7,
	S_START_LINE_8,
	S_START_LINE_9,
	
	S_RUN_0,
	S_RUN_1,
	S_RUN_2,
	S_RUN_3,
	S_RUN_4,
	S_RUN_5,
	
	S_END_LINE_0,
	S_END_LINE_1,
	S_END_LINE_2,
	S_END_LINE_3,
	S_END_LINE_4,
	S_END_LINE_5,
	S_END_LINE_6,
	S_END_LINE_7,
	
	S_M1_IDLE
} M1_state_type;

typedef enum logic [1:0] {
	S_UART_IDLE,
	S_ENABLE_UART_RX,
	S_WAIT_UART_RX
} UART_state_type;

typedef enum logic [2:0] {
	
	S_TOP_IDLE,
	S_TOP_VGA,
	S_TOP_UART,
	S_TOP_M1,
	S_TOP_M2,
	S_TOP_M3
	
} Top_Level_FSM_state_type;

typedef enum logic [1:0] {
	S_RXC_IDLE,
	S_RXC_SYNC,
	S_RXC_ASSEMBLE_DATA,
	S_RXC_STOP_BIT
} RX_Controller_state_type;

typedef enum logic [2:0] {
	S_US_IDLE,
	S_US_STRIP_FILE_HEADER_1,
	S_US_STRIP_FILE_HEADER_2,
	S_US_START_FIRST_BYTE_RECEIVE,
	S_US_WRITE_FIRST_BYTE,
	S_US_START_SECOND_BYTE_RECEIVE,
	S_US_WRITE_SECOND_BYTE
} UART_SRAM_state_type;

typedef enum logic [3:0] {
	S_VS_WAIT_NEW_PIXEL_ROW,
	S_VS_NEW_PIXEL_ROW_DELAY_1,
	S_VS_NEW_PIXEL_ROW_DELAY_2,
	S_VS_NEW_PIXEL_ROW_DELAY_3,
	S_VS_NEW_PIXEL_ROW_DELAY_4,
	S_VS_NEW_PIXEL_ROW_DELAY_5,
	S_VS_FETCH_PIXEL_DATA_0,
	S_VS_FETCH_PIXEL_DATA_1,
	S_VS_FETCH_PIXEL_DATA_2,
	S_VS_FETCH_PIXEL_DATA_3
} VGA_SRAM_state_type;


`define DEFINE_STATE 1
`endif
