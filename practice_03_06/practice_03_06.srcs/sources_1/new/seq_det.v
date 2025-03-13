module fsm_5 (
    input sw,
    input clk,
    input reset,
    output reg dout
); 
    parameter [2:0] IDLE = 3'b000;
    parameter [2:0] rd0_once = 3'b001;
    parameter [2:0] rd0_twice = 3'b011;
    parameter [2:0] rd1_twice = 3'b100;
    parameter [2:0] rd1_once = 3'b010;

 
    reg [2:0] state, next;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 3'b000;
        end else begin
            state <= next;
        end
    end
    always @(*) begin
        next = state; //초기값
        case (state)
            IDLE:
            if (sw == 1'b0) begin
                next = rd0_once;
            end else if (sw == 1'b1) begin
                next = rd1_once;
            end else begin
                next = state;
            end
            rd0_once:
            if (sw == 1'b0) begin
                next = rd0_twice;
            end else if (sw ==1'b1) begin
                next = rd1_once;
                end
                else begin
                next = state;
            end
            rd0_twice:
            if (sw == 1'b1) begin
                next = rd1_once;
            end 
            else if (sw == 1'b0) begin
                next = rd0_twice;
            end else begin
                next = state;
            end
            rd1_twice:
            if (sw == 1'b0) begin
                next = rd0_once;
            end else if (sw == 1'b1) begin
                next = rd1_twice;
            end else begin
                next = state;
            end
            rd1_once:
            if (sw == 1'b0) begin
                next = rd0_once;
            end  
            else if (sw == 1'b1) begin
                next = rd1_twice;
            end
             else begin
                next = state;
            end
        endcase
    end
    always @(*) begin
   case (state)
            IDLE:
            if (sw == 1'b0) begin
                dout = 1'b0;
            end else if (sw == 1'b1) begin
                dout = 1'b0;
            end else begin
                dout = 1'b0;
            end
            rd0_once:
            if (sw == 1'b0) begin
                dout = 1;
            end else if (sw ==1'b1) begin
                dout = 0;
                end
                else begin
                dout = 0;
            end
            rd0_twice:
            if (sw == 1'b0) begin
                dout = 1;
            end 
            else if (sw == 1'b1) begin
                dout = 0;
            end else begin
                dout = 0;
            end
            rd1_twice:
            if (sw == 1'b0) begin
                dout = 0;
            end else if (sw == 1'b1) begin
                dout = 1;
            end else begin
                dout = 0;
            end
            rd1_once:
            if (sw == 1'b0) begin
                dout = 0;
            end  
            else if (sw == 1'b1) begin
                dout = 1;
            end
             else begin
                dout = 0;
            end
        endcase
    end
endmodule
