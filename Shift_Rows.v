`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 20:45:30
// Design Name: 
// Module Name: Shift_Rows
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


module Shift_Rows(input [127:0] istate,output [127:0] ostate);

assign ostate[127:120]=istate[127:120];
assign ostate[95:88]=istate[95:88];
assign ostate[63:56]=istate[63:56];
assign ostate[31:24]=istate[31:24];

assign ostate[119:112]=istate[87:80];
assign ostate[87:80]=istate[55:48];
assign ostate[55:48]=istate[23:16];
assign ostate[23:16]=istate[119:112];

assign ostate[111:104]=istate[47:40];
assign ostate[79:72]=istate[15:8];
assign ostate[47:40]=istate[111:104];
assign ostate[15:8]=istate[79:72];

assign ostate[103:96]=istate[7:0];
assign ostate[71:64]=istate[103:96];
assign ostate[39:32]=istate[71:64];
assign ostate[7:0]=istate[39:32];



endmodule
