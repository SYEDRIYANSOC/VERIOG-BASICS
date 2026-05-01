module counter_2bit(
  input clk,
  input reset,
  output reg [1:0]q
);
  always@(posedge clk or posedge reset)begin
    if(reset)
      q<=0;
      else
        q<=q+1;
  end 
endmodule
