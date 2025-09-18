`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:30:58 09/18/2025
// Design Name:   counter
// Module Name:   C:/Users/27628/Documents/A - programming/CO-2025/test_learning/counter_tb.v
// Project Name:  test_learning
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg clk;
	reg rst_n;

	// Outputs
	wire [3:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.cnt(cnt)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
			rst_n = 0;
		#5 rst_n = 1'b1;
		end
	
	always #10 clk = ~clk; //simulate the clock!
      
endmodule

