
// timing partition

// Project Foundation includes

`include "asim/provides/hasim_common.bsh"

// Timing Partition includes

//`include "asim/provides/hasim_chip.bsh"
//`include "asim/provides/hasim_memory.bsh"

`include "awb/provides/commands_service.bsh"

`include "asim/provides/hasim_uncore.bsh"
`include "asim/provides/hasim_chip_topology.bsh"

// mkTimingPartition

// The single-chip timing partition just instantiates a chip.

module [HASIM_MODULE] mkTimingPartition
    //interface:
         ();


    // ****** Soft Connections ******

    Connection_Send#(CONTROL_MODEL_CYCLE_MSG)         modelCycle <- mkConnection_Send("model_cycle");

    Connection_Send#(CONTROL_MODEL_COMMIT_MSG) linkModelCommit <- mkConnection_Send("model_commits");

    let uncore <- mkUncore();
    let topology <- mkTopology();
    
    //let chip <- mkChip();
    //let memory <- mkMemory();

endmodule
