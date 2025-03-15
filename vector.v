//In Verilog, vectors are used to handle multiple related signals under a single name, making it easier to manipulate and organize them.
// A vector is essentially a multi-bit wire or register, where each bit in the vector can be accessed separately

`default_nettype none 
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

`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    
    assign out_hi=in[15:8];
    assign out_lo=in[7:0];

endmodule

//✅ in[15:8] picks the upper 8 bits
//✅ in[7:0] picks the lower 8 bits


module top_module( 
    input [31:0] in,
    output [31:0] out );

     assign out[31:24] = in[7:0];    // Move Byte D to Byte A's position
    assign out[23:16] = in[15:8];   // Move Byte C to Byte B's position
    assign out[15:8]  = in[23:16];  // Move Byte B to Byte C's position
    assign out[7:0]   = in[31:24];  // Move Byte A to Byte D's position

endmodule
//swap their order from A B C D → D C B A
