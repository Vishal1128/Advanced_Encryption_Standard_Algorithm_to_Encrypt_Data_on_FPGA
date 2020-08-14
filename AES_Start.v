`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 21:32:41
// Design Name: 
// Module Name: AES_Start
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


module AES_Start(clock,finaloutput);
    input clock;
    output [15:0] finaloutput;

wire [127:0] tempout;

AES_Encrypt v1(.clock(clock),.din(128'h 54776f204f6e65204e696e652054776f),.k(128'h 5468617473206d79204b756e67204675),.dout(tempout));

assign finaloutput = tempout[15:0];

endmodule
