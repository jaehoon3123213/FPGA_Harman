`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 16:34:17
// Design Name: 
// Module Name: tb_fifo
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


module tb_fifo ();


    reg clk, reset, wr, rd;
    reg  [7:0] wdata;
    wire [7:0] rdata;
    wire empty, full;

    fifo tbfifo (
        .clk(clk),
        .reset(reset),
        // write
        .wdata(wdata),
        .wr(wr),
        // read
        .rd(rd),
        .rdata(rdata),
        .empty(empty),
        .full(full)

    );
    
    always #5 clk = ~clk;
    
    integer i;
    initial begin
        clk = 0;
        reset = 1;
        wdata = 0;
        wr = 0;
        rd = 0;
        #10;
        reset = 0;

        #10;
        wr = 1;
        for (i=0; i<16; i= i+1)
        begin
        wdata =$random %256;
        #10; 
        end
        wr = 0;
        rd = 1;
        #20;
    end
endmodule
