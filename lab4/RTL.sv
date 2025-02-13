
`timescale 1ns/10ps

module lab04(output x,y,
           input a,b,c);
           logic not_out, or1_out, nand_out, or2_out, or3_out;
           assign not_out= ~c;
           assign or1_out= a|b;
           assign or2_out= a|b;
           assign nand_out= ~(a&b);
           assign or3_out= nand_out^or2_out;
           assign x= not_out^or1_out;
           assign y= or1_out&or3_out;
           
endmodule

