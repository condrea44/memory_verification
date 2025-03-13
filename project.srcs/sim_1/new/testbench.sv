`timescale 1ns / 1ps
`include "uvm_macros.svh"
`include "includes.sv"
import uvm_pkg::*;


module testbench();
    logic [5:0] a;
    logic [15:0] d;
    logic clk;
    logic we;
    logic qspo_ce;
    logic [15:0] spo;
    logic [15:0] qspo;
    
    dist_mem_gen_wrapper dut_inst(.*);
    
    dist_mem_gen_intf1 mem_intf();
    
    initial begin 
        clk = 0;
        forever #10 clk = ~clk;
    end 
    
    assign mem_intf.spo = spo;
    assign mem_intf.qspo = qspo;
    assign a = mem_intf.a;
    assign d = mem_intf.d;
    assign we = mem_intf.we;
    assign qspo_ce= mem_intf.qspo_ce;
    assign mem_intf.clk = clk;
    
    
    initial begin
        uvm_config_db#(virtual dist_mem_gen_intf1)::set(null, "", "dist_mem_gen_intf1", mem_intf);
        fork
        begin
            run_test("rw_test");
        end
        
        begin 
            automatic int clkLimit=100;
            repeat(clkLimit)@(posedge mem_intf.clk);  
            `uvm_fatal("SIM_END", $sformatf("Reached the simulation limit of %0d clock cycles", clkLimit))  
        end
        
        join_any 
    end
    
endmodule






