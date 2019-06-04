## Pynq-Z2 constraints file 
## chapter 2
## project: blink

# Clock signal
set_property PACKAGE_PIN H16 [get_ports {CLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]
create_clock -period 8.000 -name sys_clk_pin \
    -waveform {0.000 4.000} -add [get_ports {CLK}]

# Reset
set_property PACKAGE_PIN L19 [get_ports {RST}]
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

# LEDs
set_property PACKAGE_PIN R14 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN P14 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

set_property PACKAGE_PIN N16 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

set_property PACKAGE_PIN M14 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
