`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 20:08:22
// Design Name: 
// Module Name: Mix_Columns_32
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


module Mix_Columns_32(

input [7:0] in1,in2,in3,in4,
output [7:0] mixcolumns32);


assign mixcolumns32[7] = in1[6] ^ in2[6] ^ in2[7] ^ in3[7] ^ in4[7];
assign mixcolumns32[6] = in1[5] ^ in2[5] ^ in2[6] ^ in3[6] ^ in4[6];
assign mixcolumns32[5] = in1[4] ^ in2[4] ^ in2[5] ^ in3[5] ^ in4[5];
assign mixcolumns32[4] = in1[3] ^ in1[7] ^ in2[3] ^ in2[4] ^ in2[7] ^ in3[4] ^ in4[4];
assign mixcolumns32[3] = in1[2] ^ in1[7] ^ in2[2] ^ in2[3] ^ in2[7] ^ in3[3] ^ in4[3];
assign mixcolumns32[2] = in1[1] ^ in2[1] ^ in2[2] ^ in3[2] ^ in4[2];
assign mixcolumns32[1] = in1[0] ^ in1[7] ^ in2[0] ^ in2[1] ^ in2[7] ^ in3[1] ^ in4[1];
assign mixcolumns32[0] = in1[7] ^ in2[7] ^ in2[0] ^ in3[0] ^ in4[0];

  

endmodule
