`include "MUX_2_1_example.v"

module MUX_8_1_str (
input I0,I1,I2,I3,I4,I5,I6,I7,
input S0,S1,S2,
output Y 
);

wire t1,t2,t3,t4,t5,t6;

//level 1
MUX_2_1 m1 (S0,I0,I1,t1);
MUX_2_1 m2 (S0,I2,I3,t2);
MUX_2_1 m3 (S0,I4,I5,t3);
MUX_2_1 m4 (S0,I6,I7,t4);

//level 2
MUX_2_1 m5 (S1,t1,t2,t5);
MUX_2_1 m6 (S1,t3,t4,t6);

//level 3

MUX_2_1 m7 (S2,t5,t6,Y);
    
endmodule