`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 15:00:15
// Design Name: 
// Module Name: overlap_moore_seqDetect
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


module nonOverlap_moore_seqDetect(rst, clk , inp, out);

    output reg out;
 	input clk, rst, inp;

	 reg [2:0] state;
	 reg [2:0] next_state;
	 
	 parameter [2:0] A=3'b000; //Initial State
     parameter [2:0] B=3'b001;
     parameter [2:0] C=3'b010;
     parameter [2:0] D=3'b011;
     parameter [2:0] E=3'b100;
     parameter [2:0] F=3'b101;
     parameter [2:0] G=3'b110;
     
     
     always @(posedge clk, posedge rst)
          begin
             if (rst)
                    state=A;
               else
                    state=next_state;
          end
     
    always @(state, next_state)
               begin
                   case(state)
                  A:
                      if (inp)
                         begin
                              next_state=B;
                              out=1'b0;
                         end
                         else
                         begin
                              next_state=A;
                              out=1'b0;
                         end
            
                    B:
                         if (inp)
                         begin
                              next_state=B;
                              out=1'b0;
                         end
                         else
                         begin
                              next_state=C;
                              out=1'b0;
                         end
          
                    C:
                         if (inp)
                         begin
                              next_state=D;
                              out=1'b0;
                         end
                         else
                         begin
                              next_state=A;
                              out=1'b0;
                         end
            
                    D:
                         if (inp)
                         begin
                              next_state=B;
                              out=1'b0;
                         end
                         else
                         begin
                              next_state=E;
                              out=1'b0;
                         end
          
                    E:
                         if (inp)
                         begin 
                              next_state=F;
                              out=1'b0;
                         end
                         else
                         begin
                              next_state=A;
                              out=1'b0;
                         end
            
                    F:
                         if (inp)
                         begin
                              next_state=G;
                              out=1'b0;
                         end
                         else
                         begin
                              next_state=D;
                              out=1'b0;
                         end
                    G:
                       if (inp)
                           begin
                                  next_state=B;
                                   out=1'b1;
                            end
                        else
                            begin
                                   next_state=A;
                                   out=1'b1;
                            end
                    default:
                         begin
                                 next_state=A;
                                 out=1'b0;
                         end
                    endcase
               end
endmodule
