module adder(a,b,cin,s,cout);
input[3:0]a,b;
input cin;
output cout;
output [3:0]s;
assign {cout,s}=a+b+cin;
endmodule
