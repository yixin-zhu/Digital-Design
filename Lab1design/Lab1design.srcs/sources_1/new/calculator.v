`timescale 1ns / 1ps

module calculater( r, AN, A, B, op );
    output reg[6:0] r;
    output reg[3:0] AN;
    reg[7:0] F;
    input[3:0] A,B;
    input[1:0] op;

always@(A,B,op)
begin
    AN = 4'b1110;
    case(op)
        2'b00:  F = A + B;
        2'b01:  F = A - B;
        2'b10:  F =  ~A ;
        2'b11:  F = A * B;
    endcase
end

always@(F)
begin
    case (F[3:0])
        4'h0: r = 7'b1000000;
        4'h1: r = 7'b1111001;
        4'h2: r = 7'b0100100;
        4'h3: r = 7'b0110000;
        4'h4: r = 7'b0011001;
        4'h5: r = 7'b0010010;
        4'h6: r = 7'b0000010;
        4'h7: r = 7'b1111000;
        4'h8: r = 7'b0000000;
        4'h9: r = 7'b0010000;
        4'hA: r = 7'b0001000;
        4'hB: r = 7'b0000011;
        4'hC : r = 7'b1000110;
        4'hD: r = 7'b0100001;
        4'hE: r = 7'b0000110;
        4'hF : r = 7'b0001110;
        default: r = 7'b1000000;
    endcase
 end   
endmodule