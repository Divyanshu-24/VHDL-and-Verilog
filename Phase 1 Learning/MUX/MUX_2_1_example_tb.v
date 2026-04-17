`timescale 1ns/1ns
`include "MUX_2_1_example.v"

module MUX_2_1_example_tb;

reg A,B,S0;
wire Y;

MUX_2_1 uut(S0,A,B,Y);

initial begin
    $display("Time\tS0 A B  | Y");
    $monitor("%g\t%b %b %b | %b",$time,S0,A,B,Y);
end

initial begin
    A=0; B=0; S0=0; #10;
end

always #20 S0=~S0;
always #10 A=~A;
always #5 B=~B; 

initial begin
    #60 $finish;
end

initial begin
    $dumpfile("MUX_2_1_example.vcd");
    $dumpvars(0,MUX_2_1_example_tb);
end
    
endmodule