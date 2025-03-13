`include "uvm_macros.svh"
import uvm_pkg::*;

class rw_test extends uvm_test;

    `uvm_component_utils(rw_test)

    environment env;

    function new(input string name = "rw_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    virtual function void build_phase(uvm_phase phase);
        env = environment::type_id::create("env", this);
    endfunction : build_phase

    virtual function void connect_phase(uvm_phase phase);
        
    endfunction : connect_phase



    task writeMemory(int addr, int readdata);
        dist_mem_gen_rw_sequence writeSeq;
        writeSeq = dist_mem_gen_rw_sequence::type_id::create("writeSeq");

        writeSeq.we = 1;
        writeSeq.qspo_ce = 0;
        writeSeq.a = addr;
        writeSeq.d = readdata;

        `uvm_info("WriteMemory Debug", $sformatf("Sending transaction: we=%0d, addr=%0h, data=%0h", writeSeq.we, writeSeq.a, writeSeq.d), UVM_LOW);

        writeSeq.start(env.agent.sequencer); 
        
        
        `uvm_info("rw_test", $sformatf("Write issued: addr=%0h, data=%0h", addr, readdata), UVM_NONE);
    endtask : writeMemory

   
    task readMemorySync(input int addr, output int readdata);
    
    
        dist_mem_gen_rw_sequence readSeq;
        readSeq = dist_mem_gen_rw_sequence::type_id::create("readSeq");

        
        readSeq.we = 0;
        readSeq.qspo_ce = 1;
        readSeq.a = addr;
        readSeq.d = env.agent.monitor.mem_intf.d; 

        readSeq.start(env.agent.sequencer);
        
        readdata = env.agent.monitor.mem_intf.qspo; 
    endtask : readMemorySync
    
   
    task readMemoryAsync(input int addr, output int readdata);
        dist_mem_gen_rw_sequence readSeq;
        readSeq = dist_mem_gen_rw_sequence::type_id::create("readSeq");
    
        
        readSeq.we = 0;
        readSeq.qspo_ce = 0; 
        readSeq.a = addr; 
        readSeq.d = env.agent.monitor.mem_intf.d; 
    
        readSeq.start(env.agent.sequencer);
        
        `uvm_info("rw_test", $sformatf("Async Read Initiated: addr=%0h, SPO=%0h", addr, env.agent.monitor.mem_intf.spo), UVM_NONE);

        
        readdata = env.agent.monitor.mem_intf.spo;
        
    endtask : readMemoryAsync

    
    virtual task run_phase(uvm_phase phase);
        int readdata = 0;
    
        phase.raise_objection(this);
    
    
        
        writeMemory(6'h10, 16'h1234);
        #25 
        writeMemory(6'h20, 16'h5678);
        #55
        writeMemory(6'h30, 16'h9ABC);
        repeat(4) @(posedge env.agent.monitor.mem_intf.clk); 
        writeMemory(6'h2, 16'h3);
        #15
        writeMemory(6'h20, 16'h3333);
        #15
        writeMemory(6'h30, 16'h0101);
        #15


        
        readMemoryAsync(6'h10, readdata);
        $display("Async Read Data after Write 1: %0h", readdata);
        #35
        readMemoryAsync(6'h20, readdata);
        $display("Async Read Data after Write 2: %0h", readdata);
        #20
        readMemoryAsync(6'h30, readdata);
        $display("Async Read Data after Write 3: %0h", readdata);
        #30
        readMemoryAsync(6'h10, readdata);
        $display("Async Read Data after Write 1: %0h", readdata);
        #45
        
        
        
        readMemorySync(6'h2, readdata);
        $display("Sync Read Data: %0h", readdata);
        #60
        readMemorySync(6'h20, readdata);
        $display("Sync Read Data: %0h", readdata);
        #55
        
        
        
    
        phase.drop_objection(this);
    endtask : run_phase



endclass : rw_test
