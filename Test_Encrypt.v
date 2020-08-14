`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 21:35:34
// Design Name: 
// Module Name: Test_Encrypt
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


module Test_Encrypt();

	reg clock;
	
	wire [127:0] finaloutput;

	AES_Encrypt v1(.clock(clock),.din(128'h 54776f204f6e65204e696e652054776f),.k(128'h 5468617473206d79204b756e67204675),.dout(finaloutput));
    
	initial begin
		clock = 0;
		#100;
	end
	
endmodule
