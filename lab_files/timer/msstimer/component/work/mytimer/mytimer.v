//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Sep 29 16:25:23 2015
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// mytimer
module mytimer(
    // Outputs
    M2F_GPO_0
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output M2F_GPO_0;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   M2F_GPO_0_net_0;
wire   M2F_GPO_0_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign M2F_GPO_0_net_1 = M2F_GPO_0_net_0;
assign M2F_GPO_0       = M2F_GPO_0_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------mytimer_MSS
mytimer_MSS mytimer_MSS_0(
        // Outputs
        .M2F_GPO_0 ( M2F_GPO_0_net_0 ) 
        );


endmodule