`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 19:22:58
// Design Name: 
// Module Name: Mix_Columns
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


module Mix_Columns(a,out);

  input [127:0] a;
output [127:0] out;


Mix_Columns_32 v16(a[127:120],a[119:112],a[111:104],a[103:96],out[127:120]);
Mix_Columns_32 v15(a[119:112],a[111:104],a[103:96],a[127:120],out[119:112]);
Mix_Columns_32 v14(a[111:104],a[103:96],a[127:120],a[119:112],out[111:104]);
Mix_Columns_32 v13(a[103:96],a[127:120],a[119:112],a[111:104],out[103:96]);

Mix_Columns_32 v12(a[95:88],a[87:80],a[79:72],a[71:64],out[95:88]);
Mix_Columns_32 v11(a[87:80],a[79:72],a[71:64],a[95:88],out[87:80]);
Mix_Columns_32 v10(a[79:72],a[71:64],a[95:88],a[87:80],out[79:72]);
Mix_Columns_32 v9(a[71:64],a[95:88],a[87:80],a[79:72],out[71:64]);

Mix_Columns_32 v8(a[63:56],a[55:48],a[47:40],a[39:32],out[63:56]);
Mix_Columns_32 v7(a[55:48],a[47:40],a[39:32],a[63:56],out[55:48]);
Mix_Columns_32 v6(a[47:40],a[39:32],a[63:56],a[55:48],out[47:40]);
Mix_Columns_32 v5(a[39:32],a[63:56],a[55:48],a[47:40],out[39:32]);

Mix_Columns_32 v4(a[31:24],a[23:16],a[15:8],a[7:0],out[31:24]);
Mix_Columns_32 v3(a[23:16],a[15:8],a[7:0],a[31:24],out[23:16]);
Mix_Columns_32 v2(a[15:8],a[7:0],a[31:24],a[23:16],out[15:8]);
Mix_Columns_32 v1(a[7:0],a[31:24],a[23:16],a[15:8],out[7:0]);


  
endmodule
