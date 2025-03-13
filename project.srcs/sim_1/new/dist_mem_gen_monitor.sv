`include "uvm_macros.svh"
import uvm_pkg::*;

class dist_mem_gen_monitor extends uvm_monitor;

    `uvm_component_utils(dist_mem_gen_monitor)
    
    uvm_analysis_port #(dist_mem_gen_seq_items1) monitor_analysis_port;
    
    virtual dist_mem_gen_intf1 mem_intf;
        
    function new(input string name = "", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        monitor_analysis_port = new("monitor_analysis_port", this);
        
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        
        uvm_config_db#(virtual dist_mem_gen_intf1)::get(this, "", "dist_mem_gen_intf1", mem_intf);
        
    endfunction

    virtual task run_phase(uvm_phase phase);
       
        fork
            monitor_write();
            monitor_sync_read();
            monitor_async_read();
        join
    endtask : run_phase

    task monitor_write();
        forever begin
            dist_mem_gen_seq_items1 observed_item;
            
            repeat(1)@(posedge mem_intf.clk);
            if (mem_intf.we == 1) begin
                observed_item = dist_mem_gen_seq_items1::type_id::create("observed_item_write");
                observed_item.we = mem_intf.we;
                observed_item.d = mem_intf.d;
                observed_item.a = mem_intf.a;

                `uvm_info("dist_mem_gen_monitor", $sformatf("Write operation observed: Address=%0h, Data=%0h", observed_item.a, observed_item.d), UVM_NONE);
            
                monitor_analysis_port.write(observed_item);
            end
        end
    endtask : monitor_write

    task monitor_sync_read();
        forever begin
            dist_mem_gen_seq_items1 observed_item;
            
            @(posedge mem_intf.clk);
            if (mem_intf.qspo_ce) begin
                #5
                observed_item = dist_mem_gen_seq_items1::type_id::create("observed_item_sync_read");
                observed_item.qspo_ce = mem_intf.qspo_ce;
                observed_item.a = mem_intf.a;
                observed_item.qspo = mem_intf.qspo;

                `uvm_info("dist_mem_gen_monitor", $sformatf("Synchronous read operation observed: Address=%0h, Data=%0h", observed_item.a, observed_item.qspo), UVM_NONE);
                
                
                monitor_analysis_port.write(observed_item);
            end
        end
    endtask : monitor_sync_read

    task monitor_async_read();
        dist_mem_gen_seq_items1 observed_item;
        
        forever begin
            @(mem_intf.a or mem_intf.spo); 
            
            observed_item = dist_mem_gen_seq_items1::type_id::create("observed_item_async_read");
            observed_item.a = mem_intf.a;
            observed_item.spo = mem_intf.spo;

            `uvm_info("dist_mem_gen_monitor", $sformatf("Asynchronous read operation observed: Address=%0h, Data=%0h", observed_item.a, observed_item.spo), UVM_NONE);
            
            
            monitor_analysis_port.write(observed_item);
        end
    endtask : monitor_async_read

    virtual function void report_phase(uvm_phase phase); 
   
        super.report_phase(phase);
    
    endfunction : report_phase


endclass : dist_mem_gen_monitor
