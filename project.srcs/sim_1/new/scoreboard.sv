`include "uvm_macros.svh"
import uvm_pkg::*;

`uvm_analysis_imp_decl(_monitor)

class scoreboard extends uvm_scoreboard;

    `uvm_component_utils(scoreboard)

    virtual dist_mem_gen_intf1 mem_intf;
    logic [15:0] registerBank [0:63]; 

    uvm_analysis_imp_monitor#(dist_mem_gen_seq_items1, scoreboard) monitor_analysis_port;
   

    function new(input string name = "", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    virtual function void build_phase(uvm_phase phase);
        monitor_analysis_port = new("monitor_analysis_port", this);
        
        uvm_config_db#(virtual dist_mem_gen_intf1)::get(null, "", "dist_mem_gen_intf1", mem_intf);
    
        for (int i = 0; i < 64; i++) begin
            registerBank[i] = 0;  
        end
    
    endfunction

    virtual function void write_monitor(dist_mem_gen_seq_items1 monitor_item);

        if (monitor_item.we == 1) begin
          
            assert(monitor_item.a >= 0 && monitor_item.a < 64) 
                else `uvm_error("scoreboard", $sformatf("Invalid write address: %0h", monitor_item.a));
    
            
            assert(monitor_item.d >= 0 && monitor_item.d <= 16'hFFFF) 
                else `uvm_error("scoreboard", $sformatf("Invalid write data: %0h", monitor_item.d));
        
            registerBank[monitor_item.a] = monitor_item.d; 
            `uvm_info("scoreboard", $sformatf("Write detected: addr=%0h, data=%0h", monitor_item.a, monitor_item.d), UVM_NONE);
        end 
       
    endfunction : write_monitor

    task verifySyncRead();
        int expected_data;
    
        forever begin
            @(posedge mem_intf.clk);
            
            if (mem_intf.qspo_ce == 1) begin
                if (mem_intf.we == 1) begin
                    `uvm_info("scoreboard", $sformatf("Sync read ignored: write in progress at addr=%0h", mem_intf.a), UVM_LOW);
                    continue; 
                end
                
                @(posedge mem_intf.clk);
                
                expected_data = registerBank[mem_intf.a];
               
                if (mem_intf.qspo !== expected_data) begin
                    if (expected_data === 0) begin
                        `uvm_error("scoreboard", $sformatf("Sync Read Mismatch: addr=%0h not written yet, expected=0, got=%0h", 
                            mem_intf.a, mem_intf.qspo));
                    end else begin
                        `uvm_error("scoreboard", $sformatf("Sync Read Mismatch: addr=%0h, expected=%0h, got=%0h", 
                            mem_intf.a, expected_data, mem_intf.qspo));
                    end
                end 
                else begin
                    if (expected_data === 0) begin
                        `uvm_info("scoreboard", $sformatf("Sync Read Match: addr=%0h not written yet, value=0", 
                            mem_intf.a), UVM_LOW);
                    end else begin
                        `uvm_info("scoreboard", $sformatf("Sync Read Match: addr=%0h, value=%0h", 
                            mem_intf.a, expected_data), UVM_NONE);
                    end
                end
            end 
            
        end
    endtask : verifySyncRead



    
    task verifyAsyncRead();
        int expected_data;
        
        forever begin
            @(mem_intf.a or mem_intf.spo); 
    
            if (mem_intf.we == 1) begin
                `uvm_info("scoreboard", $sformatf("Async read ignored: write in progress at addr=%0h", mem_intf.a), UVM_LOW);
                continue; 
            end
    
            expected_data = registerBank[mem_intf.a];
    
            if (mem_intf.spo !== expected_data) begin
                if (expected_data === 0) begin
                    `uvm_error("scoreboard", $sformatf("Async Read Mismatch: addr=%0h not written yet, expected=0, got=%0h", 
                        mem_intf.a, mem_intf.spo));
                end else begin
                    `uvm_error("scoreboard", $sformatf("Async Read Mismatch: addr=%0h, expected=%0h, got=%0h", 
                        mem_intf.a, expected_data, mem_intf.spo));
                end
            end 
            else begin
                if (expected_data === 0) begin
                    `uvm_info("scoreboard", $sformatf("Async Read Match: addr=%0h not written yet, value=0", 
                        mem_intf.a), UVM_LOW);
                end else begin
                    `uvm_info("scoreboard", $sformatf("Async Read Match: addr=%0h, value=%0h", 
                        mem_intf.a, expected_data), UVM_NONE);
                end
            end
        
        end
    endtask : verifyAsyncRead

    
    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        
        fork
            verifySyncRead();  
            verifyAsyncRead();  
        join
        
        phase.drop_objection(this);
    endtask

endclass : scoreboard
