`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2022 19:35:26
// Design Name: 
// Module Name: tb_overlap_mealy_SeqDet
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


module tb_overlap_mealy_SeqDet;
// Inputs
 reg inp;
 reg clk;
 reg rst;

 // Outputs
 wire out;

 // Instantiate the Sequence Detector using Moore FSM
 overlap_mealy_seqDetect uut (
  .rst(rst), .clk(clk), .inp(inp), .out(out)
 );
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end 
 initial begin
  // Initialize Inputs
  inp = 0;
  rst = 1;
  // Wait 100 ns for global reset to finish
  #30;
      rst = 0;
  #30;
  inp = 1;
  #10;
  inp = 0;
  #10;
  inp = 1; 
  #10;
  inp = 0; 
  #10;
  inp = 1; 
  #10;
  inp = 1;  

  // Add stimulus here

 end
      

endmodule
