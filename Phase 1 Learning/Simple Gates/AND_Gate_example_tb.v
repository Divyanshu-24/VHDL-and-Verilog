`timescale 1ns/1ns
`include "AND_Gate_example.v"

module AND_Gate_example_tb;

reg A,B;
wire R;

AND_Gate uut(A,B,R);

initial begin
    //To display the Truth Table of Gate
    $display("Time \t A B | R");
    $monitor("%g \t %b %b | %b",$time,A,B,R);

    //Test Case
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
    
    $finish;

end

initial begin
    $dumpfile("AND_Gate_example.vcd");
    $dumpvars(0,AND_Gate_example_tb);
end
    
endmodule