module traffic_light(
    input clk,
    input rst,
    output reg main_road,
    output reg side_road
);

    reg [1:0] state; // 2-bit state for traffic lights

    // State encoding
    localparam S_MAIN_GREEN = 2'b00;
    localparam S_SIDE_GREEN = 2'b01;
    localparam S_ALL_RED   = 2'b10;

    // State transition
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S_ALL_RED;
        else begin
            case(state)
                S_MAIN_GREEN: state <= S_SIDE_GREEN;
                S_SIDE_GREEN: state <= S_MAIN_GREEN;
                S_ALL_RED:    state <= S_MAIN_GREEN;
                default:      state <= S_ALL_RED;
            endcase
        end
    end

    // Output logic
    always @(*) begin
        case(state)
            S_MAIN_GREEN: begin
                main_road = 1;
                side_road = 0;
            end
            S_SIDE_GREEN: begin
                main_road = 0;
                side_road = 1;
            end
            S_ALL_RED: begin
                main_road = 0;
                side_road = 0;
            end
            default: begin
                main_road = 0;
                side_road = 0;
            end
        endcase
    end

endmodule
