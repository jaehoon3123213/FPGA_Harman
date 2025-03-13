`timescale 1ns / 1ps






module bcd_tenseg (
    input  [7:0] bcd,
    input over,
    output [7:0] seg,
    output reg [3:0] seg_comm
);




    bcd_to_tenteg bcdto (
        .bcd(bcd),
        .seg(seg),
        .over(over),
        .seg_comm(seg_comm)
    );
endmodule

module dig_split (
    input 
);
    
endmodule


module bcd_to_tenteg (
    input [7:0] bcd,
    input over,
    output reg [7:0] seg,
    output reg [3:0] seg_comm
);

reg res;
reg over_res;
    always @(bcd) //bcd의 이벤트를 감시(항상감시하다) always문의 출력은 항상 reg
begin

        res = bcd%8'ha;
        case (res)
            8'h00: seg = 8'hc0;
            8'h01: seg = 8'hf9;
            8'h02: seg = 8'ha4;
            8'h03: seg = 8'hb0;
            8'h04: seg = 8'h99;
            8'h05: seg = 8'h92;
            8'h06: seg = 8'h82;
            8'h07: seg = 8'hf8;
            8'h08: seg = 8'h80;
            8'h09: seg = 8'h90;
            default: seg = 8'hff;
        endcase
        

    end
always @(res_one) 
    begin
       seg_comm = 4'b1110;
    end
always @(res_ten) 
    begin
       seg_comm = 4'b1101;
    end
always @(res_hund) 
    begin
       seg_comm = 4'b1110;
    end

always @(over)
begin     
     over_res= over/4'ha;
       case (over)
            8'h00: seg = 8'hc0;
            8'h01: seg = 8'hf9;
            8'h02: seg = 8'ha4;
            8'h03: seg = 8'hb0;
        endcase
end
endmodule

