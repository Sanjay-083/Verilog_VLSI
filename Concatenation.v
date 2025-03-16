//The concatenation operator ({}) allows you to join multiple bits or vectors together to form a larger vector.

/*Given several input vectors, concatenate them together then split them up into several output vectors. 
There are six 5-bit input vectors: a, b, c, d, e, and f, for a total of 30 bits of input. 
There are four 8-bit output vectors: w, x, y, and z, for 32 bits of output. 
The output should be a concatenation of the input vectors followed by two 1 bits */

`default_nettype none
module top_module (
    input  wire [4:0] a, b, c, d, e, f,
    output wire [7:0] w, x, y, z 
); 
    // Concatenate 30-bit input vectors + 2-bit padding
    wire [31:0] con = {a, b, c, d, e, f, 2'b11};

    // Assign 8-bit slices to outputs
    assign w = con[31:24]; 
    assign x = con[23:16]; 
    assign y = con[15:8];  
    assign z = con[7:0];   

endmodule
