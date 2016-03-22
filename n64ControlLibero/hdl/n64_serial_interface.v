
module n64_serial_interface(
    input clk,
    input polling_enable,
    input controller_reset,
    inout fab_pin,
    output reg [31:0] button_data,
// debug
    output enable_data_write_wire,
    output data_out, 
    output enable_write_mod_wire,
    output write_module_active
);


// used by the sync and count block
reg data_in;
reg [1:0] sync_reg;
reg [23:0] long_count; // for 1ms polling

// used by the reset block
reg prev_reset = 0;
reg send_reset = 0;

// submodule instantiations
reg [7:0] command_byte;
reg enable_write_module;
wire read_module_begin; // active signal to the read module, from write module(1 cycle)
//(debug)wire write_module_active;
n64_write_command write_module(
    command_byte, enable_write_module, clk,
    write_module_active, data_out, read_module_begin);

wire [31:0] button_data_raw; // since this changes, needs to write to button_data atomically
wire read_module_active;
reg read_module_set_active; // stays high to check falling edge
wire read_module_error;
n64_read_controller read_module(
    read_module_begin, clk, data_in,
    read_module_error, read_module_active, button_data_raw);

// open collector output circuit
reg enable_data_write = 0;
assign enable_data_write_wire = enable_data_write;
assign enable_write_mod_wire = enable_write_module;
//wire data_out = 0;
//assign fab_pin = (enable_data_write & ~data_out) ? 1'b0 : 1'bZ;
assign fab_pin = (write_module_active & ~data_out) ? 1'b0 : 1'bZ;



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
    sync_reg[0] <= fab_pin;
    sync_reg[1] <= sync_reg[0];
    data_in <= sync_reg[1];

    // 1ms polling counter
    if (long_count < 100000)
        long_count <= long_count + 1;
    else
        long_count <= 0;
end


// Request and Recieve state logic
always @ (posedge clk) begin

    // enable the write module
    if (polling_enable & (long_count == 0)) begin
        enable_write_module <= 1; // wire into module to start it
        enable_data_write <= 1; // enables the output to gpio

        if (send_reset)
            command_byte <= 8'hFF; // reset controller
        else
            command_byte <= 8'h01; // get buttons
    end    

    // detects falling edge of the write command module (also reset or not)
    if (enable_data_write & ~write_module_active) begin
        read_module_set_active <= 1; //  to detect when it becomes inactive
        enable_data_write <= 0;
    end

    // enable_write_module is the single pulse start signal
    if (enable_write_module)
        enable_write_module <= 0;

    // read module got started up above, just check for errors and ending
    // falling edge of read active, atomically change the output
    if (~read_module_active & read_module_set_active) begin
        read_module_set_active <= 0;
        if (~read_module_error)
            button_data <= button_data_raw;
    end
end


endmodule

