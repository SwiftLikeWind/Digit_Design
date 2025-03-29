## ALU Input A (SW0 - SW3)
set_property PACKAGE_PIN V17 [get_ports {A[0]}]  
set_property PACKAGE_PIN V16 [get_ports {A[1]}]  
set_property PACKAGE_PIN W16 [get_ports {A[2]}]  
set_property PACKAGE_PIN W17 [get_ports {A[3]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {A[*]}]

## ALU Input B (SW4 - SW7)
set_property PACKAGE_PIN W15 [get_ports {B[0]}]  
set_property PACKAGE_PIN V15 [get_ports {B[1]}]  
set_property PACKAGE_PIN W14 [get_ports {B[2]}]  
set_property PACKAGE_PIN W13 [get_ports {B[3]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {B[*]}]

## ALU Operation Select (SW8 - SW10)
set_property PACKAGE_PIN V2 [get_ports {ALU_Sel[0]}]  
set_property PACKAGE_PIN T3 [get_ports {ALU_Sel[1]}]  
set_property PACKAGE_PIN T2 [get_ports {ALU_Sel[2]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {ALU_Sel[*]}]

## ALU Output (LED0 - LED3)
set_property PACKAGE_PIN U16 [get_ports {ALU_Out[0]}]  
set_property PACKAGE_PIN E19 [get_ports {ALU_Out[1]}]  
set_property PACKAGE_PIN U19 [get_ports {ALU_Out[2]}]  
set_property PACKAGE_PIN W18 [get_ports {ALU_Out[3]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {ALU_Out[*]}]

## Carry Out (LED4)
set_property PACKAGE_PIN U15 [get_ports CarryOut]  
set_property IOSTANDARD LVCMOS33 [get_ports CarryOut]
