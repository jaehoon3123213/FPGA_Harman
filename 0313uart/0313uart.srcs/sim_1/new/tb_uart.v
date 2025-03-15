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

    reg reset, clk, btn;
    send_tx_btn u_fsm (
        .reset(reset),
        .clk(clk),
        .btn_start(btn),
        .tx(tx)

    );

    always #0.05 clk = ~clk;

    initial begin
        clk   = 0;
        reset = 1;
        btn   = 0;
        #100;
        reset = 0;
        #10000;
        btn = 1;
        #100000;
        btn = 0;
        #100000;
        btn = 1;
        #100000;
        btn = 0;
        #100000;
        btn = 1;
        #100000;
        btn = 0;





    end
endmodule
