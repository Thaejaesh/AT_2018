library verilog;
use verilog.vl_types.all;
entity RGB_Converter is
    port(
        CLOCK_50_I      : in     vl_logic;
        enable_RGB      : in     vl_logic;
        resetn          : in     vl_logic;
        Y_in_RGB        : in     vl_logic_vector(31 downto 0);
        U_in_RGB        : in     vl_logic_vector(31 downto 0);
        V_in_RGB        : in     vl_logic_vector(31 downto 0);
        R_buff          : out    vl_logic_vector(7 downto 0);
        G_buff          : out    vl_logic_vector(7 downto 0);
        B_buff          : out    vl_logic_vector(7 downto 0);
        R_buffer        : out    vl_logic_vector(7 downto 0);
        G_buffer        : out    vl_logic_vector(7 downto 0);
        B_buffer        : out    vl_logic_vector(7 downto 0)
    );
end RGB_Converter;
