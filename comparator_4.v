module comparator_4 (A,B,C,D,E);
input [3:0]A,B;
output reg C,D,E;
always @ (*)
begin
C=0;D=0;E=0;
if (A>B)
C=1;
else if (A==B)
D=1;
else
E=1;
end
endmodule



