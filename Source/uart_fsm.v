`timescale 1ns / 1ps

module uart_fsm (
    input reset,
    input clk,
    input btn_start,
    input [7:0] tx_data_in,
    output tx,
    output tx_done
);
wire w_tick,w_btn_start;
wire w_tx_done;
uart_tx u_uart_tx(
    .clk(clk),
    .reset(reset),
    .tick(w_tick),
    .data_in(tx_data_in),
    .start_trigger(btn_start),
    .o_tx(tx),
    .tx_done(tx_done)
);



tick_9600hz utick9600hz (
    .clk(clk),
    .reset(reset),
    .tick(w_tick)
);


endmodule


module uart_tx (
    input clk,
    input reset,
    input tick,
    input [7:0] data_in,
    input start_trigger,
    output o_tx,
    output tx_done
);
    parameter R_IDLE = 4'h0,START =4'h1, DATA_STATE =4'h2, STOP =4'h3;

    reg [3:0] data_count;
    reg [3:0] state, next;
    reg tx, tx_next;
    reg r_tx_done, r_tx_done_next;
    assign tx_done = r_tx_done;
    assign o_tx = tx;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 0;
            tx <= 1;
            r_tx_done <= 0;
            data_count <= 0;
        end else begin
            state <= next;
            tx <= tx_next;
            r_tx_done <= r_tx_done_next;
        end
    end


    always @(*) begin
        next = state;
        tx_next = tx;
        r_tx_done_next = r_tx_done;
        case (state)
            R_IDLE: begin
                tx_next =1'b1;
                if (start_trigger == 1) begin
                    next = START;
                    r_tx_done_next =1;
                end
            end
            START: begin
                if (tick == 1) begin
                    tx_next = 1'b0;
                    data_count = 0;
                    next = DATA_STATE;
                end
            end
   
            DATA_STATE: begin
                if (tick == 1) begin
                    tx_next = data_in[data_count];
                    data_count = data_count +1;
                     if (data_count == 8)
                        next = STOP;
                    end
            end
            STOP: begin
                if (tick == 1) begin
                    r_tx_done_next = 0;
                    data_count = 0;
                    tx_next = 1'b1;
                    next = R_IDLE;
                end
            end
        endcase
    end
endmodule


module tick_9600hz (
    input  clk,
    input  reset,
    output tick
);

    parameter BAUD_RATE = 9600;
    localparam BAUD_COUNT = 100_000_000 / BAUD_RATE;
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


