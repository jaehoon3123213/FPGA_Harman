`timescale 1ns / 1ps


module top_uart_stopwatch (
    //stopwatch
    input clk,
    input reset,
    input btn_run,
    input btn_clear,
    input btn_up,
    input btn_set,
    input btn_down,
    output [3:0] fnd_comm,
    output [7:0] fnd_font,
    output [3:0] led,
    //uart
    output tx,
    input rx
);
    wire [3:0] w_digit_mec_1, w_digit_mec_10, w_digit_sec_1, w_digit_sec_10;
    wire [3:0] w_digit_min_1, w_digit_min_10, w_digit_hour_1, w_digit_hour_10;
    wire [7:0] rx_data;
    wire w_rx_done;
    wire [1:0] sw;
    wire [6:0] w_msec, w_sec, w_min, w_hour;
    top_stopwatch ustopwatch (
        .clk(clk),
        .reset(reset),
        .rx_data(rx_data),
        .rx_done(~w_rx_done),
        .btn_run(btn_run),
        .btn_clear(btn_clear),
        .btn_up(btn_up),
        .btn_set(btn_set),
        .btn_down(btn_down),
        .fnd_comm(fnd_comm),
        .fnd_font(fnd_font),
        .led(led),
        // .w_msec(w_msec),
        // .w_sec(w_sec),
        // .w_min(w_min),
        // .w_hour(w_hour),
        .sw(sw),
    .w_digit_mec_1(w_digit_mec_1),
     .w_digit_mec_10(w_digit_mec_10),
     .w_digit_sec_1(w_digit_sec_1),
     .w_digit_sec_10(w_digit_sec_10),
     .w_digit_min_1(w_digit_min_1),
     .w_digit_min_10(w_digit_min_10),
     .w_digit_hour_1(w_digit_hour_1),
     .w_digit_hour_10(w_digit_hour_10)
    );

    uart_fsm uuart (
        .reset(reset),
        .clk(clk),
        .tx(),
        .w_empty(w_rx_done),
        .w_o_data2(rx_data),
        .rx(rx)
    );
    uart_clock u_uart_clock(
 .reset(reset),
 .clk(clk),
     .tx(tx),
    .w_msec(w_msec),
    .w_sec(w_sec),
    .w_min(w_min), 
    .w_hour(w_hour)
    );

endmodule

module uart_clock (
    input reset,
    input clk,
    output tx,
    input [6:0] w_msec,
    input [6:0] w_msec10,
    input [6:0] w_sec,
    input [6:0] w_sec10,
    input [6:0] w_min,
    input [6:0] w_min10,
    input [6:0] w_hour,
    input [6:0] w_hour10
);
    wire [7:0] w_data,w_data2,w_data3,w_data4;
    wire [7:0] w_mec2,w_sec2,w_min2, w_hour2;
    wire [7:0] o_w_hour, o_w_hour10, o_w_min, o_w_min10, o_w_sec, o_w_sec10, o_w_msec, o_w_msec10;

    fifo utx2 (
        .clk(clk),
        .reset(reset),
        .wdata(w_data),
        .wr(w_tx_start),
        .rd( ~tx_done&~w_empty2),
        .rdata(w_data2),
        .empty(w_empty2),
        .full(w_full)
    );
    tick_9600hz utick9600hz2 (
        .clk  (clk),
        .reset(reset),
        .tick (w_tick)
    );
    uart_tx u_uart_tx2 (
        .clk(clk),
        .reset(reset),
        .tick(w_tick),
        .data_in(w_data3),
        .start_trigger(~w_empty2 & ~tx_done),
        .o_tx(tx),
        .tx_done(tx_done)
    );
    
    clock_tx_control uclock_Tax(
    .w_msec(o_w_msec),
    .w_msec10(o_w_msec10),
     .w_sec(o_w_sec),
     .w_min(o_w_sec10),
     .w_hour(o_w_hour),
    .w_sec10(o_w_sec10),
     .w_min10(o_w_min10),
     .w_hour10(w_hour10),
    .clk(clk),  
    .reset(reset),
    .tx_start(w_tx_start),
    .data(w_data),
    .w_empty2(w_empty2)
    );

        data_save d_save2 (
        .clk(clk),
        .reset(reset),
        .rd(~tx_done&~w_empty2),
        .data_in(w_data2),
        .data_out(w_data3)
    );
bit_asci u_bit3(
.data0(w_hour),
.data10(w_hour10),
.o_data(o_w_hour),
.o_data10(o_w_hour10)
);
bit_asci u_bit2(
.data0(w_min),
.data10(w_min10),
.o_data(o_w_min),
.o_data10(o_w_min10)
);
bit_asci u_bit1(
.data0(w_sec),
.data10(w_sec10),
.o_data(o_w_sec),
.o_data10(o_w_sec10)
);
bit_asci u_bit4(
.data0(w_mec),
.data10(w_msec10),
.o_data(o_w_msec),
.o_data10(o_w_msec10)
);

endmodule

module clock_tx_control (
    input [7:0] w_msec,
    input [7:0] w_sec,
    input [7:0] w_min,
    input [7:0] w_hour,
    input [7:0] w_msec10,
    input [7:0] w_sec10,
    input [7:0] w_min10,
    input [7:0] w_hour10,
    input w_empty2,
    input clk,
    input reset,
    output tx_start,
    output [7:0] data
);
    parameter IDLE = 4'b0000, START = 4'b0001, HOUR = 4'b0010, DOT = 4'b0011, MIN10= 4'b0100, MIN = 4'b0101, DOT2 =4'b0110, SEC10 = 4'b0111, SEC =4'b1000, SPACE = 4'b1001,WAIT = 4'b1010;
    reg start, start_next;
    reg [3:0] data_count, data_count_next;
    reg [3:0]state, next;
    reg [7:0] data_reg, data_next;
    assign tx_start = start;
    assign data = data_reg;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 0;
            start <= 0;
            data_reg <= 0;
            data_count <= 0;
        end else begin
            start <= start_next;
            state <= next;
            data_count <= data_count_next;
            data_reg <= data_next;
        end
    end
    always @(*) begin
        start_next = 0;
        next = state;
        data_next = data_reg;
        case (state)
            IDLE:
            if(w_msec == "0")
             begin
                next = START;
            end
            START: 
            begin
                start_next = 1;
                data_next  = w_hour10;
                next = HOUR;
            end
            HOUR: if(w_empty2)
            begin
                start_next = 1;
                data_next  = w_hour;
                next = DOT;
            end
            DOT: if(w_empty2)
            begin
                start_next = 1;
                data_next  = ":";
                next = MIN10;
            end
            MIN10: if(w_empty2)
            begin
                start_next = 1;
                data_next  = w_min10; 
                next = MIN;
            end
            MIN: if(w_empty2)
            begin
                start_next = 1;
                data_next  = w_min;
                next = DOT2;
            end
             DOT2: if(w_empty2)
            begin
                start_next = 1;
                data_next  = ":";
                next = SEC10;
            end
            SEC10: if(w_empty2)
            begin
                start_next = 1;
                data_next = w_sec10;
                next = SEC;
            end
                SEC: if(w_empty2)
            begin
                start_next = 1;
                data_next = w_sec;
                next = SPACE;
            end
            SPACE: if(w_empty2)
            begin
                start_next = 1;
                data_next = "\n";
                next = WAIT;
            end
            
            WAIT: begin
                if(w_msec == "1")
                begin
                    next = IDLE;
                end
            end

        endcase
    end


endmodule

module bit_asci(
input [6:0] data0,
input [6:0] data10,
output reg [7:0] o_data, o_data10
);

always @(*) begin

    case (data0)
        0 : o_data = "0"; 
        1 : o_data = "1" ;
        2 : o_data = "2" ;
        3 : o_data = "3"; 
        4 : o_data = "4"; 
        5 : o_data = "5"; 
        6 : o_data = "6"; 
        7 : o_data = "7" ;
        8 : o_data = "8"; 
        9 : o_data = "9" ;
        
        default: o_data = "0";
    endcase
        case (data10)
        0 : o_data10 = "0"; 
        1 : o_data10 = "1" ;
        2 : o_data10 = "2" ;
        3 : o_data10 = "3"; 
        4 : o_data10 = "4"; 
        5 : o_data10 = "5"; 
        6 : o_data10 = "6"; 
        7 : o_data10 = "7" ;
        8 : o_data10 = "8"; 
        9 : o_data10 = "9" ;
        default: o_data10 = "0";
    endcase
end


endmodule

    

module uart_fsm (
    input reset,
    input clk,
    output tx,
    inout w_empty,
    output [7:0] w_o_data2,
    input rx

);
    wire w_tick, w_btn_start;
    wire w_tx_done, w_rx_done;
    wire [7:0] w_o_data, w_o_data3, w_o_data4;


    uart_tx u_uart_tx (
        .clk(clk),
        .reset(reset),
        .tick(w_tick),
        .data_in(w_o_data4),
        .start_trigger(~w_empty2 & ~tx_done),
        .o_tx(tx),
        .tx_done(tx_done)
    );

    uart_rx urx (
        .clk(clk),
        .reset(reset),
        .tick(w_tick),
        .rx(rx),
        .rx_done(w_rx_done),
        .o_data(w_o_data)
    );

    tick_9600hz utick9600hz (
        .clk  (clk),
        .reset(reset),
        .tick (w_tick)
    );

    fifo urxa (
        .clk(clk),
        .reset(reset),
        .wdata(w_o_data),
        .wr(w_rx_done),
        .rd(~w_full),
        .rdata(w_o_data2),
        .empty(w_empty),
        .full()
    );
    fifo utx (
        .clk(clk),
        .reset(reset),
        .wdata(w_o_data2),
        .wr(~w_empty),
        .rd(~w_empty2 & ~tx_done),
        .rdata(w_o_data3),
        .empty(w_empty2),
        .full(w_full)
    );
    data_save d_save (
        .clk(clk),
        .reset(reset),
        .rd(~w_empty2),
        .data_in(w_o_data3),
        .data_out(w_o_data4)
    );

endmodule





module uart_rx (
    input clk,
    input reset,
    input tick,
    input rx,
    output rx_done,
    output [7:0] o_data
);


    reg [7:0] data, data_next;
    reg [4:0] tick_count, tick_count_next;
    reg [1:0] state, next;
    reg r_rx_done, r_rx_done_next;
    reg [3:0] data_count, data_count_next;
    parameter R_IDLE = 4'h0, START = 4'h1, DATA_STATE = 4'h2, STOP = 4'h3;
    assign o_data  = data;
    assign rx_done = r_rx_done;
    assign o_data  = data;


    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 0;
            data <= 0;
            data_count <= 0;
            tick_count <= 0;
            r_rx_done <= 0;
        end else begin
            state <= next;
            r_rx_done <= r_rx_done_next;
            data_count <= data_count_next;
            tick_count <= tick_count_next;
            data <= data_next;

        end
    end


    always @(*) begin
        next = state;
        r_rx_done_next = 0;
        data_count_next = data_count;
        tick_count_next = tick_count;
        data_next = data;
        case (state)
            R_IDLE: begin
                if (rx == 0) begin
                    next = START;
                end
            end
            START: begin
                if (tick == 1) begin
                    tick_count_next = tick_count + 1;
                    if (tick_count_next == 8) begin
                        next = DATA_STATE;
                        tick_count_next = 0;
                    end
                end
            end
            DATA_STATE: begin
                if (tick == 1) begin
                    tick_count_next = tick_count + 1;
                    if (tick_count_next == 16) begin
                        data_next[data_count] = rx;
                        tick_count_next = 0;
                        data_count_next = data_count + 1;
                        if (data_count_next == 8) begin
                            data_count_next = 0;
                            tick_count_next = 0;
                            next = STOP;
                        end
                    end
                end
            end

            STOP: begin
                if (tick == 1) begin
                    tick_count_next = tick_count + 1;
                    if (tick_count_next == 24) begin
                        next = R_IDLE;
                        tick_count_next = 0;
                        r_rx_done_next = 1;
                    end
                end
            end


        endcase

    end
endmodule

module data_save (
    input clk,
    input reset,
    input rd,
    input [7:0] data_in,
    output [7:0] data_out
);
    reg [7:0] data_reg, data_next;
    assign data_out = data_reg;
    always @(posedge clk) begin
        if (reset) begin
            data_reg <= 0;
        end else begin
            data_reg <= data_next;
        end
    end
    always @(*) begin
        data_next = data_reg;
        if (rd) begin
            data_next = data_in;
        end


    end

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
    parameter R_IDLE = 4'h0, START = 4'h1, DATA_STATE = 4'h2, STOP = 4'h3;

    reg [3:0] data_count, data_count_next;
    reg [3:0] state, next;
    reg [3:0] tick_count, tick_count_next;
    reg [7:0] temp_data_reg, temp_data_next;

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
            tick_count <= 0;
        end else begin
            state <= next;
            tx <= tx_next;
            r_tx_done <= r_tx_done_next;
            data_count <= data_count_next;
            tick_count <= tick_count_next;
        end
    end


    always @(*) begin
        next = state;
        tx_next = tx;
        r_tx_done_next = r_tx_done;
        data_count_next = data_count;
        tick_count_next = tick_count;
        case (state)
            R_IDLE: begin
                tx_next = 1'b1;
                r_tx_done_next = 0;
                tick_count_next = 0;
                if (start_trigger == 1) begin
                    next = START;
                    r_tx_done_next = 1;
                end
            end
            START: begin
                if (tick == 1) begin
                    if (tick_count == 15) begin
                        tx_next = 1'b0;
                        data_count_next = 0;
                        tick_count_next = 0;
                        next = DATA_STATE;
                    end else begin
                        tick_count_next = tick_count + 1;
                    end
                end
            end

            DATA_STATE: begin
                if (tick == 1) begin
                    if (tick_count == 15) begin
                        begin
                            tx_next = data_in[data_count];
                            data_count_next = data_count + 1;
                            tick_count_next = 0;
                            if (data_count_next == 8) begin
                                next = STOP;
                            end
                        end
                    end else begin
                        tick_count_next = tick_count + 1;
                    end
                end
            end
            STOP: begin
                if (tick == 1) begin
                    if (tick_count == 15) begin
                        data_count_next = 0;
                        tx_next = 1'b1;
                        tick_count_next = 0;
                        next = R_IDLE;
                    end else begin
                        tick_count_next = tick_count + 1;
                    end
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
    localparam BAUD_COUNT = (100_000_000 / BAUD_RATE) / 16;
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





module fifo (
    input clk,
    input reset,
    // write
    input [7:0] wdata,
    input wr,
    // read
    input rd,
    output [7:0] rdata,
    output empty,
    output full
);

    wire [3:0] w_waddr, w_raddr;


    register_file uregister (
        .clk(clk),
        .waddr(w_waddr),
        .wdata(wdata),
        .raddr(w_raddr),
        .wr({~full & wr}),
        .rdata(rdata)
    );


    fifo_cu ufifo_cu (
        .clk(clk),
        .reset(reset),
        .wr(wr),
        .rd(rd),
        .waddr(w_waddr),
        .raddr(w_raddr),
        .full(full),
        .empty(empty)
    );

endmodule


module register_file (
    input clk,
    input [3:0] waddr,
    input [7:0] wdata,
    input [3:0] raddr,
    input wr,
    output [7:0] rdata
);

    reg [7:0] ram[0:2**4-1];

    assign rdata = ram[raddr];  // 0 0 일떄 우선순위?

    always @(posedge clk) begin
        if (wr) begin
            ram[waddr] = wdata;
        end
    end

endmodule


module fifo_cu (
    input clk,
    input reset,
    input wr,
    input rd,
    output [3:0] waddr,
    output [3:0] raddr,
    output full,
    output empty
);

    reg full_reg, full_next, empty_reg, empty_next;
    reg [3:0] w_ptr, w_ptr_next, r_ptr, r_ptr_next;
    assign empty = empty_reg;
    assign full  = full_reg;
    assign waddr = w_ptr;
    assign raddr = r_ptr;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            w_ptr <= 0;
            r_ptr <= 0;
            full_reg <= 0;
            empty_reg <= 1;
        end else begin
            full_reg <= full_next;
            empty_reg <= empty_next;
            w_ptr <= w_ptr_next;
            r_ptr <= r_ptr_next;
        end
    end

    always @(*) begin
        full_next  = full_reg;
        empty_next = empty_reg;
        w_ptr_next = w_ptr;
        r_ptr_next = r_ptr;
        case ({
            wr, rd
        })  // state 입력은 외부에서서
            2'b01: begin
                if (empty_reg == 0) begin
                    r_ptr_next = r_ptr + 1;
                    full_next  = 1'b0;
                    if (w_ptr_next == r_ptr_next) begin
                        empty_next = 1'b1;
                    end
                end
            end
            2'b10: begin
                if (full_reg == 0) begin
                    w_ptr_next = w_ptr + 1;
                    empty_next = 1'b0;
                    if (w_ptr_next == r_ptr_next) begin
                        full_next = 1'b1;
                    end
                end
            end

            2'b11: begin
                if(empty_reg == 1'b1) begin // 동시에 들어올때 empty면 read는 무시
                    w_ptr_next = w_ptr + 1;
                    empty_next = 1'b0;
                end else if (full_reg == 1'b1) begin
                    r_ptr_next = r_ptr + 1;
                    full_next  = 1'b0;
                end else begin
                    r_ptr_next = r_ptr + 1;
                    w_ptr_next = w_ptr + 1;
                end
            end

        endcase
    end

endmodule
