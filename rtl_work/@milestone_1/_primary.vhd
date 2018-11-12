library verilog;
use verilog.vl_types.all;
entity Milestone_1 is
    port(
        CLOCK_50_I      : in     vl_logic;
        Resetn          : in     vl_logic;
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_write_data : out    vl_logic_vector(15 downto 0);
        SRAM_we_n       : out    vl_logic;
        SRAM_read_data  : in     vl_logic_vector(15 downto 0);
        M1_done         : out    vl_logic;
        M1_start        : in     vl_logic
    );
end Milestone_1;
