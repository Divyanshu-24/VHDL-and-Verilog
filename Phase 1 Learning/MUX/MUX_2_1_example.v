module MUX_2_1 (S0,A,B,Y);
    
input S0,A,B;
output Y;

assign Y=((~S0)&A)+(S0&B);

endmodule