`include "uvm_macros.svh"
import uvm_pkg::*;

class dist_mem_gen_rw_sequence extends uvm_sequence #(dist_mem_gen_seq_items1);

    `uvm_object_utils(dist_mem_gen_rw_sequence)


    bit we;               
    bit qspo_ce;                
    int a;                
    int d;                

    function new(input string name = "dist_mem_gen_rw_sequence");
        super.new(name);
    endfunction : new

    virtual task body();
        dist_mem_gen_seq_items1 rw_item;
        rw_item = dist_mem_gen_seq_items1::type_id::create("rw_item");

        start_item(rw_item); 
        
        
        rw_item.a = a;
        rw_item.d = d;
        rw_item.we = we;
        rw_item.qspo_ce = qspo_ce;


        `uvm_info("dist_mem_gen_rw_sequence", $sformatf("Before finish_item: addr=%0h, data=%0h, we=%0h", a, d, we), UVM_NONE);

        
        finish_item(rw_item);
    endtask : body

endclass : dist_mem_gen_rw_sequence
