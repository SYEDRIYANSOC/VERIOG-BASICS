module tst;
  reg clk;
  reg load;
  reg d;
  wire q;
  
  d_ff uut(
    .clk(clk),
    .load(load),
    .d(d),
    .q(q)
  );

  initial begin
    $display("clk load d | q");

    clk = 0;
    
    clk = ~clk; load = 0; d = 1; #10;
    $display("%b %b %b | %b", clk, load, d, q);

    clk = ~clk; load = 1; d = 1; #10;
    $display("%b %b %b | %b", clk, load, d, q);

    clk = ~clk; load = 0; d = 0; #10;
    $display("%b %b %b | %b", clk, load, d, q);

    clk = ~clk; load = 1; d = 0; #10;
    $display("%b %b %b | %b", clk, load, d, q);

  end
endmodule
