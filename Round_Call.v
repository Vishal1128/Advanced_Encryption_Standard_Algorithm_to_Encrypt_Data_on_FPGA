`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 20:48:16
// Design Name: 
// Module Name: Round_Call
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


module Round_Call(input clock,input [127:0] din,input [3:0] roundcount,input [127:0] kin, output [127:0] kout,output [127:0]roundout);

wire [127:0] sbout,outstate,outcol;

Key_Generate k1(roundcount,kin,kout);

Substitute_Byte s1(din,sbout);

Shift_Rows sr1(sbout,outstate);

Mix_Columns m1(outstate,outcol);

assign roundout=kout^outcol;

endmodule
 
