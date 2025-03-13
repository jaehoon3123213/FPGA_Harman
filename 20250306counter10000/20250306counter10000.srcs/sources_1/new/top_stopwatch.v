

module top_stopwatch (
    input clk,
    input reset,
    input btn_run,
    input btn_clear,
    output [3:0] fnd_comm,
    output [7:0] fnd_font
);


    wire [6:0] w_msec, w_sec, w_min, w_hour;
    wire w_run,w_clear;
    wire w_btn_run,w_btn_clear;

        // );
    btn_debounce u_btn (
        .i_btn(btn_run),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_btn_run)
    );

    btn_debounce u_btn2 (
        .i_btn(btn_clear),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_btn_clear)
    );

    stopwatch_cu U_CU (
        .clk(clk),
        .reset(reset),
        .i_run_stop(w_btn_run),
        .i_clear(w_btn_clear),
        .o_run_stop(w_run),
        .o_clear(w_clear)
    );
    stopwatch_dp dps(
     .clk(clk),
     .reset(reset),
     .run(w_run),
     .clear(w_clear),
    .msec(w_msec),
    .sec(w_sec),
    .min(w_min),
    .hour(w_hour)
    );
    fnd_controlloer U_counter (  //control anod segments
        .clk(clk),
        .reset(reset),
        .msec(w_msec),
        .sec(w_sec),
        .min(w_min),
        .hour(w_hour),
        .seg_out(fnd_font),
        .seg_comm(fnd_comm)
    );
endmodule
