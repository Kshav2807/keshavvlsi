module alu_4bit_simple(
    input [3:0] A, B,
    input [2:0] opcode,
    output reg [3:0] Result
);

always @(*) begin
    case(opcode)
        3'b000: Result = A + B; // Addition
        3'b001: Result = A - B; // Subtraction
        3'b010: Result = A & B; // AND
        3'b011: Result = A | B; // OR
        3'b100: Result = ~(A | B); // NOR
        default: Result = 4'b0000;
    endcase
end

endmodule
