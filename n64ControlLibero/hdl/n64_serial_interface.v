
module n64_serial_interface(
    input clk,
    input polling_enable,
    input controller_reset,
    input gpio_in,
    output wire gpio_out,
    output reg [31:0] button_data
);

// submodule instantiations
reg [7:0] command_byte;
reg enable_write_module;
reg write_module_active;
n64_write_command write_command(
    command_byte, enable_write_module, clk,
    data_out, write_module_active) ;

// used by the sync and count block
reg data_in;
reg [1:0] sync_reg;
reg [23:0] long_count; // for 1ms polling

// used by the reset block
reg prev_reset = 0;
reg send_reset = 0;

// main state
reg [1:0] state = 0;
reg [1:0] prev_state = 0;
parameter STOP = 3'b0;

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

// data input synchronization, long idle clock count
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


// Request (write) stage
always @ (posedge clk) begin

    // enable the write module
    if (polling_enable & (long_count == 0)) begin
        enable_write_module <= 1;
        if (send_reset) begin
            command_byte <= 8'hFF; // reset controller
        else
            command_byte <= 8'h01; // get buttons
        end

    // write/request state underway
    else if (write_module_active)
        enable_data_write <= 1; // enables the output to gpio
    // something else
    end

end

// Receiving state

// (idle stage)


endmodule

