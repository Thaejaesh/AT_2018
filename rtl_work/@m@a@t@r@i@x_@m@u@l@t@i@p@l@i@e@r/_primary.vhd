library verilog;
use verilog.vl_types.all;
entity MATRIX_MULTIPLIER is
    port(
        CLOCK_50_I      : in     vl_logic;
        Resetn          : in     vl_logic;
        MM_start        : in     vl_logic;
        MM_done         : out    vl_logic;
        T_S             : in     vl_logic;
        A_read_data     : in     vl_logic_vector(31 downto 0);
        A_read_address  : out    vl_logic_vector(6 downto 0);
        A_write_enable  : out    vl_logic;
        C_read_data     : in     vl_logic;
        C_read_address  : out    vl_logic;
        P_write_data    : out    vl_logic_vector(31 downto 0);
        P_write_address : out    vl_logic_vector(6 downto 0);
        P_write_enable  : out    vl_logic
    );
end MATRIX_MULTIPLIER;
