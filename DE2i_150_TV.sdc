#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 12.0 Build 178 05/31/2012 SJ Full Version
#
#************************************************************

# Copyright (C) 1991-2012 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints

create_clock -name "TD_CLK27" -period 37.000ns [get_ports {TD_CLK27}]
create_clock -name "CLOCK_50" -period 20.000ns [get_ports {CLOCK_50}]
create_clock -name "CLOCK2_50" -period 20.000ns [get_ports {CLOCK2_50}]
create_clock -name "CLOCK3_50" -period 20.000ns [get_ports {CLOCK3_50}]
create_clock -name "ENET_RX_CLK" -period 8.000ns [get_ports {ENET_RX_CLK}]


# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# tsu/th constraints

# tco constraints

# tpd constraints
