module Subtractor(S,Cout,A,B,Mode);

input [3:0] A,B;
input Mode;

output [3:0]S;
output Cout;

wire [3:0] D;
xor(D[0],B[0],Mode);
xor(D[1],B[1],Mode);
xor(D[2],B[2],Mode);
xor(D[3],B[3],Mode);

Rippleadder rip(S,Cout,A,D,Mode);

endmodule
