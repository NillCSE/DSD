module JK_flipflop(Q,Qc,J,K,Clk);

input J,K,Clk;
output reg Q,Qc;

initial begin
 Q = 0;
 Qc = 1;
end

always@(posedge Clk)
begin
	case({J,K})
		
		2'b00:  Q<=Q;
		2'b01:  Q<=0;
		2'b10:  Q<=1;
		2'b11:  Q<=~Q;
	endcase
	Qc<=~Q;
end
endmodule
