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
    integer rand_rd;
    integer rand_wr;
    reg [7:0] compare_data[2**4-1 : 0];
    integer read_count;
    integer write_count;

    initial begin
        clk = 0;
        reset = 1;
        wdata = 0;
        wr = 0;
        rd = 0;
        #10;
        reset = 0;
        read_count =0;
        write_count = 0;

        #1000;
        // wr = 1;
        // for (i=0; i<16; i= i+1)
        // begin
        // wdata =$random %256;
        // #10; 
        // end
        // wr = 0;
        // rd = 1;
        // #170;
        // wr = 1;
        // for(i=0; i<17; i= i+1) begin
        //     wdata = i*2+1;
        //     #10;
        // end
    wr = 0;
    rd = 0;
    for (i=0; i<50; i= i+1) begin
        @(negedge clk); // 쓰기 wdata를 negedge에서 시작하기 위함
        rand_wr = $random %2; //wr 을 랜덤으로 1,0만들기기
        if (~full&rand_wr) begin // full이 아니면서 wr이 1일때만 새로운 wdata 생성성
            wdata = $random%256; //랜덤값 생성
            compare_data[write_count % 2**4] = wdata; //read data와 비교
            write_count = write_count+1;
            wr = 1;
            #2;
        end
        else begin
            wr = 0;
        end
        rand_rd = $random%2; // rd random으로 생성 0,1
        if (~empty&rand_rd) begin //read test
            #2;
            rd =1;
            if
            (rdata == compare_data[read_count%16])
            begin
            $display ("pass");
            end
            else begin
            $display ("fail rdata = %h compare_data =%h", rdata, compare_data[read_count%16]);
            end
        end else begin
            rd = 0;
        end

    end
    end
endmodule
