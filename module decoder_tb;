module decoder_tb;

  reg [2:0] in;      // input to DUT
  wire [7:0] d;      // output from DUT

  // Instantiate the decoder (DUT = Device Under Test)
  decoder uut (
    .in(in),
    .d(d)
  );

  initial begin
    $display("in  | d");

    in = 3'b000; #10;
    $display("%b | %b", in, d);

    in = 3'b001; #10;
    $display("%b | %b", in, d);

    in = 3'b010; #10;
    $display("%b | %b", in, d);

    in = 3'b011; #10;
    $display("%b | %b", in, d);

    in = 3'b100; #10;
    $display("%b | %b", in, d);

    in = 3'b101; #10;
    $display("%b | %b", in, d);

    in = 3'b110; #10;
    $display("%b | %b", in, d);

    in = 3'b111; #10;
    $display("%b | %b", in, d);

    $finish;
  end

endmodule
