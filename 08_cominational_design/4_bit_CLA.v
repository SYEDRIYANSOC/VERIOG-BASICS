module cla_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);

wire [3:0] p, g;
wire [4:0] c;

assign p = A ^ B;
assign g = A & B;

assign c[0] = Cin;

assign c[1] = g[0] | (p[0] & c[0]);

assign c[2] = g[1] | (p[1] & g[0])
                    | (p[1] & p[0] & c[0]);

assign c[3] = g[2] | (p[2] & g[1])
                    | (p[2] & p[1] & g[0])
                    | (p[2] & p[1] & p[0] & c[0]);

assign c[4] = g[3] | (p[3] & g[2])
                    | (p[3] & p[2] & g[1])
                    | (p[3] & p[2] & p[1] & g[0])
                    | (p[3] & p[2] & p[1] & p[0] & c[0]);

assign Sum  = p ^ c[3:0];
assign Cout = c[4];

endmodule
