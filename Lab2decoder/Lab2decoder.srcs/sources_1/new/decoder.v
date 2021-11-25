`timescale 1ns / 1ps
module decoder( r, code );
    output reg[7:0] r;
    input wire [2:0] code;
    
always@(code)
begin
    r = 8'b00000001;
    if(code[0]) r=r<<1;
    if(code[1]) r=r<<2;
    if(code[2]) r=r<<4;
end
endmodule
