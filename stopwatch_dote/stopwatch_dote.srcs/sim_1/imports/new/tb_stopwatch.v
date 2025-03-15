`timescale 1ns / 1ps


module tb_stopwatch ();

    reg clk, reset, run, clear, up, down, set;
    reg  [1:0] sw;
    wire [3:0] fnd_comm;
    wire [7:0] fnd_font;


    top_stopwatch uclk (
        .clk(clk),
        .sw(sw),
        .reset(reset),
        .btn_run(run),
        .btn_clear(clear),
        .btn_up(up),
        .btn_set(set),
        .btn_down(down),
        .fnd_comm(fnd_comm),
        .fnd_font(fnd_font)
    );

    integer  i;

    always #0.05 clk = ~clk;
    initial begin
        #50;
        clk = 0;
        reset = 1;
        run = 0;
        clear = 0;
        set = 0;
        up = 0;
        down = 0;  
        #10;
        reset = 0; 
        sw = 2'b00;  // 기능 초기화
        #10;
        sw = 2'b11; // 시계모드로 변경
        #10;
        set = 1;
        #100000;
        set = 0;
        #100000; // 초 변경모드 on
                set = 1;
        #100000;
        set = 0;
        #100000; // 초 변경모드 on
                set = 1;
        #100000;
        set = 0;
        #100000; // 초 변경모드 on

        for (i=0; i<15; i= i+1)//down 30번 실행
        begin
            down = 1;
        #100000;
        down = 0;
        #100000;
        end 
          for (i=0; i<15; i= i+1) //up 35번 실행
        begin
            up = 1;
        #100000;
        up = 0;
        #100000;
        end

           #10;
        set = 1;
        #100000;
        set = 0;
        #100000; // 분 변경모드 on

        for (i=0; i<30; i= i+1)//down 30번 실행
        begin
            down = 1;
        #100000;
        down = 0;
        #100000;
        end 
          for (i=0; i<35; i= i+1) //up 35번 실행
        begin
            up = 1;
        #100000;
        up = 0;
        #100000;
        end       
        clear = 1;

        clear = 1;


        #100000;
        #10;



    end
    //첫 comit
endmodule
