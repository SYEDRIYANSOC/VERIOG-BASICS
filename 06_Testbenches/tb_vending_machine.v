module testbench;

  reg clk, rst;
  reg coin5, coin10;
  wire dispense;

  vending_machine uut(
    .clk(clk),
    .rst(rst),
    .coin5(coin5),
    .coin10(coin10),
    .dispense(dispense)
  );

  always begin
    clk = 0; #5;
    clk = 1; #5;
  end

  initial begin

    $display("rst coin5 coin10 | dispense");

    rst = 1; coin5 = 0; coin10 = 0; #10;
    $display("%b %b %b | %b", rst, coin5, coin10, dispense);

    rst = 0; #10;

    coin5 = 1; coin10 = 0; #10;
    coin5 = 0; #10;
    $display("%b %b %b | %b", rst, coin5, coin10, dispense);

    coin10 = 1; coin5 = 0; #10;
    coin10 = 0; #10;
    $display("%b %b %b | %b", rst, coin5, coin10, dispense);

    coin5 = 1; coin10 = 0; #10;
    coin5 = 0; #10;

    coin10 = 1; #10;
    coin10 = 0; #10;
    $display("%b %b %b | %b", rst, coin5, coin10, dispense);

    coin10 = 1; coin5 = 0; #10;
    coin10 = 0; #10;

    coin5 = 1; #10;
    coin5 = 0; #10;
    $display("%b %b %b | %b", rst, coin5, coin10, dispense);

    $finish;

  end

endmodule
