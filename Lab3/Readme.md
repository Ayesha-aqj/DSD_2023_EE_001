## Combinational Circuits: Structural Modeling using Vivado
### INTRODUCTION

This project invovles making RTL design for a logics gate system using Vivado.

### PROCEDURE:

- Firstly a code was wriiten for the logical circuit using `System Verilog` language for hardware design. 
   
    The code for the given circuit is as follow
         
         module lab3(output x,y,
            input a,b,c);

           wire not_out, or1_out, nand_out, 
           or2_out, or3_out;
           assign not_out= ~c;
           assign or1_out= a|b;
           assign or2_out= a|b;
           assign nand_out= ~(a&b);
           assign or3_out= nand_out^or2_out;
           assign x= not_out^or1_out;
           assign y= or1_out&or3_out;
       endmodule

  **The code was written uisng only ***`assign`*** staement (Structure Modeling)**

 - Secondly schematic of the above code was made by the Vivado Software and implemntation was run.

 - Constraints were written in the constraint file in order to assign pins to the ports of the circuit.
 The constraint written for the given circuit is,

 set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports {x}];

 set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports {y}];

 set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { a }];

 set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { b }]; 

 set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { c }];



 - `Bit Stream` was generated, the purpose of this step is to analyze and visualize the circuit in **FPGA**  i.e., `Nexys-A7-100T-Master`. That FPGA will follow the *Truth Table* of the circuit. This part is necessary for analyzing the correctness of the rtl code and schematics.
       

       




