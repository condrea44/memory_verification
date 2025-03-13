`include "uvm_macros.svh"
import uvm_pkg::*;

class dist_mem_gen_seq_items1 extends uvm_sequence_item;

    logic [15:0] spo, qspo; 
    rand logic [15:0] d; 
    rand logic we, qspo_ce;
    rand logic [5:0] a;
    
    `uvm_object_utils(dist_mem_gen_seq_items1)

    
    function new(input string name="dist_mem_gen_seq_items1");
        super.new(name); 
        
        spo = 0;
        qspo = 0;
        d = 0;
        we = 0;
        a = 0;
        qspo_ce = 0;
    endfunction : new
    
    function string convert2string();
        string outputString = "";
        
        outputString = $sformatf("%s\n\t * spo=%0h", outputString, spo);
        outputString = $sformatf("%s\n\t * qspo=%0h", outputString, qspo);
        outputString = $sformatf("%s\n\t * a=%0h", outputString, a);
        outputString = $sformatf("%s\n\t * we=%0h", outputString, we);
        outputString = $sformatf("%s\n\t * d=%0h", outputString, d);
        outputString = $sformatf("%s\n\t * qspo_ce=%0h", outputString, qspo_ce);
      
        return outputString;
    endfunction
    
endclass : dist_mem_gen_seq_items1    