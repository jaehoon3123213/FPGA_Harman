`timescale 1ns / 1ps
module tb_uart_stopwatchf ();
    reg clk;
    reg rst;
    reg rx;
    wire tx;
    reg sw_mode, sw_select;
    reg btnL, btnR, btnU, btnD;
    /*
    top_uart_fifo U_top_uart_fifo(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .tx(tx)
    );*/

    top_uart_fifo U_top_uart_fifo (
        .clk        (clk),
        .rst        (rst),
        .rx         (rx),
        .tx         (tx),

        .btnL       (btnL),
        .btnR       (btnR),
        .btnU       (btnU),
        .btnD       (btnD),
        .sw_mode    (sw_mode),
        .sw_select  (sw_select),

        .led        (led),
        .fnd_comm   (fnd_comm),
        .fnd_font   (fnd_font)
    );

    // 100MHz 클럭 (10ns 주기)
    always #5 clk = ~clk;

    // 초기 시나리오
    initial begin
        clk = 0;
        rst = 1;
        rx  = 1;  // UART Idle 상태는 High
        btnL = 0;
        btnR = 0;
        btnU = 0;
        btnD = 0;
        sw_mode = 0;
        sw_select = 0;

        // 리셋 적용 후 해제
        #50 rst = 0;
        sw_mode = 0;
        sw_select = 0;
        #10000;  // 안정화 대기

        // 1) 'r' 전송 → 스톱워치 Run
        send_data(8'h72);   // 'r'
        #1000;             // 기다렸다가

        // 2) 다시 'r' 전송 → 스톱워치 Stop

        // 3) 'c' 전송 → 스톱워치 Clear
        // send_data(8'h63);   // 'c'
        // #200000;
        


    end

    // 9600bps 기준 (1비트당 ~104us)으로 rx 신호를 생성
    task send_data(input [7:0] data);
        integer i;
        begin
            $display("Sending data: %h", data);

            // Start bit (Low)
            rx = 0;
            #(10 * 10417);

            // 8 data bits (LSB first)
            for (i = 0; i < 8; i = i + 1) begin
                rx = data[i];
                #(10 * 10417);
            end

            // Stop bit (High)
            rx = 1;
            #(10 * 10417);

            $display("Data sent: %h", data);
        end
    endtask

endmodule