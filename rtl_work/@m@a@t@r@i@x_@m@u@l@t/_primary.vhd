library verilog;
use verilog.vl_types.all;
entity MATRIX_MULT is
    port(
        CLOCK_50_I      : in     vl_logic;
        Resetn          : in     vl_logic;
        MM_start        : in     vl_logic;
        MM_done         : out    vl_logic;
        read_data_R0    : in     vl_logic;
        write_data_R0   : out    vl_logic;
        rw_address_R0   : out    vl_logic;
        write_enable_R0 : out    vl_logic_vector(1 downto 0);
        read_data_R1    : in     vl_logic;
        write_data_R1   : out    vl_logic_vector(31 downto 0);
        rw_address_R1   : out    vl_logic_vector(6 downto 0);
        write_enable_R1 : out    vl_logic;
        read_data_R2    : in     vl_logic;
        read_address_R2 : out    vl_logic
    );
end MATRIX_MULT;
