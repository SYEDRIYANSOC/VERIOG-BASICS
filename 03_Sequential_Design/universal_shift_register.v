module universal_shift_register #(
    parameter WIDTH = 4
)(
    input clk,
    input rst,
    input [1:0] sel,
    input serial_left,
    input serial_right,
    input [WIDTH-1:0] parallel_in,
    output reg [WIDTH-1:0] q
);

always @(posedge clk) begin
    if (rst) begin
        q <= {WIDTH{1'b0}};
    end
    else begin
        case (sel)

            2'b00: begin
                q <= q;  // hold
            end

            2'b01: begin
                q <= {serial_right, q[WIDTH-1:1]};  // shift right
            end

            2'b10: begin
                q <= {q[WIDTH-2:0], serial_left};   // shift left
            end

            2'b11: begin
                q <= parallel_in;  // parallel load
            end

            default: begin
                q <= q;
            end

        endcase
    end
end

endmodule
