/*SystemVerilog Program for the Boolean function 
 y = a'b'c' + b'c' + a'c' + a'b' */

 module SamPro( input logic a,b,c,   /* Here logic is a data type introduced in SystemVerilog for Boolean Variables */
					output logic y);
					
assign y = ~a  & ~b & ~c | /* ~ is for NOT operation , & for AND operation, | for OR operation */
		     ~b & ~c |
			  ~a & ~c |
			  ~a  & ~b;
			
endmodule
		                