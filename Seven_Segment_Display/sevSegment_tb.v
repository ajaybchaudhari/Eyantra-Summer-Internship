module sevSegment_tb;
reg [3:0]bcd; reg clk;
wire [6:0]seg;

sevSegment_display uut(.bcd(bcd),.clk(clk),.seg(seg));

initial begin
	clk =0;
end

always 
begin clk = ~clk;#10; end

initial begin
	bcd = 4'd5;#100;
	bcd = 4'd1;#100;
	bcd = 4'd0;#100;
	bcd = 4'd9;#100;
	bcd = 4'd8;#100;
	bcd = 4'd3;#100;
	#100;
end
endmodule