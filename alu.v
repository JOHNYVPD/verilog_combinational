module alu (A,B,Op,Out);
input [7:0]A,B;
input [3:0]Op;
output reg [7:0]Out;
always @ (*)
begin
case(Op)
4'b0000 : Out =A&B;
4'b0001 : Out =A|B;
4'b0010 : Out =A^B;
4'b0011 : Out =~(A^B);
4'b0100 : Out =~A;
4'b0101 : Out =~(A&B);
4'b0110 : Out =~(A|B);
4'b0111 : Out =A;
4'b1000 : Out =A+B;
4'b1001 : Out =A-B;
4'b1010 : Out =A+1;
4'b1011 : Out =A-1;
4'b1100 :
begin
Out[0]<=A;
Out[1]<=Out[0];
Out[2]<=Out[1];
Out[3]<=Out[2];
Out[4]<=Out[3];
Out[5]<=Out[4];
Out[6]<=Out[5];
Out[7]<=Out[6];
end
4'b1101 : 
begin
Out[7]<=A;
Out[6]<=Out[0];
Out[5]<=Out[1];
Out[4]<=Out[2];
Out[3]<=Out[3];
Out[2]<=Out[4];
Out[1]<=Out[5];
Out[0]<=Out[6];
end
4'b1110 : Out =0;
4'b1111 : Out =0;
default : Out =0;
endcase
end
endmodule
