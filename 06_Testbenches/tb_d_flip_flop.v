module tst;
  reg clk;
  reg reset;
  reg d;
  wire q;
  
  dflipflop uut(
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
  );
  
  initial begin
    $display("clk reset d|q");
    
    clk=0; reset=0; d=0; #10;
    clk=1; #10;
    $display("%b %b %b|%b",clk,reset,d,q);
    
    clk=0; #10;
    clk=1; reset=1; d=1; #10;
    $display("%b %b %b|%b",clk,reset,d,q);
    
    clk=0; #10;
    clk=1; reset=1; d=0; #10;
    $display("%b %b %b|%b",clk,reset,d,q);
    
    $finish;
  end
endmodule
