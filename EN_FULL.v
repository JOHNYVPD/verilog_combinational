module EN_FULL(A,B,Sum,Cout);
input A,B;
output Sum,Cout;
wire w0,w1,w2,w3;
assign Sum = w1|w2;
assign Cout = w3;
EN g1 (A,B,w0,w1,w2,w3);

endmodule





module EN (A,B,D0,D1,D2,D3);
input A,B;
output D0,D1,D2,D3;
assign D0 = ~(~A&~B);
assign D1 = ~A&B;
assign D2 = ~A&B;
assign D3 = A&B;
endmodule
