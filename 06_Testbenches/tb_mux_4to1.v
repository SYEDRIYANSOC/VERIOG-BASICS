module mux_tb;

  reg a, b, c, d;
  reg [1:0] sel;
  wire y;

  mux uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
  );

  initial begin
    $display("a b c d sel | y");

    a=0; b=1; c=0; d=1;

    sel=2'b00; #10;
    $display("%b %b %b %b %b | %b", a,b,c,d,sel,y);

    sel=2'b01; #10;
    $display("%b %b %b %b %b | %b", a,b,c,d,sel,y);

    sel=2'b10; #10;
    $display("%b %b %b %b %b | %b", a,b,c,d,sel,y);

    sel=2'b11; #10;
    $display("%b %b %b %b %b | %b", a,b,c,d,sel,y);

  end

endmodule
