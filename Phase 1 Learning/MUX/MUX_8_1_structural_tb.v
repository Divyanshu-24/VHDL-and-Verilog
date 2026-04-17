`timescale 1ns/1ns
`include "MUX_8_1_structural.v"

module MUX_8_1_structural_tb;

reg I0,I1,I2,I3,I4,I5,I6,I7;
reg S0,S1,S2;
wire Y;

MUX_8_1_str uut(I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,Y);

initial begin
    $display("Time\tS2 S1 S0 | I0 I1 I2 I3 I4 I5 I6 I7 | Y");
    $monitor("%g\t%b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  | %b",$time,S2,S1,S0,I0,I1,I2,I3,I4,I5,I6,I7,Y);
end

initial begin
    S0=0; S1=0; S2=0; I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0;
end

always #1 I7=~I7;
always #2 I6=~I6;
always #4 I5=~I5;
always #8 I4=~I4;
always #16 I3=~I3;
always #32 I2=~I2;
always #64 I1=~I1;
always #128 I0=~I0;
always #256 S0=~S0;
always #512 S1=~S1;
always #1024 S2=~S2;

initial begin
    #2100 $finish;
end

initial begin
    $dumpfile("MUX_8_1_structural.vcd");
    $dumpvars(0,MUX_8_1_structural_tb);
end
    
endmodule