`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/14 09:16:43
// Design Name: 
// Module Name: tb_uart
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



module tb_uart ();

    reg reset, clk, rx,btn;
    wire w_tick;
    wire rx_done;
    wire [7:0] o_data;
    send_tx_btn u_fsm (
        .reset(reset),
        .clk(clk),
        .btn_start(btn),
        .tx(tx),
        .rx(rx)
    );

    // uart_rx urx (
    //     .clk(clk),
    //     .reset(reset),
    //     .tick(w_tick),
    //     .rx(rx),
    //     .rx_done(rx_done),
    //     .o_data(o_data)
    // );

    // tick_9600hz a (
    //     .clk(clk),
    //     .reset(reset),
    //     .tick (w_tick)
    // );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        rx = 1;
        #100    
        reset = 0;
        #10000;
        send_data(8'h72);
        send_data(8'h71);
        send_data(8'h73);
        #10000;

    end
    task send_data(input [7:0] data);
    integer  i;
    begin
    $display("sending data: %h",data);

    rx =0;
    #104170;

    for  (i=0; i<8; i=i+1) begin
       rx =data[i];
       #104170; 
    end
    rx =1;
    #104170;

    $display("Data sent:%h", data);

    end
    endtask

    
endmodule


