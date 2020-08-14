`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 21:22:27
// Design Name: 
// Module Name: Key_Generate
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


module Key_Generate(input [3:0] rc,input [127:0] kin,output [127:0] kout);

wire [31:0] word0,word1,word2,word3,rcout,temp;

assign word0=kin[127:96];
assign word1=kin[95:64];
assign word2=kin[63:32];
assign word3=kin[31:0];

roundconst r1(rc,rcout);

S_Box a1(.a(word3[23:16]),.c(temp[31:24]));
S_Box a2(.a(word3[15:8]),.c(temp[23:16]));
S_Box a3(.a(word3[7:0]),.c(temp[15:8]));
S_Box a4(.a(word3[31:24]),.c(temp[7:0]));

assign kout[127:96]= word0 ^ temp ^ rcout;
assign kout[95:64] = word0 ^ temp ^ rcout^ word1;
assign kout[63:32] = word0 ^ temp ^ rcout^ word1 ^ word2;
assign kout[31:0]  = word0 ^ temp ^ rcout^ word1 ^ word2 ^ word3;

  
endmodule
