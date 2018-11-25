library verilog;
use verilog.vl_types.all;
entity WS is
    port(
        CLOCK_50_I      : in     vl_logic;
        Resetn          : in     vl_logic;
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_we_n       : out    vl_logic;
        SRAM_write_data : out    vl_logic_vector(15 downto 0);
        WS_done         : out    vl_logic;
        WS_start        : in     vl_logic;
        S_read_data     : in     vl_logic_vector(31 downto 0);
        S_read_address  : out    vl_logic_vector(6 downto 0);
        S_write_enable  : out    vl_logic
    );
end WS;
