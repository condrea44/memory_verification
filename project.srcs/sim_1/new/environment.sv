`include "uvm_macros.svh" 
import uvm_pkg::*; 

class environment extends uvm_env;

    `uvm_component_utils(environment) 
    dist_mem_gen_agent agent;
    scoreboard sb; 
    
    function new(input string name = "env", uvm_component parent = null); 
        super.new(name, parent);
    endfunction
    
    virtual function void build_phase( uvm_phase phase ); 
        `uvm_info("DEBUG", "The build_phase of the environment was called", UVM_NONE)
        
        agent = dist_mem_gen_agent::type_id::create("agent", this);
        sb = scoreboard::type_id::create("sb", this);
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
        
        agent.monitor.monitor_analysis_port.connect(sb.monitor_analysis_port);
    endfunction : connect_phase
    
endclass : environment    