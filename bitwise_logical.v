/*Build a circuit that has two 3-bit inputs that computes the bitwise-OR of the two vectors, the logical-OR of the two vectors,
 and the inverse (NOT) of both vectors. Place the inverse of b in the upper half of out_not (i.e., bits [5:3]),
 and the inverse of a in the lower half. */


module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise=a| b;
    assign out_or_logical=a || b;
    assign out_not[5:3]=~b;
    assign out_not[2:0]=~a;

endmodule

/*Build a combinational circuit with four inputs, in[3:0].

There are 3 outputs:

out_and: output of a 4-input AND gate.
out_or: output of a 4-input OR gate.
out_xor: output of a 4-input XOR gate.*/


module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor 
);
     assign out_and = in[3] & in[2] & in[1] & in[0];  // 4-input AND gate
    assign out_or  = in[3] | in[2] | in[1] | in[0];  // 4-input OR gate
    assign out_xor = in[3] ^ in[2] ^ in[1] ^ in[0];  // 4-input XOR gate

endmodule
