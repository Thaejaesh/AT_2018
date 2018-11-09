library verilog;
use verilog.vl_types.all;
entity FIR is
    port(
        CLOCK_50_I      : in     vl_logic;
        enable_U        : in     vl_logic;
        double_enable_U : in     vl_logic;
        enable_V        : in     vl_logic;
        read_U_0        : in     vl_logic;
        read_V_0        : in     vl_logic;
        resetn          : in     vl_logic;
        line_start      : in     vl_logic;
        line_end        : in     vl_logic;
        common_case     : in     vl_logic;
        SRAM_read_data  : in     vl_logic_vector(15 downto 0);
        cycle           : in     vl_logic;
        common_U        : in     vl_logic;
        FIR_BUFF_U      : out    vl_logic_vector(31 downto 0);
        FIR_BUFF_V      : out    vl_logic_vector(31 downto 0);
        even_U          : out    vl_logic_vector(31 downto 0);
        even_V          : out    vl_logic_vector(31 downto 0)
    );
end FIR;
