`timescale 1ns/1ns
module BCD7(din,dout);
input [3:0] din;
output [6:0] dout;

assign dout=(din==0)?7'b111_1110:
            (din==1)?7'b011_0000:
            (din==2)?7'b110_1101:
            (din==3)?7'b111_1001:
            (din==4)?7'b011_0011:
            (din==5)?7'b101_1011:
            (din==6)?7'b101_1111:
            (din==7)?7'b111_0000:
            (din==8)?7'b111_1111:
            (din==9)?7'b111_1011:
            (din==10)?7'b111_0111:  // A
            (din==11)?7'b001_1111:  // b
            (din==12)?7'b100_1110:  // C
            (din==13)?7'b011_1101:  // d
            (din==14)?7'b100_1111:  // E
            (din==15)?7'b100_0111:  // F
            7'b0;
endmodule
