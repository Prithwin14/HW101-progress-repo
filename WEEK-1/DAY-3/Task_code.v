->Always if

  module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    assign out_assign = (sel_b1 && sel_b2) ? b : a;
    always@(*) begin
        if(sel_b1 && sel_b2) begin
            out_always = b;
        end
        else begin
            out_always = a;
        end
    end

endmodule

->Always if2

module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else 
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived && ~gas_tank_empty)
           keep_driving = ~gas_tank_empty;
        else
            keep_driving = 0;
    end

endmodule

->Always case

module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin 
        case(sel)
            3'b000:out=data0;
             3'b001:out=data1;
             3'b010:out=data2;
             3'b011:out=data3;
             3'b100:out=data4;
             3'b101:out=data5;
            default : out = 3'b000;
        endcase
    end

endmodule

->Always case2

module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*)
      case(in)
        4'd0: pos = 2'd0;
        4'd1: pos = 2'd0;
        4'd2: pos = 2'd1;
        4'd3: pos = 2'd0;
        4'd4: pos = 2'd2;
        4'd5: pos = 2'd0;
        4'd6: pos = 2'd1;
        4'd7: pos = 2'd0;
        4'd8: pos = 2'd3;
        4'd9: pos = 2'd0;
        4'd10: pos = 2'd1;
        4'd11: pos = 2'd0;
        4'd12: pos = 2'd2;
        4'd13: pos = 2'd0;
        4'd14: pos = 2'd1;
        4'd15: pos = 2'd0;
      endcase
    

endmodule

->Always casez

module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always@(*) begin
        casez(in[7:0])
            8'bzzzzzzz1:pos = 0;
            8'bzzzzzz1z:pos = 1;
            8'bzzzzz1zz:pos = 2;
            8'bzzzz1zzz:pos = 3;
            8'bzzz1zzzz:pos = 4;
            8'bzz1zzzzz:pos = 5;
            8'bz1zzzzzz:pos = 6;
            8'b1zzzzzzz:pos = 7;
            default:pos=0;
        endcase
    end

endmodule

->Always nolatches
  
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    always@(*) 
        begin
        up = 1'b0; down = 1'b0; left = 1'b0; right = 1'b0;
    case(scancode)
        
        16'he06b:left=1'b1;
        16'he072:down=1'b1;
        16'he074:right=1'b1;
        16'he075:up=1'b1;
    endcase
        end

endmodule
