module bitregiter(
  input clk,
  input load,
  input [0:3]d,
  output reg [0:3]q
);
  always@(posedge clk)begin
    if(load)
    q<=q;
    else
      q<=d;
  end
    endmodule
