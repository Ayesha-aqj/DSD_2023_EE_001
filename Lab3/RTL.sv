module lab3(output x,y,
            input a,b,c);
           wire not_out, or1_out, nand_out, or2_out, or3_out;
           assign not_out= ~c;
           assign or1_out= a|b;
           assign or2_out= a|b;
           assign nand_out= ~(a&b);
           assign or3_out= nand_out^or2_out;
           assign x= not_out^or1_out;
           assign y= or1_out&or3_out;
           
endmodule


