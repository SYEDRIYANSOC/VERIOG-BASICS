module universal_shift_register (
    input clk,
    input rst,
    input [1:0] sel,
    input serial_left,
    input serial_right,
    input [3:0] parallel_in,
    output reg [3:0] q
);

always @(posedge clk) begin
    if (rst) begin
        q <= 4'b0000;
    end
    else begin
        case (sel)

            2'b00: begin
                q <= q;
            end

            2'b01: begin
                q <= {serial_right, q[3:1]};
            end

            2'b10: begin
                q <= {q[2:0], serial_left};
            end

            2'b11: begin
                q <= parallel_in;
            end

            default: begin
                q <= q;
            end

        endcase
    end
end

endmodule
