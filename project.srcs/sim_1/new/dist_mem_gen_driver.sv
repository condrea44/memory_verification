`include "uvm_macros.svh"

import uvm_pkg::*;

class dist_mem_gen_driver extends uvm_driver#(dist_mem_gen_seq_items1);

    `uvm_component_utils(dist_mem_gen_driver)
    
    function new(input string name = "", uvm_component parent = null);
        super.new(name,parent);
    endfunction : new
    
    virtual task run_phase(uvm_phase phase);
        dist_mem_gen_seq_items1 dist_mem_gen_item;
        virtual dist_mem_gen_intf1 mem_intf;
        uvm_config_db#(virtual dist_mem_gen_intf1)::get(null, "", "dist_mem_gen_intf1", mem_intf);
        
        forever begin
            seq_item_port.get_next_item(dist_mem_gen_item); 
            
            `uvm_info("dist_mem_gen_driver", $sformatf("Received new item: %s", dist_mem_gen_item.convert2string()), UVM_NONE)
           
            mem_intf.we = dist_mem_gen_item.we;
            mem_intf.qspo_ce = dist_mem_gen_item.qspo_ce;
            mem_intf.a = dist_mem_gen_item.a;
            mem_intf.d = dist_mem_gen_item.d;

            if (dist_mem_gen_item.we == 1) begin
                @(posedge mem_intf.clk);
                    `uvm_info("dist_mem_gen_driver", "CLK edge detected in driver.", UVM_NONE);
                mem_intf.d = dist_mem_gen_item.d;
                mem_intf.a = dist_mem_gen_item.a;
                mem_intf.we = 1;
                mem_intf.qspo_ce = 0;
                @(posedge mem_intf.clk);
                mem_intf.we = 0;
    
                `uvm_info("dist_mem_gen_driver", "Write operation completed successfully.", UVM_NONE);
            end

            else if (dist_mem_gen_item.qspo_ce == 1) begin
                @(posedge mem_intf.clk);
                mem_intf.a = dist_mem_gen_item.a;
                mem_intf.qspo_ce = 1;
                @(posedge mem_intf.clk);
                dist_mem_gen_item.qspo = mem_intf.qspo;
                mem_intf.qspo_ce = 0;
    
                `uvm_info("dist_mem_gen_driver", $sformatf("Synchronous read data: %0h", dist_mem_gen_item.qspo), UVM_NONE);
            end
           
            else begin
                mem_intf.a = dist_mem_gen_item.a;
                dist_mem_gen_item.spo = mem_intf.spo;
                `uvm_info("dist_mem_gen_driver", $sformatf("Asynchronous read data: %0h", dist_mem_gen_item.spo), UVM_NONE);
            
            end

            seq_item_port.item_done(); 
            
        end
    endtask: run_phase
    
endclass : dist_mem_gen_driver