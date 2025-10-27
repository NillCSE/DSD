module Fulladder(S,Cout,A,B,Cin);
input A,B,Cin;
output S,Cout;
Halfadder ha1(S1,C1,A,B);
Halfadder ha2(S,C2,S1,Cin);
or(Cout,C1,C2);
endmodule