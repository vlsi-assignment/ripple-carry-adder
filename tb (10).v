`timescale 1ns/1ps

module tb_ripple_carry_adder;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    ripple_carry_adder dut(A, B, Cin, Sum, Cout);

    initial begin
        $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b",
                 A, B, Cin, Sum, Cout);

        A=4'b0011; B=4'b0100; Cin=0; #10;
        A=4'b0111; B=4'b0001; Cin=0; #10;
        A=4'b1111; B=4'b0001; Cin=0; #10;
        A=4'b1010; B=4'b0101; Cin=1; #10;

        $finish;
    end
endmodule
