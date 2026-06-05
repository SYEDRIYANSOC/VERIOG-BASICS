module traffic_light(
    input clk,
    input reset,
    output reg red,
    output reg green,
    output reg yellow
);
    reg [1:0] state;

    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;
    reg [3:0] counter
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state   <= RED;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;

            case (state)

                RED: begin
                    if (counter == 9) begin
                        state   <= GREEN;
                        counter <= 0;
                    end
                end

                GREEN: begin
                    if (counter == 9) begin
                        state   <= YELLOW;
                        counter <= 0;
                    end
                end

                YELLOW: begin
                    if (counter == 4) begin
                        state   <= RED;
                        counter <= 0;
                    end
                end

                default: begin
                    state   <= RED;
                    counter <= 0;
                end

            endcase
        end
    end
    always @(*) begin
        red    = 0;
        green  = 0;
        yellow = 0;

        case (state)
            RED:    red    = 1;
            GREEN:  green  = 1;
            YELLOW: yellow = 1;
        endcase
    end

endmodule
