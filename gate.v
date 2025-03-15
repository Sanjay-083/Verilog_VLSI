module top_module( input in, output out );
assign out=~in;
endmodule

//this module is used to define just working of a NOT gate or an Inverter

module top_module( 
    input a, 
    input b, 
    output out );
 assign out=a&b;
endmodule

// AND operation using &

module top_module( 
    input a, 
    input b, 
    output out );
    assign out=~(a | b);
endmodule
// NOR operation which inverts a OR operation

module top_module( 
    input a, 
    input b, 
    output out );
  assign out= ~(a^b);// XNOR operation
endmodule
 
//XOR operation when both inputs are same output is low if both are different output is high
//XNOR wjich is inverse of XOR
