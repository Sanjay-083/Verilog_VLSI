//The replication operator {num{vector}} in Verilog is a useful way
// to duplicate a vector multiple times without manually repeating it

/* Sign extension is a method used to increase the number of bits of a signed binary number while keeping its value unchanged.
If the number is positive (MSB = 0), we extend it by adding 0s to the left.
If the number is negative (MSB = 1), we extend it by adding 1s to the left (to keep it negative).*/

//Build a circuit that sign-extends an 8-bit number to 32 bits.
//This requires a concatenation of 24 copies of the sign bit (i.e., replicate bit[7] 24 times) followed by the 8-bit number itself.

module top_module (
    input [7:0] in,
    output [31:0] out
);

    assign out = { {24{in[7]}}, in };  // Sign extend by replicating MSB 24 times

endmodule
