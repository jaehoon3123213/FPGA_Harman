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
    module asix (
        input btn,
        input done,
        input clk,
        input reset,
        output reg btn_tick
    );
    
    reg state,next;
    parameter STOP = 1'b0, START =1'b1;
    reg [4:0] tick_count, tick_count_next;
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            state <= 0;
            tick_count <= 0;
        end
        else begin
            state <= next;
            tick_count <= tick_count_next;
        end
    end
    always @(*) begin
        next = state;
        tick_count_next = tick_count;
        btn_tick =0;
        case (state)
           STOP : if (btn == 1) begin
            next = START;
           end 
           START : if(done == 0) begin
            btn_tick = 1;
            tick_count_next = tick_count +1;
            if (tick_count_next == 16) begin
                tick_count_next =0;
                next = STOP;
            end
           end
           
        endcase
    end
    endmodule

module tick_500hz (
    input  clk,
    input  reset,
    output tick
);

    parameter BAUD_RATE = 500;
    localparam BAUD_COUNT = (100_000_000 / BAUD_RATE);
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

module send_tx_btn (
    input  reset,
    input  clk,
    input  btn_start,
    output tx,
    output [7:0] seg,
    output [3:0] seg_sel,
    input rx
);
    wire w_tick, w_btn_start, w_btn_start16;
    wire w_tx_done;
    wire w_tick_500hz;
    assign seg_sel = 4'b1110;
    wire [7:0] w_rx;



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
                if(w_btn_start16 == 1'b1) begin
                    if (send_tx_data_reg =="z")begin
                        send_tx_data_next ="0";
                    end
                    else begin
                    send_tx_data_next = send_tx_data_reg+1; //ascii 코드 1 증가
                    end
                end
            end
            
     asix uasix (
        .btn(w_btn_start),
        .done(w_tx_done),
        .clk(clk),
        .reset(reset),
        .btn_tick(w_btn_start16)
    );


    uart_fsm u_uart_tx (
        .reset(reset),
        .clk(clk),
        .btn_start(w_btn_start16),
        .tx_data_in(send_tx_data_reg),
        .tx(tx),
        .rx(rx),
        .w_o_data(w_rx),
        .tx_done(w_tx_done)
    );



    btn_debounce u_btn (
        .i_btn(btn_start),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_btn_start)

    );
        bcdtoseg bcd_u (
        .bcd(w_rx),
        .seg_out(seg)
    );
    
endmodule




module bcdtoseg (
    input [7:0] bcd,
    output reg [7:0] seg_out
);
    always @(bcd) begin
        case (bcd)
            "0": seg_out = 8'hC0;
            "1": seg_out = 8'hF9;
            "2": seg_out = 8'hA4;
            "3": seg_out = 8'hB0;
            "4": seg_out = 8'h99;
            "5": seg_out = 8'h92;
            "6": seg_out = 8'h82;
            "7": seg_out = 8'hf8;
            "8": seg_out = 8'h80;
            "9": seg_out = 8'h90;
            "A": seg_out = 8'h00;
            "B": seg_out = 8'h88;
            "C": seg_out = 8'hC6;
            "D": seg_out = 8'b01000000;
            "E": seg_out = 8'h86;
            "F": seg_out = 8'h8E;
            default: seg_out = 8'hff;
        endcase
    end
endmodule
