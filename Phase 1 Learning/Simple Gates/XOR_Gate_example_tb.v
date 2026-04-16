`timescale 1ns/1ns
`include "XOR_Gate_example.v"

module XOR_Gate_example_tb;

reg A,B;
wire R;

XOR_Gate uut(A,B,R);

initial begin
    $display("Time\tA B | R");
    $monitor("%g\t%b %b | %b",$time,A,B,R);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

initial begin
    $dumpfile("XOR_Gate_example.vcd");
    $dumpvars(0,XOR_Gate_example_tb);
end
    
endmodule