module alu_tb_simple;
reg [3:0] A, B;
reg [2:0] opcode;
wire [3:0] Result;

alu_4bit_simple uut(.A(A), .B(B), .opcode(opcode), .Result(Result));

initial begin
    $monitor("Time=%0t A=%b B=%b opcode=%b Result=%b", $time, A, B, opcode, Result);
    
    A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;
    opcode = 3'b001; #10;
    opcode = 3'b010; #10;
    opcode = 3'b011; #10;
    opcode = 3'b100; #10;
end
endmodule
