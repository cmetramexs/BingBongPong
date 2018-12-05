/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module button_3 (
    input clk,
    input rst,
    input button,
    output reg press
  );
  
  
  
  wire [1-1:0] M_edge_detector_out;
  reg [1-1:0] M_edge_detector_in;
  edge_detector_8 edge_detector (
    .clk(clk),
    .in(M_edge_detector_in),
    .out(M_edge_detector_out)
  );
  wire [1-1:0] M_button_cond_out;
  reg [1-1:0] M_button_cond_in;
  button_conditioner_9 button_cond (
    .clk(clk),
    .in(M_button_cond_in),
    .out(M_button_cond_out)
  );
  
  always @* begin
    M_button_cond_in = button;
    M_edge_detector_in = M_button_cond_out;
    if (M_edge_detector_out) begin
      press = 1'h1;
    end else begin
      press = 1'h0;
    end
  end
endmodule
