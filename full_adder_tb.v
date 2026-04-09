module testbench;
  reg a, b, cin;
  wire sum, carry;

  full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    $display("a b cin | sum carry");

    a=0; b=0; cin=0; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    a=0; b=0; cin=1; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    a=0; b=1; cin=0; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    a=0; b=1; cin=1; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    a=1; b=0; cin=0; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    a=1; b=0; cin=1; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    a=1; b=1; cin=0; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    a=1; b=1; cin=1; #10;
    $display("%b %b %b | %b %b", a, b, cin, sum, carry);

    $finish;
  end
endmodule
