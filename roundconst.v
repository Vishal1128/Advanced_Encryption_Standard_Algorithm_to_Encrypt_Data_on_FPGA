`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 21:25:23
// Design Name: 
// Module Name: roundconst
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


module roundconst(input [3:0] rc,output [31:0] rocout);

reg [31:0] rcout;

always@(rc)
begin
if(rc==0)
rcout=32'h01_00_00_00;
else if(rc==1)
rcout=32'h02_00_00_00;
else if(rc==2)
rcout=32'h04_00_00_00;
else if(rc==3)
rcout=32'h08_00_00_00;
else if(rc==4)
rcout=32'h10_00_00_00;
else if(rc==5)
rcout=32'h20_00_00_00;
else if(rc==6)
rcout=32'h40_00_00_00;
else if(rc==7)
rcout=32'h80_00_00_00;
else if(rc==8)
rcout=32'h1b_00_00_00;
else if(rc==9)
rcout=32'h36_00_00_00;

end

assign rocout=rcout;

endmodule
