// `timescale 1ns / 1ps



// module counter9999 (
//     input clk,
//     input reset,
//     input clear,
//     output [15:0] count
// );

//     reg [15:0] count_9999;
//     assign count = count_9999;
//     always @(posedge clk, posedge reset, posedge clear) begin
//         if (reset | clear == 1'b1) begin
//             count_9999 <= 0;
//         end else if (count_9999 == 9999) begin
//             count_9999 <= 0;
//         end else begin
//             count_9999 <= count_9999 + 1;
//         end
//     end
// endmodule

// // module counter9999(
// // input clk_10,
// // input clk_100,
// // output [15:0] count
// // );

// // reg [15:0] count_9999;
// // assign count=count_9999;

// // reg state,next;
// // always@(posedge clk_100) begin
// //     if (clk_10 == 1'b1 ) begin
// //         count_9999 <= count_9999 +1;
// //     end



// // end
// // endmodule


// module control_unit (
//     input  clk,
//     input  reset,
//     input  i_run_stop,
//     input  i_clear,
//     output o_run_stop,
//     output o_clear
// );  

//     reg r_o_run_stop, r_o_clear;
//     assign o_clear = r_o_clear;
//     assign o_run_stop = r_o_run_stop;
//     reg [2:0] state, next;
//     parameter STOP = 3'b000, RUN = 3'b001 , CLEAR = 3'b010;
//     always @(posedge clk, posedge reset) begin
//         if (reset) begin
//             state <= STOP;
//         end else begin
//             state <= next;
//         end
//     end
//     always @(*) begin
//         next = state;
//         case (state)
//             STOP:
//             if (i_run_stop == 1'b1) begin
//                 next = RUN;
//             end else if (i_clear == 1'b1) begin
//                 next = CLEAR;
//             end else begin
//                 next = state;
//             end
//             RUN:
//             if (i_run_stop == 1'b1) begin
//                 next = STOP;
//             end else if (i_clear == 1'b1) begin
//                 next = CLEAR;
//             end else begin
//                 next = state;
//             end
//             CLEAR:
//             if (i_clear == 1'b0) begin
//                 next = STOP;

//             end else begin
//                 next = state;
//             end
//             default: next = state;
//         endcase
//     end

//     always @(*) begin
//         r_o_run_stop = 1'b0;
//         r_o_clear = 1'b0;
//         case (state)
//             RUN: begin
//                 r_o_run_stop = 1'b1;
//                 r_o_clear = 1'b0;
//             end
//             STOP: begin
//                 r_o_run_stop = 1'b0;
//                 r_o_clear = 1'b0;
//             end
//             CLEAR: begin
//                 r_o_run_stop = 1'b0;
//                 r_o_clear = 1'b1;
//             end
//             default: begin
//                 r_o_run_stop = 1'b0;
//                 r_o_clear = 1'b0;
//             end
//         endcase

//     end
// endmodule

// module counter_tick #(parameter TICK_COUNT = 10_000)(
//     input clk,
//     input reset,
//     input tick,
//     input clear,
//     output [$clog2(TICK_COUNT):0] counter,
//     output o_tick
// );
//     reg [$clog2(TICK_COUNT):0] counter_reg, counter_next;
//     reg r_o_tick;
//     assign counter = counter_reg;
//     assign o_tick =  r_o_tick;
//     always @(posedge clk, posedge reset) begin
//         if (reset) begin
//             counter_reg <= 0;
//         end else begin
//             counter_reg <= counter_next;
//         end
//     end
    
//     always @(*) begin
//         counter_next = counter_reg;
//         if (clear == 1'b1) begin
//             counter_next = 0;
//             r_o_tick =0;
//         end
//         if (tick == 1'b1) begin
//             if (counter_reg == TICK_COUNT - 1) begin
//                 counter_next = 0;
//                 r_o_tick =1;
//             end else begin
//                 counter_next = counter_reg + 1;  //counter reg?
//                 r_o_tick =0;
//             end
//         end
//     end
// endmodule


// module tick_100hz (
//     input clk,  //100mhz
//     input reset,
//     input runs,
//     output o_tick_100hz
// );
//     parameter STOP = 1'b0, RUN = 1'b1;
//     parameter FCOUNT = 1000_000;
//     reg state, next;
//     reg r_clk;
//     reg u_clk;
//     assign o_tick_100hz = r_clk;
//     reg [$clog2(FCOUNT)-1:0] r_counter;

//     always @(posedge clk, posedge reset) begin
//         if (reset) begin
//             state = STOP;
//         end else begin
//             state = next;
//         end
//     end
//     always @(*) begin
//         next = state;
//         case (state)
//             RUN:
//             if (runs == 1'b0) begin
//                 next = STOP;
//             end else begin
//                 next = state;
//             end
//             STOP:
//             if (runs == 1'b1) begin
//                 next = RUN;
//             end else begin
//                 next = state;
//             end
//             default: next = state;
//         endcase
//     end
//     always @(*) begin
//         case (state)
//             RUN: r_clk = u_clk;

//             STOP: r_clk = 0;
//             default: r_clk = 0;
//         endcase
//     end

//     always @(posedge clk, posedge reset) begin
//         if (reset == 1'b1) begin
//             r_counter <= 0;
//             u_clk <= 1'b0;
//         end else begin
//             if (r_counter == FCOUNT - 1) begin
//                 r_counter <= 0;
//                 u_clk <= 1;
//             end else begin
//                 u_clk <= 1'b0;
//                 r_counter <= r_counter + 1;
//             end
//         end
//     end

// endmodule
