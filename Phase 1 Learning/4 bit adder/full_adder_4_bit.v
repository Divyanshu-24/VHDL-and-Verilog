`include "full_adder_1_bit.v"

module full_adder_4_bit (
    input [3:0]A,
    input [3:0]B,
    output [4:0]S
);
    
wire C1,C2,C3;

full_adder m1 (A[0],B[0],1'b0,S[0],C1);

full_adder m2 (A[1],B[1],C1,S[1],C2);

full_adder m3 (A[2],B[2],C2,S[2],C3);

full_adder m4 (A[3],B[3],C3,S[3],S[4]);

endmodule