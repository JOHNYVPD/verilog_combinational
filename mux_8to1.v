module mux_8to1(I,I1,I2,I3,I4,I5,I6,I7,S,S1,S2,F);
input I,I1,I2,I3,I4,I5,I6,I7,S,S1,S2;
output F;
wire F1,F2,F3,F4,F5,F6;

mux_d f1(I,I1,S,F1);
mux_d  f2(I2,I3,S,F2);
mux_d f3(I4,I5,S,F3);
mux_d  f4(I6,I7,S,F4);

mux_d  f5(F1,F2,S1,F5);
mux_d  f6(F3,F4,S1,F6);

assign F= (F5&S2)|(F6&S2);
endmodule
module mux_d(A,B,D,Y);
input A,B,D;
output Y;
assign Y=(D&B)|(~D&A);
endmodule
