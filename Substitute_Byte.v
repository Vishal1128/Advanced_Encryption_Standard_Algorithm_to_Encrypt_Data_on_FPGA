`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 19:21:42
// Design Name: 
// Module Name: Substitute_Byte
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


module Substitute_Byte (data,sb);

 
input [127:0] data;
output [127:0] sb;

     S_Box v0( .a(data[127:120]),.c(sb[127:120]) );
     S_Box v1( .a(data[119:112]),.c(sb[119:112]) );
     S_Box v2( .a(data[111:104]),.c(sb[111:104]) );
     S_Box v3( .a(data[103:96]),.c(sb[103:96]) );
     
     S_Box v4( .a(data[95:88]),.c(sb[95:88]) );
     S_Box v5( .a(data[87:80]),.c(sb[87:80]) );
     S_Box v6( .a(data[79:72]),.c(sb[79:72]) );
     S_Box v7( .a(data[71:64]),.c(sb[71:64]) );
           
     S_Box v8( .a(data[63:56]),.c(sb[63:56]) );
     S_Box v9( .a(data[55:48]),.c(sb[55:48]) );
     S_Box v10(.a(data[47:40]),.c(sb[47:40]) );
     S_Box v11(.a(data[39:32]),.c(sb[39:32]) );
     
     S_Box v12(.a(data[31:24]),.c(sb[31:24]) );
     S_Box v13(.a(data[23:16]),.c(sb[23:16]) );
     S_Box v14(.a(data[15:8]),.c(sb[15:8]) );
     S_Box v15(.a(data[7:0]),.c(sb[7:0]) ); 
   
endmodule
