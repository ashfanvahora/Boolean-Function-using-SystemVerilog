// testbench is use to check the correct outputs are produced by the Module block
// It is not synthesizable and we have to inspect the simulation result to validate the outputs
module testbench1();
	logic a,b,c,y;
	
// instantiate dut(Device Under Test)
SamPro dut(a,b,c,y);
 
//apply input one at a time
initial begin

a = 0; b = 0; c = 0; #10; // # is use to indicate how much time units the inputs have to constant before it gets change
				  c = 1; #10;
		 b = 1; c = 0; #10;
				  c = 1; #10;
a = 1; b = 0; c = 0; #10;
				  c = 1; #10;
		 b = 1; c = 0; #10;
				  c = 1; #10;
end
endmodule

 