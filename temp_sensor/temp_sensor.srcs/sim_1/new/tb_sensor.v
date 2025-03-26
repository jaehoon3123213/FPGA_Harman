`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 12:13:28
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


    reg clk, reset, start_trigger;
    wire [3:0] led;
    wire data;

    reg data_reg;

    top_sensor utop (
        .clk(clk),
        .reset(reset),
        .start_trigger(start_trigger),
        .data(data),
        .led(led)
    );

    always #5 clk = ~clk;

    assign data = (~utop.u_sen.io_state) ? data_reg : 1'bz;


    initial begin
        clk = 0;
        reset = 1;
        start_trigger = 0;
        #50;
        reset = 0;
        #100;
        start_trigger = 1;
        #8000000;
        start_trigger = 0;
        #10;
         wait(data);
        #3000000
        //입력 모드로 변환
        data_reg = 1'b0;
        #800000;
        data_reg = 1'b1;
        #800000;
            #500000;


    end

endmodule


// module tb_dht11();

//     reg clk;
//     reg reset;
//     reg btn_start;

//     reg dht_sensor_data;
//     reg io_oe;

//     wire [3:0] led;
//     wire dht_io;

//     // tb io mode 변환
//     assign dht_io = (io_oe) ? dht_sensor_data : 1'bz;

//     dht11 dut (
//         .clk(clk),
//         .reset(reset),
//         .btn_start(btn_start),
//         .led(led),
//         .dht_io(dht_io) // inout port
//     );

//     always #5 clk = ~clk;

//     initial begin
//         clk = 0;
//         reset = 1;
//         io_oe = 0;
//         btn_start = 0;

//         #100;
//         reset = 0;
//         #100;
//         btn_start = 1;
//         #100;
//         btn_start = 0;
//         #10000;
//         // 18msec 대기
//         wait(dht_io);
//         #30000;
//         // 입력 모드로 변환
//         io_oe = 1;
//         dht_sensor_data = 1'b0;
//         #80000;
//         dht_sensor_data = 1'b1;
//         #80000;
//         #50000;
//         $stop;  
//     end


