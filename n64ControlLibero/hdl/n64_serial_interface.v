///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: n64_serial_interface.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module n64_serial_interface( 
input clk,
input polling_enable,
input controller_reset,
input gpio_in,
output reg gpio_out,
output reg [31:0] button_data
);

reg [1:0] sync_reg;
reg data_in;
reg [23:0] long_count; // for 1ms polling
reg [8:0] short_count; // for manchester bits

reg prev_reset = 0;
reg send_reset = 0;

// open collector output circuit
reg enable_data_write = 0;
reg data_out = 0;
assign gpio_out = (enable_data_write & ~data_out) ? 1'b0 : 1'bZ;

// handles whether to write reset to controller or not
always @ (posedge clk) begin
    if (prev_reset == 0 && controller_reset == 1)
        send_reset <= 1;
    else
        send_reset <= 0;
    prev_reset <= controller_reset;
end


always @ (posedge clk) begin
    // Sync the data in line
    sync_reg[0] <= gpio_in;
    sync_reg[1] <= sync_reg[0];
    data_in <= sync_reg[1];

    // 1ms polling counter
    if (long_count < 100000)
        long_count <= long_count + 1;
    else
        long_count <= 0;

end



// Request stage
always @ (posedge clk) begin
    if ~(polling_enable & (long_count == 0))
        // do nothing
    else
        
end

// Receiving state

// (idle stage)


endmodule

