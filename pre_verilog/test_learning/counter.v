`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:47 09/18/2025 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input clk,
    input rst_n,
    output [3:0] cnt
    );

	reg[3:0] cnt;
	always@(posedge clk, negedge rst_n)
	begin
	if(!rst_n)
	cnt <= 0;
	else
	cnt <= cnt + 1'b1;
	end

endmodule
