//Verilog code for sevent segment display
//Define module


module sevSegment_display(
	input [3:0]bcd,                     //Define all I/O ports
	input clk,
	output reg [6:0]seg);


//Define Always block ,this block is executed every time the input BCD value changes.
always @ (bcd)
begin
	case(bcd)
		4'b0000:seg<=7'b1111110;          //ouput port 'seg' is assigned with seven 
													//segment equivalent of input BCD (0)
		4'b0001:seg<=7'b0110000;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (1)
		4'b0010:seg<=7'b1101101;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (2)
		4'b0011:seg<=7'b1111001;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (3)
		4'b0100:seg<=7'b0110011;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (4)
		4'b0101:seg<=7'b1011011;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (5)
		4'b0110:seg<=7'b1011111;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (6)
		4'b0111:seg<=7'b1110000;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (7)
		4'b1000:seg<=7'b1111111;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (8)
		4'b1001:seg<=7'b1111011;	       //ouput port 'seg' is assigned with seven segment equivalent of input BCD (9)
		default: seg<=7'b0000000;
	
	endcase										//end of case block

end												//end of always block

endmodule										//end of module

