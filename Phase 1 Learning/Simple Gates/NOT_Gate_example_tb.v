`timescale 1ps/1ps
`include "NOT_Gate_example.v"

module NOT_Gate_example_tb;

reg A;
wire R;

NOT_Gate uut(A,R);

initial begin
    $display("Time\tA | R");
    $monitor("%g\t%b | %b",$time,A,R);

    A=0; #15;
    A=1; #15;

    $finish;
end

initial begin
    $dumpfile("NOT_Gate_example.vcd");
    $dumpvars(0,NOT_Gate_example_tb);
end
    
endmodule