`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 20:53:38
// Design Name: 
// Module Name: AES_Encrypt
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


module AES_Encrypt(clock,din,k,dout);

    input clock;
    input [127:0] din;
    input [127:0] k;
    output[127:0] dout;
    
    wire [127:0] r0_out;
    wire [127:0] r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out;
    
    wire [127:0] kout1,kout2,kout3,kout4,kout5,kout6,kout7,kout8,kout9;
	 
	 assign r0_out = din^k;
	 
    Round_Call           v1(.clock(clock),.din(r0_out),.roundcount(4'b0000),.kin(k),.kout(kout1),.roundout(r1_out));
    Round_Call           v2(.clock(clock),.din(r1_out),.roundcount(4'b0001),.kin(kout1),.kout(kout2),.roundout(r2_out));
    Round_Call           v3(.clock(clock),.din(r2_out),.roundcount(4'b0010),.kin(kout2),.kout(kout3),.roundout(r3_out));
    Round_Call           v4(.clock(clock),.din(r3_out),.roundcount(4'b0011),.kin(kout3),.kout(kout4),.roundout(r4_out));
    Round_Call           v5(.clock(clock),.din(r4_out),.roundcount(4'b0100),.kin(kout4),.kout(kout5),.roundout(r5_out));
    Round_Call           v6(.clock(clock),.din(r5_out),.roundcount(4'b0101),.kin(kout5),.kout(kout6),.roundout(r6_out));
    Round_Call           v7(.clock(clock),.din(r6_out),.roundcount(4'b0110),.kin(kout6),.kout(kout7),.roundout(r7_out));
    Round_Call           v8(.clock(clock),.din(r7_out),.roundcount(4'b0111),.kin(kout7),.kout(kout8),.roundout(r8_out));
    Round_Call           v9(.clock(clock),.din(r8_out),.roundcount(4'b1000),.kin(kout8),.kout(kout9),.roundout(r9_out));
    Round_Call_Last     v10(.clock(clock),.din(r9_out),.roundcount(4'b1001),.kin(kout9),.roundout(dout));
    
endmodule
