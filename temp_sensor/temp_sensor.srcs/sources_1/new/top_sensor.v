`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 11:18:30
// Design Name: 
// Module Name: top_sensor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_sensor (
    input clk,
    input reset,
    inout data,
    input start_trigger,
    output [4:0] led,
    output [7:0] seg_out,
    output [3:0] seg_comm
);
wire [39:0] w_o_data; 
wire [15:0] w_o_data2;
assign w_o_data2 = {w_o_data [39:32],w_o_data[23:16]};





    sensor_cu u_sen (
        .clk(clk),
        .reset(reset),
        .tick(w_tick),
        .start_trigger(w_start_trigger),
        .data(data),
        .o_data(w_o_data),
        .led(led[4]),
        .o_state(led[3:0])
    );


    tick_1us u_tick (
        .clk  (clk),
        .reset(reset),
        .tick (w_tick)
    );

    btn_debounce ubtn (
        .i_btn(start_trigger),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_start_trigger)
    );
    fnd_controlloer ufnd (  //control anod segments
        .clk(clk),
 .reset(reset),
    .count(w_o_data2),
    .seg_out(seg_out),
     .seg_comm(seg_comm)
);
endmodule


module data_io (
    input done,
    input data_in,
    output reg data_out
);
    always @(*) begin
        if (done) begin
            data_out = 1'bx;
        end
    end
endmodule


module sensor_cu (
    input clk,
    input reset,
    input tick,
    input start_trigger,
    inout data,
    output start_tick,
    output [39:0] o_data,
    output finish_tick,
    output led,
    output [3:0] o_state,
    output reg io_state
);

    parameter IDLE = 4'b0000, START = 4'b0001, WAIT = 4'b0010, WAIT2 = 4'b0011, WAIT3 = 4'b0100;
    parameter SYNC = 4'b0101, DATA = 4'b0110, PAR = 4'b0111, WAIT4 = 4'b1110;
    reg [3:0] state, next;
    reg [15:0] tick_count, tick_count_next;
    reg data_reg, data_next;
    reg [39:0] o_data_reg, o_data_next;
    reg start_tick_reg, start_tick_next;
    reg finish_tick_reg, finish_tick_next;
    reg [5:0] data_count, data_count_next;
    reg led_reg, led_next;
    reg io_state_next;

    assign start_tick = start_tick_reg;
    assign finish_tick = finish_tick_reg;
    assign led = led_reg;
    assign o_state = state;
    assign o_data = o_data_reg;
    // out 3state on/off
    assign data = (io_state) ? data_reg : 1'bz;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 0;
            tick_count <= 0;
            data_reg <= 1;
            start_tick_reg <= 0;
            finish_tick_reg <= 0;
            led_reg <= 0;
            io_state <= 0;
            o_data_reg <= 0;
            data_count <= 0;
        end else begin
            state <= next;
            tick_count <= tick_count_next;
            data_reg <= data_next;
            start_tick_reg <= start_tick_next;
            finish_tick_reg <= finish_tick_next;
            led_reg <= led_next;
            io_state <= io_state_next;
            o_data_reg <= o_data_next;
            data_count <= data_count_next;
        end
    end

    always @(*) begin
        next = state;
        data_next = data_reg;
        tick_count_next = tick_count;
        start_tick_next = start_tick_reg;
        finish_tick_next = 0;
        led_next = led_reg;
        io_state_next = io_state;
        o_data_next = o_data_reg;
        data_count_next = data_count;
        case (state)

            IDLE: begin
                data_next = 1;
                io_state_next = 1;
                if (start_trigger == 1) begin
                    next = START;
                    data_count_next = 0;
                    o_data_next = 0;
                end
            end
            START:
            if (tick == 1) begin
                data_next = 0;
                tick_count_next = tick_count + 1;
                if (tick_count_next == 18000) begin
                    next = WAIT;
                    data_next = 1;
                    tick_count_next = 0;
                end
            end
            WAIT:
            if (tick == 1) begin
                tick_count_next = tick_count + 1;
                if (tick_count_next == 30) begin
                    next = WAIT2;
                    tick_count_next = 0;
                    io_state_next = 0;
                end
            end
            WAIT2: begin
                if (data == 1) begin
                    next = WAIT3;
                end

            end
            WAIT3: begin
                if (data == 0) begin
                    next = SYNC;
                end
            end

            SYNC: begin
                if (data_count == 40) begin
                    data_count_next =0;
                    next = PAR;
                end
                else if (data == 1) begin
                    next = DATA;
                end
            end
            DATA: begin
                if (data == 1) begin
                    if (tick == 1) begin
                        tick_count_next = tick_count + 1;
                    end
                end else if (data == 0) begin
                    if (tick_count < 40) begin
                        o_data_next[39-data_count] = 0;
                    end
                    else begin
                        o_data_next[39-data_count] = 1;
                    end
                    data_count_next = data_count +1;
                    tick_count_next = 0;
                    next = SYNC;
                end
            end
            PAR: begin
                io_state_next = 1;
                if(tick == 1) begin
                tick_count_next = tick_count +1;
                end
                if(tick_count_next == 50) begin
                    data_next =1;
                    if( o_data_reg[39:32] + o_data_reg[31:24] + o_data_reg[23:16] +o_data_reg[15:8] != o_data_reg[7:0])
                    begin
                        led_next = 1;
                    end
                    else begin
                        led_next = 0;
                    end
                    tick_count_next =0;
                    next = IDLE;
                end
            end


        endcase
    end
endmodule


module tick_1us (
    input  clk,
    input  reset,
    output tick
);

    parameter BAUD_RATE = 9600;
    localparam BAUD_COUNT = 100;
    reg [$clog2(BAUD_COUNT)-1:0] count_reg, count_next;

    reg tick_reg, tick_next;
    assign tick = tick_reg;

    always @(posedge clk, posedge reset) begin
        if (reset == 1) begin
            count_reg <= 0;
            tick_reg  <= 0;
        end else begin
            count_reg <= count_next;
            tick_reg  <= tick_next;
        end
    end


    always @(*) begin
        count_next = count_reg;
        tick_next  = tick_reg;
        if (count_reg == BAUD_COUNT - 1) begin
            count_next = 0;
            tick_next  = 1'b1;
        end else begin
            count_next = count_reg + 1;
            tick_next  = 1'b0;
        end
    end

endmodule


