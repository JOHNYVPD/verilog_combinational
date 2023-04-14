module count(Clock,Resetn,E,Q);
input Clock,Resetn,E;
output reg [3:0]Q;
always@(posedge Clock, negedge Resetn)
if(Resetn==0)
Q<=4'h0;
else if (~E)
Q<=Q+4'd1;
else
Q<=Q-4'd1;
endmodule
