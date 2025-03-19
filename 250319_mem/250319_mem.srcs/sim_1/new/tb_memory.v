`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 11:54:29
// Design Name: 
// Module Name: tb_memory
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


module tb_memory(

    );

parameter ADDR_WIDTH =4, DATA_WIDTH =8;

reg clk;
reg [ADDR_WIDTH-1 : 0] waddr;
reg [DATA_WIDTH-1 : 0] wdata;
reg wr;
wire [DATA_WIDTH-1 : 0] rdata;

ram_ip a (
.clk(clk),
.waddr(waddr),
.wdata(wdata),
.wr(wr),
.rdata(rdata)
    );

always #5 clk = ~clk;
integer  i;
reg [DATA_WIDTH-1:0] rand_data;
reg [ADDR_WIDTH-1:0 ] rand_addr;
initial begin
    clk = 0;
    waddr = 0;
    wdata = 0;
    wr = 0;
    #10;
    for (i=0; i<50; i=i+1) begin
       @(posedge clk);
       // 난수발생기
        rand_addr = $random%15; // 난수 15개
        rand_data = $random%255; //난수 255개
        //쓰기
        wr = 1;
        waddr = rand_addr;
        wdata = rand_data;
        @(posedge clk)
        #10;
        // == 값비교 , === case 비교 0 1 x z 다 비교
        if(rdata === wdata)begin
            $display("pass");
        end
        else $display("fail  addr = %d, data = %h",waddr, rdata);




    end
    #100;
    $stop;



end
    
endmodule
