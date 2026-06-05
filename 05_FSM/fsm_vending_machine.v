module vending_machine(

    input  wire clk,
    input  wire rst,
    input  wire coin5,
    input  wire coin10,

    output wire dispense

);

    
    parameter S0  = 2'b00;   // ₹0
    parameter S5  = 2'b01;   // ₹5
    parameter S10 = 2'b10;   // ₹10
    parameter S15 = 2'b11;   // ₹15

    reg [1:0] current_state, next_state;
    
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= S0;
        else
            current_state <= next_state;
    end
    always @(*) begin

        next_state = current_state;

        case(current_state)

            S0: begin
                if (coin5)
                    next_state = S5;
                else if (coin10)
                    next_state = S10;
            end

            S5: begin
                if (coin5)
                    next_state = S10;
                else if (coin10)
                    next_state = S15;
            end

            S10: begin
                if (coin5 || coin10)
                    next_state = S15;
            end

            S15: begin
                next_state = S0;
            end

            default:
                next_state = S0;

        endcase
    end
    assign dispense = (current_state == S15);

endmodule
