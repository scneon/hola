library verilog;
use verilog.vl_types.all;
entity Completo is
    port(
        Z2              : out    vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        N               : in     vl_logic;
        Z1              : out    vl_logic;
        Z0              : out    vl_logic;
        LEDZ2           : out    vl_logic;
        LEDZ1           : out    vl_logic;
        LEDZ0           : out    vl_logic;
        c0              : out    vl_logic;
        lock            : out    vl_logic
    );
end Completo;
