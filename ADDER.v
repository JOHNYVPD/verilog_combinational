module ADDER (A,B,Cin,S,Cout);
input [3:0]A,B;
input Cin;
output Cout;
output [3:0]S;
wire C1,C2,C3;

full_adder g1(A[0],B[0],Cin,S[0],C1);
full_adder g2(A[1],B[1],C1,S[1],C2);
full_adder g3(A[2],B[2],C2,S[2],C3);
full_adder g4(A[3],B[3],C3,S[3],Cout);

endmodule


module full_adder (a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s= (a^b)^cin;
assign cout = (a^b)&cin|(a&b);
endmodule
