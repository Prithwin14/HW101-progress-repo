#Getting Started

##One

module top_module( output one );


    assign one = 1;

endmodule

##Zero

module top_module(
    output zero
);
assign zero = 0;

endmodule


#Basics

##Wire

module top_module( input in, output out );
assign out = in;
endmodule

##4wires

module top_module( 
    input a,b,c,
    output w,x,y,z );

assign w = a;
assign x = b;
assign y = b;
assign z = c;

endmodule

##Inverter

module top_module( input in, output out );
    assign out =~ in;

endmodule

##AND GATE

module top_module( 
    input a, 
    input b, 
    output out );
assign out = a && b;

endmodule

##Nor gate

module top_module( 
    input a, 
    input b, 
    output out );
    assign out =~ (a||b);

endmodule

##Xnorgate

module top_module( 
    input a, 
    input b, 
    output out );
    assign out =~ (a^b);

endmodule

##Wire Declaration

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
wire and1,and2,or1;
    assign and1 = a & b;
    assign and2 = c & d;
    assign or1 = and1 | and2;
    assign out = or1;
    assign out_n =~ or1;

endmodule

## 7458-chip

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
wire and1,and2,or1;
    assign and1 = a & b;
    assign and2 = c & d;
    assign or1 = and1 | and2;
    assign out = or1;
    assign out_n =~ or1;

endmodule
