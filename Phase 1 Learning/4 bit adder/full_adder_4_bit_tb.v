`timescale 1ns/1ns
`include "full_adder_4_bit.v"

module full_adder_4_bit_tb ;

reg [3:0]A,B;
wire [4:0]S;

full_adder_4_bit uut(A,B,S);

initial begin
    $display("A\t+\tB\t=\tS");
    $monitor("%b\t+\t%b\t=\t%b",A,B,S);

    //test case

    A=4'b1001; B=4'b0011 ; #10;
    A=4'b0001; B=4'b0011 ; #10;
    A=4'b1111; B=4'b1111 ; #10;
    A=4'b1011; B=4'b1000 ; #10;

    $finish;
end

initial begin
    $dumpfile("full_adder_4_bit.vcd");
    $dumpvars(0,full_adder_4_bit_tb);
end
    
endmodule