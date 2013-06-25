library verilog;
use verilog.vl_types.all;
entity port_io_interface is
    generic(
        state_reset     : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        port0_dir       : vl_notype;
        port0_read      : vl_notype;
        port0_write     : vl_notype;
        port1_dir       : vl_notype;
        port1_read      : vl_notype;
        port1_write     : vl_notype;
        port2_dir       : vl_notype;
        port2_read      : vl_notype;
        port2_write     : vl_notype;
        last            : vl_notype
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        port0_d         : in     vl_logic_vector(7 downto 0);
        port1_d         : in     vl_logic_vector(7 downto 0);
        port2_d         : in     vl_logic_vector(7 downto 0);
        port3_d         : in     vl_logic_vector(7 downto 0);
        port4_d         : in     vl_logic_vector(7 downto 0);
        port5_d         : in     vl_logic_vector(7 downto 0);
        port6_d         : in     vl_logic_vector(7 downto 0);
        port7_d         : in     vl_logic_vector(7 downto 0);
        port8_d         : in     vl_logic_vector(7 downto 0);
        port9_d         : in     vl_logic_vector(7 downto 0);
        port0           : inout  vl_logic_vector(7 downto 0);
        port1           : inout  vl_logic_vector(7 downto 0);
        port2           : inout  vl_logic_vector(7 downto 0);
        port3           : inout  vl_logic_vector(7 downto 0);
        port4           : inout  vl_logic_vector(7 downto 0);
        port5           : inout  vl_logic_vector(7 downto 0);
        port6           : inout  vl_logic_vector(7 downto 0);
        port7           : inout  vl_logic_vector(7 downto 0);
        port8           : inout  vl_logic_vector(7 downto 0);
        port9           : inout  vl_logic_vector(7 downto 0);
        port_clk        : out    vl_logic;
        port_rst        : out    vl_logic;
        data            : inout  vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of state_reset : constant is 1;
    attribute mti_svvh_generic_type of port0_dir : constant is 3;
    attribute mti_svvh_generic_type of port0_read : constant is 3;
    attribute mti_svvh_generic_type of port0_write : constant is 3;
    attribute mti_svvh_generic_type of port1_dir : constant is 3;
    attribute mti_svvh_generic_type of port1_read : constant is 3;
    attribute mti_svvh_generic_type of port1_write : constant is 3;
    attribute mti_svvh_generic_type of port2_dir : constant is 3;
    attribute mti_svvh_generic_type of port2_read : constant is 3;
    attribute mti_svvh_generic_type of port2_write : constant is 3;
    attribute mti_svvh_generic_type of last : constant is 3;
end port_io_interface;
