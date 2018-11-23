library verilog;
use verilog.vl_types.all;
entity FS is
    port(
        CLOCK_50_I      : in     vl_logic;
        Resetn          : in     vl_logic;
        FS_done         : out    vl_logic;
        FS_start        : in     vl_logic;
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_read_data  : in     vl_logic_vector(15 downto 0);
        FS_write_data   : out    vl_logic_vector(31 downto 0);
        FS_write_address: out    vl_logic_vector(6 downto 0);
        FS_write_enable : out    vl_logic
    );
end FS;
