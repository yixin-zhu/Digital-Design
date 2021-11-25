`timescale 1ns / 1ps
module encoder(  r, origin );
    input wire [3:0] origin;
    reg [3:0] temp;
    output reg [1:0] r;


always @(origin)
begin
    temp = origin;
    temp = temp >> 1;
    r = 2'b00;
   repeat(4) begin  
        if(temp)begin
        temp = temp >> 1;
        r = r + 1;
        end
    end
end
endmodule
