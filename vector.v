//In Verilog, vectors are used to handle multiple related signals under a single name, making it easier to manipulate and organize them.
// A vector is essentially a multi-bit wire or register, where each bit in the vector can be accessed separately


module top_module(
	input [2:0] vec, 
	output [2:0] outv,
	output o2,
	output o1,
	output o0
);
	
	assign outv = vec;

	// This is ok too: assign {o2, o1, o0} = vec;
	assign o0 = vec[0];
	assign o1 = vec[1];
	assign o2 = vec[2];
	
endmodule

//Explanation of the Verilog Code
//This Verilog module is designed to take a 3-bit input vector (vec), pass it directly to an output vector (outv),
// and also split its individual bits into separate output signals (o2, o1, and o0).

