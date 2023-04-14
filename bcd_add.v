module bcd_add(A,B,Cin,Cout,S);
input[3:0]A,B;
input Cin;
output reg Cout;
output reg [3:0]S;
reg [4:0]D;
always @ (*)
begin
D=A+B+Cin;
if (D<10)
{Cout,S}=D;
else
{Cout,S}=D+6;
end
endmodule
