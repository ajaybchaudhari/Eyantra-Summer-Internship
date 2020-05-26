// Verilog code for test bench of sevensegment
//Define module 
module sevSegment_tb;


reg [3:0]bcd; reg clk;		//Define the input 	
wire [6:0]seg;					//Define the outputs

sevSegment_display uut(.bcd(bcd),.clk(clk),.seg(seg));     //Map the I/O ports with DUT


// Define Initial block
initial begin				
	clk =0;						//Initialise the value of clock to '0'
end

//Define Always block
always 
begin clk = ~clk;#10; end				//clock input toggles for every 10 time units

initial begin								//Initialize input ports with different combination of BCD data
	bcd = 4'd5;#100;
	bcd = 4'd1;#100;
	bcd = 4'd0;#100;
	bcd = 4'd9;#100;
	bcd = 4'd8;#100;
	bcd = 4'd3;#100;
	#100;
end								//end of initial block.
endmodule						//end of module.