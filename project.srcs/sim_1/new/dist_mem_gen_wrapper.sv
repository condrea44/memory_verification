module dist_mem_gen_wrapper(
    input logic [5:0] a,
    input logic [15:0] d,
    input logic clk,
    input logic we,
    input logic qspo_ce,
    output logic [15:0] spo,
    output logic [15:0] qspo
    );
    
    dist_mem_gen_0 inst_dist_mem_gen_0(
        .a(a),
        .d(d),
        .clk(clk),
        .we(we),
        .qspo_ce(qspo_ce),
        .spo(spo),        
        .qspo(qspo)
    );
    
    
endmodule
