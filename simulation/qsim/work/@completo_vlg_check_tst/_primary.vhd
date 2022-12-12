library verilog;
use verilog.vl_types.all;
entity Completo_vlg_check_tst is
    port(
        c0              : in     vl_logic;
        LEDZ0           : in     vl_logic;
        LEDZ1           : in     vl_logic;
        LEDZ2           : in     vl_logic;
        lock            : in     vl_logic;
        Z0              : in     vl_logic;
        Z1              : in     vl_logic;
        Z2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Completo_vlg_check_tst;
