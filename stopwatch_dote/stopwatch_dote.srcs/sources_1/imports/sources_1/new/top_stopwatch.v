

module top_stopwatch (
    input clk,
    input reset,
    input [7:0] rx_data,
    input btn_run,
    input btn_clear,
    input btn_up,
    input btn_set,
    input btn_down,
    input rx_done,
    output [3:0] fnd_comm,
    output [7:0] fnd_font,
    output [3:0] led,
    output [6:0] w_digit_mec_1,
    output [6:0] w_digit_mec_10,
    output [6:0] w_digit_sec_1,
    output [6:0] w_digit_sec_10,
    output [6:0] w_digit_min_1,
    output [6:0] w_digit_min_10,
    output [6:0] w_digit_hour_1,
    output [6:0] w_digit_hour_10,
    output [1:0] sw
);

    
    wire [6:0] w_msec2, w_sec2, w_min2, w_hour2;
    wire [6:0] w_msec3, w_sec3, w_min3, w_hour3;
    wire w_run,w_clear;
    wire [1:0] w_set;
    wire w_btn_run,w_btn_clear,w_btn_up,w_btn_down,w_btn_set;
    wire [4:0] btn;

    
    led u_led (
    .sw(sw),
    .led(led)
    );

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
    btn_debounce u_btn3 (
        .i_btn(btn_up),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_btn_up)
    );
    btn_debounce u_btn4 (
        .i_btn(btn_down),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_btn_down)
    );
       btn_debounce u_btn5 (
        .i_btn(btn_set),
        .clk  (clk),
        .reset(reset),
        .o_btn(w_btn_set)
    );
    clock_set u_clock_set (
    .clk(clk),
    .reset(reset),
    .i_set(w_btn_set | btn[2]),
    .sw(sw[1]),
     .o_set(w_set)
);
        stopwatch_cu2 U_CU2 (
        .clk(clk),
        .reset(reset),
        .i_run_stop(w_btn_run | btn[0]),
        .sw(sw[1]),
        .i_clear({w_btn_clear || btn[1]}),
        .o_run_stop(w_run),
        .o_clear(w_clear)
    );
    stopwatch_dp2 dps2(
     .clk(clk),
     .reset(reset),
     .run(w_run),
     .clear(w_clear),
    .msec(w_msec2),
    .sec(w_sec2),
    .min(w_min2),
    .hour(w_hour2)
    );

    stopwatch_dp dps(
     .clk(clk),
     .reset(reset),
     .up({w_btn_up || btn[3]}),
     .sw(sw[1]),    
     .down({w_btn_down || btn[4]}),
     .set({w_btn_set || btn[2]}),
    .msec(w_msec),
    .sec(w_sec),
    .min(w_min),
    .hour(w_hour),
    .i_set(w_set)
    );
    
    fnd_controlloer U_counter (  //control anod segments
        .clk(clk),
        .sw(sw),
        .set(w_set),
        .reset(reset),
        .msec(w_msec3),
        .sec(w_sec3),
        .min(w_min3),
        .hour(w_hour3),
        .seg_out(fnd_font),
        .seg_comm(fnd_comm),
    .w_digit_mec_1(w_digit_mec_1),
    .w_digit_mec_10(w_digit_mec_10),
    .w_digit_sec_1(w_digit_sec_1),
    .w_digit_sec_10(w_digit_sec_10),
    .w_digit_min_1(w_digit_min_1),
    .w_digit_min_10(w_digit_min_10),
    .w_digit_hour_1(w_digit_hour_1),
    .w_digit_hour_10(w_digit_hour_10)
    );
    st_cl ust_c (
    .sw(sw[1]),
    .msec1(w_msec),
        .sec1(w_sec),
        .min1(w_min),
        .hour1(w_hour),
        .msec2(w_msec2),
        .sec2(w_sec2),
        .min2(w_min2),
        .hour2(w_hour2),
            .msec3(w_msec3),
            .sec3(w_sec3),
            .min3(w_min3),
            .hour3(w_hour3)
);

    transasci utrans(
    .rx_data(rx_data),
    .clk(clk),
    .reset(reset),
    .rx_done(rx_done),
    .sw(sw),
    .btn(btn)
);
endmodule

module transasci (
    input [7:0] rx_data,
    input clk,
    input rx_done,
    input reset,
    output [1:0] sw,
    output [4:0] btn
);
reg [1:0] sw_reg, sw_next;
reg [4:0] btn_reg, btn_next;
assign btn = btn_reg;
assign sw = sw_reg;

always @(posedge clk, posedge reset) begin
    if(reset) begin
        sw_reg <= 0;
        btn_reg <= 0;
    end
    else begin
        btn_reg <= btn_next;
        sw_reg <= sw_next;
    end
end
always @(*) begin
    btn_next = 5'b0;
    sw_next =sw_reg;
if (rx_done == 1) begin
case (rx_data)
        "m" : if (sw_reg[1] == 1'b0) begin
            sw_next[1] = 1'b1;
        end
        else begin
            sw_next[1] = 1'b0;
        end
        "n" : if (sw_reg[0] == 1'b0) begin
            sw_next[0] = 1'b1;
        end
        else begin
            sw_next[0] = 1'b0;
        end
        "r" : btn_next = 5'b00001;
        "c" : btn_next = 5'b00010;
        "s" : btn_next = 5'b00100;
        "u" : btn_next = 5'b01000;
        "d" : btn_next = 5'b10000;
endcase
end
end




    
endmodule

module led (
    input [1:0] sw,
    output [3:0] led
);
      reg [3:0] r_led;
    assign led = r_led; 
    always @(*) begin
        case (sw)
            2'b00 : r_led = 4'b0001;
            2'b01 : r_led = 4'b0010;
            2'b10 : r_led = 4'b0100;
            2'b11 : r_led = 4'b1000;
            default: r_led = 4'b0001;
        endcase
    end
endmodule

module st_cl (
    input sw,
    input sw2,
    input [6:0] msec1,
    input [6:0] sec1,
    input [6:0] min1,
    input [6:0] hour1,
    input [6:0] msec2,
    input [6:0] sec2,
    input [6:0] min2,
    input [6:0] hour2,
    output reg [6:0] msec3,
    output reg [6:0] sec3,
    output reg [6:0] min3,
    output reg [6:0] hour3
);
always @(*) begin
    case (sw)
       1'b1 : begin
        msec3 = msec1;
        sec3 = sec1;
        min3 = min1;
        hour3 = hour1;
       end 
       1'b0 :
       begin
        msec3 = msec2;
        sec3 = sec2;
        min3 = min2;
        hour3 = hour2;
       end 
        default: begin
        msec3 = msec1;
        sec3 = sec1;
        min3 = min1;
        hour3 = hour1;
       end 
    endcase
end



    
endmodule
