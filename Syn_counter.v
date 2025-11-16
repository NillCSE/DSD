module Syn_counter(Q, Clk);


//force Clk 0 0, 1 5 -repeat 10 .....command for Setting Clk
input Clk;
output wire [3:0] Q;

wire [3:0] Qc;
wire [3:0] J, K;

assign J[0] = 1;
assign K[0] = 1;

assign J[1] = Q[0];
assign K[1] = Q[0];

assign J[2] = Q[0] & Q[1];
assign K[2] = Q[0] & Q[1];

assign J[3] = Q[0] & Q[1] & Q[2];
assign K[3] = Q[0] & Q[1] & Q[2];

JK_flipflop F0(Q[0], Qc[0], J[0], K[0], Clk);
JK_flipflop F1(Q[1], Qc[1], J[1], K[1], Clk);
JK_flipflop F2(Q[2], Qc[2], J[2], K[2], Clk);
JK_flipflop F3(Q[3], Qc[3], J[3], K[3], Clk);

endmodule

