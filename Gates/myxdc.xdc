## Switches as Inputs (A and B)
set_property PACKAGE_PIN V17 [get_ports A]   # SW0
set_property IOSTANDARD LVCMOS33 [get_ports A]

set_property PACKAGE_PIN V16 [get_ports B]   # SW1
set_property IOSTANDARD LVCMOS33 [get_ports B]

## LEDs as Outputs
set_property PACKAGE_PIN U16 [get_ports AND_out]  # LED0
set_property IOSTANDARD LVCMOS33 [get_ports AND_out]

set_property PACKAGE_PIN E19 [get_ports OR_out]   # LED1
set_property IOSTANDARD LVCMOS33 [get_ports OR_out]

set_property PACKAGE_PIN U19 [get_ports NOT_A]   # LED2
set_property IOSTANDARD LVCMOS33 [get_ports NOT_A]

set_property PACKAGE_PIN V19 [get_ports NOT_B]   # LED3
set_property IOSTANDARD LVCMOS33 [get_ports NOT_B]

set_property PACKAGE_PIN W18 [get_ports NAND_out]  # LED4
set_property IOSTANDARD LVCMOS33 [get_ports NAND_out]

set_property PACKAGE_PIN U15 [get_ports NOR_out]   # LED5
set_property IOSTANDARD LVCMOS33 [get_ports NOR_out]

set_property PACKAGE_PIN U14 [get_ports XOR_out]   # LED6
set_property IOSTANDARD LVCMOS33 [get_ports XOR_out]

set_property PACKAGE_PIN V14 [get_ports XNOR_out]  # LED7
set_property IOSTANDARD LVCMOS33 [get_ports XNOR_out]
