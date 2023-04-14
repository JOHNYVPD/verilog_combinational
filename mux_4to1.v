module mux_4to1 (I0,I1,I2,I3,S,S1,Y);
input I0,I1,I2,I3,S,S1;
output Y;
wire w1,w2;

mux f1 (I0,I1,S,w1);
mux f2 (I2,I3,S,w2);

mux f3 (w1,w2,S1,Y);

endmodule
module mux(i0,i1,s,f);
input i0,i1,s;
output reg f;
always @(*)
case(s)
1'b0 : f=i0;
1'b1 : f=i1;
default:f=1'bx;
endcase
endmodule
