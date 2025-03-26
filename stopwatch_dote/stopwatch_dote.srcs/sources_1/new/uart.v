`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 15:38:54
// Design Name: 
// Module Name: uart
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



module uart_clock (
    input reset,
    input clk,
    input finish_tick,
    input start_trigger,
    output tx,
    input [15:0] sensor_data
);


    wire [15:0] w_sensor_data;
    wire [6:0] w_o_data;
    wire [6:0] w_o_data10;
    wire [6:0] w_o_data100;
    wire [6:0] w_o_data1000;


    fifo utx2 (
        .clk(clk),
        .reset(reset),
        .wdata(w_data),
        .wr(w_tx_start),
        .rd(~tx_done & ~w_empty2),
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

    clock_tx_control uclock_Tx (
        .o_data(w_o_data),
        .o_data10(w_o_data10),
        .o_data100(w_o_data100),
        .o_data1000(w_o_data1000),
        .clk(clk),
        .reset(reset),
        .tx_start(w_tx_start),
             .finish_tick(finish_tick),
     .start_trigger(start_trigger),
        .data(w_data),
        .w_empty2(w_empty2)
    );
    data_save d_save2 (
        .clk(clk),
        .reset(reset),
        .rd(~tx_done & ~w_empty2),
        .data_in(w_data2),
        .data_out(w_data3)
    );
    bit_asci u_bit (
        .data(w_sensor_data),
        .o_data(w_o_data),
        .o_data10(w_o_data10),
        .o_data100(w_o_data100),
        .o_data1000(w_o_data1000)
    );


endmodule




module clock_tx_control (
    input [6:0] o_data,
    input [6:0] o_data10,
    input [6:0] o_data100,
    input [6:0] o_data1000,
    input finish_tick,
    input start_trigger,
    input w_empty2,
    input clk,
    input reset,
    output tx_start,
    output [7:0] data
);
    parameter IDLE = 4'b0000, DATA = 4'b0001, DATA2 = 4'b0010, DATA3 = 4'b0011, DATA4= 4'b0100, DATA5 = 4'b0101, DATA6 =4'b0110, DATA7 = 4'b0111, DATA8 =4'b1000, SPACE = 4'b1001,WAIT = 4'b1010;
    reg start, start_next;
    reg [3:0] data_count, data_count_next;
    reg [3:0] state, next;
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
        data_count_next = data_count;
        case (state)
            IDLE:
            if (finish_tick == 1) begin
                next = DATA;
            end
            DATA: begin
                start_next = 1;
                data_next = "d";
                next = DATA2;
            end
            DATA2: begin
                start_next = 1;
                data_next = "i";
                next = DATA3;
            end
            DATA3: begin
                start_next = 1;
                data_next = "s";
                next = DATA4;
            end
            DATA4: begin
                start_next = 1;
                data_next = ":";
                next = DATA5;
            end
            DATA5: begin
                start_next = 1;
                data_next = o_data1000;
                next = DATA6;
            end
            DATA6: begin
                start_next = 1;
                data_next = o_data100;
                next = DATA7;
            end
            DATA7: begin
                start_next = 1;
                data_next = o_data10;
                next = DATA8;
            end
            DATA8: begin
                start_next = 1;
                data_next = o_data;
                next = SPACE;
            end
            SPACE: begin
                start_next = 1;
                data_next = "\n";
                next = WAIT;
            end

            WAIT: begin
                if (start_trigger == 1) begin
                    next = IDLE;
                end
            end

        endcase
    end


endmodule

module bit_asci (
    input [15:0] data,
    output reg [7:0] o_data,
    o_data10,
    o_data100,
    o_data1000
);
    reg [7:0] data0, data10,data100,data1000;
    always @(*) begin
        data0  = data % 10;
        data10 = data / 10 % 10;
        data100 = data /100 %10;
        data1000 = data /1000 %10;
        case (data0)
            0: o_data = "0";
            1: o_data = "1";
            2: o_data = "2";
            3: o_data = "3";
            4: o_data = "4";
            5: o_data = "5";
            6: o_data = "6";
            7: o_data = "7";
            8: o_data = "8";
            9: o_data = "9";

            default: o_data = "0";
        endcase
        case (data10)
            0: o_data10 = "0";
            1: o_data10 = "1";
            2: o_data10 = "2";
            3: o_data10 = "3";
            4: o_data10 = "4";
            5: o_data10 = "5";
            6: o_data10 = "6";
            7: o_data10 = "7";
            8: o_data10 = "8";
            9: o_data10 = "9";
            default: o_data10 = "0";
        endcase
                case (data100)
            0: o_data100 = "0";
            1: o_data100 = "1";
            2: o_data100 = "2";
            3: o_data100 = "3";
            4: o_data100 = "4";
            5: o_data100 = "5";
            6: o_data100 = "6";
            7: o_data100 = "7";
            8: o_data100 = "8";
            9: o_data100 = "9";
            default: o_data100 = "0";
        endcase
                case (data1000)
            0: o_data1000 = "0";
            1: o_data1000 = "1";
            2: o_data1000 = "2";
            3: o_data1000 = "3";
            4: o_data1000 = "4";
            5: o_data1000 = "5";
            6: o_data1000 = "6";
            7: o_data1000 = "7";
            8: o_data1000 = "8";
            9: o_data1000 = "9";
            default: o_data1000 = "0";
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
