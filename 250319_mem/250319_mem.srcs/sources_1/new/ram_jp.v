// `timescale 1ns / 1ps
// //////////////////////////////////////////////////////////////////////////////////
// // Company: 
// // Engineer: 
// // 
// // Create Date: 2025/03/19 10:51:00
// // Design Name: 
// // Module Name: ram_jp
// // Project Name: 
// // Target Devices: 
// // Tool Versions: 
// // Description: 
// // 
// // Dependencies: 
// // 
// // Revision:
// // Revision 0.01 - File Created
// // Additional Comments:
// // 
// //////////////////////////////////////////////////////////////////////////////////


// module FIFO #(parameter ADDR_WIDTH = 4, DATA_WIDTH = 8) (
//     input wdata,
//     input reset,
//     input wr,
//     input clk,
//     input rd,
//     output full,
//     output rdata,
//     output empty
    
// );
    
// parameter EMPTY = 2'b00, NORMAL = 2'b01, FULL = 2'b10;
// reg state, next;
// reg [ADDR_WIDTH-1 : 0] w_ptr, r_ptr,w_ptr_next, r_ptr_next;


// always @(posedge clk, posedge reset) begin
//     if (reset) begin
//         w_ptr <= 0;
//         r_ptr <= 0;
//     end
//     else begin
//        w_ptr <= w_ptr_next;
//        r_ptr <= r_ptr_next;
//     end
// end


// always @(*) begin
//     w_ptr_next = w_ptr;
//     r_ptr_next = r_ptr;
//     case (state)
//         EMPTY:if(rd == 1)

//         NORMAL: if 

//         FULL:
//     endcase
// end
    










// endmodule

// module ram_ip#(parameter ADDR_WIDTH = 4, DATA_WIDTH = 8)(
// input clk,
// input [ADDR_WIDTH -1 :0] waddr,
// input [DATA_WIDTH -1 :0] wdata,
// input wr,
// output [7:0] rdata
//     );


// reg [DATA_WIDTH-1 : 0] ram[0:2**ADDR_WIDTH -1]; // 2**4 2의 4승
// // reg [DATA_WIDTH-1 : 0] reg_rdata;

// // assign rdata = reg_rdata;
// //write

// assign rdata = ram[waddr];
// always @(posedge clk) begin
//     if(wr)begin
//         ram[waddr] <= wdata;
//     end
// end


// // read

// // always @(posedge clk) begin
// //     if(!wr) begin
// //         reg_rdata <= ram[waddr];
// //     end
// // end




// endmodule
