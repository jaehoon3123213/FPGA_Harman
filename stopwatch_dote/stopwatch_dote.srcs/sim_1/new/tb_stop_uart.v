`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/21 10:15:55
// Design Name: 
// Module Name: tb_stop_uart
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


module tb_stop_uart(

    );

reg clk,reset,btn_run,btn_clear,btn_up,btn_set,btn_down,rx;
wire [7:0] fnd_font;
wire [3:0] fnd_comm;
wire [3:0] led;
wire tx;

top_uart_stopwatch top_uart(
    //stopwatch
    .clk(clk),
    .reset(reset),
    .btn_run(btn_run),
    .btn_clear(btn_clear),
    .btn_up(btn_up),
    .btn_set(btn_set),
    .btn_down(btn_down),
     .fnd_comm(fnd_comm),
     .fnd_font(fnd_font),
     .led(led),
    //uart
    .tx(tx),
    .rx(rx)
);  



   always #5 clk = ~clk;

    initial begin
        btn_run = 0;
        btn_clear = 0;
        btn_up = 0; 
        btn_set = 0;
        btn_down = 0;
        clk = 0;
        reset = 1;
        rx = 1;
        #100    
        reset = 0;
        #10000;
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        send_data("u");
        

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
