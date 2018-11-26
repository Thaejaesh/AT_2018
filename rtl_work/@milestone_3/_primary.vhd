library verilog;
use verilog.vl_types.all;
entity Milestone_3 is
    port(
        CLOCK_50_I      : in     vl_logic;
        Resetn          : in     vl_logic;
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_write_data : out    vl_logic_vector(15 downto 0);
        SRAM_read_data  : in     vl_logic_vector(15 downto 0);
        SRAM_we_n       : out    vl_logic;
        M3_memory_end   : out    vl_logic;
        RAM3_write_data : out    vl_logic_vector(31 downto 0);
        RAM3_read_data  : out    vl_logic;
        RAM3_address_in : in     vl_logic_vector(6 downto 0);
        RAM3_address    : out    vl_logic_vector(6 downto 0);
        RAM3_write_enable: out    vl_logic;
        M3_done         : out    vl_logic;
        M3_start        : in     vl_logic
    );
end Milestone_3;
