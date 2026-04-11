module mux4to1(
  input [3:0] I,     // 4 inputs
  input [1:0] sel,   // 2 select lines
  output reg y       // 1 output
);

always @(*) begin
  case(sel)
    2'b00: y = I[0];
    2'b01: y = I[1];
    2'b10: y = I[2];
    2'b11: y = I[3];
    default: y = 1'b0;
  endcase
end

endmodule
