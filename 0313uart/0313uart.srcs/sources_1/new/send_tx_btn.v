`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/14 14:38:18
// Design Name: 
// Module Name: send_tx_btn
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


module send_tx_btn (
    input  reset,
    input  clk,
    input  btn_start,
    output tx
);
    wire w_tick, w_btn_start;
    wire w_tx_done;


    reg [7:0] send_tx_data_reg, send_tx_data_next;
        always @(posedge clk, posedge reset) begin
            if (reset) begin
                send_tx_data_reg <= 8'h30; //"0"도 가능
            end
            else begin
                send_tx_data_reg <= send_tx_data_next;
            end
             end
            always @(*) begin
                send_tx_data_next = send_tx_data_reg;
                if(w_btn_start == 1'b1) begin
                    if (send_tx_data_reg =="z")begin
                        send_tx_data_next ="0";
                    end
                    else begin
                    send_tx_data_next = send_tx_data_reg+1; //ascii 코드 1 증가
                    end
                end
            end
            
       

    uart_fsm u_uart_tx (
        .reset(reset),
        .clk(clk),
        .btn_start(w_btn_start),
        .tx_data_in(send_tx_data_reg),
        .tx(tx),
        .tx_done(w_tx_done)
    );



    btn_debounce u_btn (
        .i_btn(btn_start),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_btn_start)

    );

    
endmodule
