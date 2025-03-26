`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 10:56:47
// Design Name: 
// Module Name: tb_sensor
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


module tb_sensor ();



    reg clk, reset, start_trigger, data;
    wire [7:0] seg_out;
    wire [3:0] seg_comm;
    wire start_tick;


    top_sensor utop (
        .clk(clk),
        .reset(reset),
        .start_trigger(start_trigger),
        .data(data),
        .seg_out(seg_out),
        .seg_comm(seg_comm),
        .start_tick(start_tick)
    );


    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        start_trigger = 0 ;
        data = 0;
        #50;
        reset =0;
        #100;
        start_trigger = 1;


    end
endmodule
