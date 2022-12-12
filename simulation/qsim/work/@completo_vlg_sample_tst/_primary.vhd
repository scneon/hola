library verilog;
use verilog.vl_types.all;
entity Completo_vlg_sample_tst is
    port(
        areset          : in     vl_logic;
        inclk0          : in     vl_logic;
        N               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Completo_vlg_sample_tst;
