# XDC constraints for the ADM-PCIE-9V3
# part: xcvu3p-ffvc1517-2-i

# General configuration
set_property CFGBVS GND                                [current_design]
set_property CONFIG_VOLTAGE 1.8                        [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true           [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-1} [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8           [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN {Pullnone}     [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN Enable  [current_design]

# 300 MHz system clock
set_property -dict {LOC AP26 IOSTANDARD LVDS} [get_ports clk_300mhz_p]
set_property -dict {LOC AP27 IOSTANDARD LVDS} [get_ports clk_300mhz_n]
create_clock -period 3.333 -name clk_300mhz [get_ports clk_300mhz_p]

# LEDs
set_property -dict {LOC AT27 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports {user_led_g[0]}]
set_property -dict {LOC AU27 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports {user_led_g[1]}]
set_property -dict {LOC AU23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports {user_led_r}]
set_property -dict {LOC AH24 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports {front_led[0]}]
set_property -dict {LOC AJ23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports {front_led[1]}]

# Switches
set_property -dict {LOC AV27 IOSTANDARD LVCMOS18} [get_ports {user_sw[0]}]
set_property -dict {LOC AW27 IOSTANDARD LVCMOS18} [get_ports {user_sw[1]}]

# GPIO
#set_property -dict {LOC G30  IOSTANDARD LVCMOS18} [get_ports gpio_p[0]]
#set_property -dict {LOC F30  IOSTANDARD LVCMOS18} [get_ports gpio_n[0]]
#set_property -dict {LOC J31  IOSTANDARD LVCMOS18} [get_ports gpio_p[1]]
#set_property -dict {LOC H31  IOSTANDARD LVCMOS18} [get_ports gpio_n[1]]

# QSFP28 Interfaces
set_property -dict {LOC G38  } [get_ports qsfp_0_rx_0_p] ;# MGTYRXN0_128 GTYE3_CHANNEL_X0Y16 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC G39  } [get_ports qsfp_0_rx_0_n] ;# MGTYRXP0_128 GTYE3_CHANNEL_X0Y16 / GTYE3_COMMON_X0Y4
set_property -dict {LOC E38  } [get_ports qsfp_0_rx_1_p] ;# MGTYRXN1_128 GTYE3_CHANNEL_X0Y17 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC E39  } [get_ports qsfp_0_rx_1_n] ;# MGTYRXP1_128 GTYE3_CHANNEL_X0Y17 / GTYE3_COMMON_X0Y4
set_property -dict {LOC C38  } [get_ports qsfp_0_rx_2_p] ;# MGTYRXN2_128 GTYE3_CHANNEL_X0Y18 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC C39  } [get_ports qsfp_0_rx_2_n] ;# MGTYRXP2_128 GTYE3_CHANNEL_X0Y18 / GTYE3_COMMON_X0Y4
set_property -dict {LOC B36  } [get_ports qsfp_0_rx_3_p] ;# MGTYRXN3_128 GTYE3_CHANNEL_X0Y19 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC B37  } [get_ports qsfp_0_rx_3_n] ;# MGTYRXP3_128 GTYE3_CHANNEL_X0Y19 / GTYE3_COMMON_X0Y4
set_property -dict {LOC F35  } [get_ports qsfp_0_tx_0_p] ;# MGTYTXN0_128 GTYE3_CHANNEL_X0Y16 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC F36  } [get_ports qsfp_0_tx_0_n] ;# MGTYTXP0_128 GTYE3_CHANNEL_X0Y16 / GTYE3_COMMON_X0Y4
set_property -dict {LOC D35  } [get_ports qsfp_0_tx_1_p] ;# MGTYTXN1_128 GTYE3_CHANNEL_X0Y17 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC D36  } [get_ports qsfp_0_tx_1_n] ;# MGTYTXP1_128 GTYE3_CHANNEL_X0Y17 / GTYE3_COMMON_X0Y4
set_property -dict {LOC C33  } [get_ports qsfp_0_tx_2_p] ;# MGTYTXN2_128 GTYE3_CHANNEL_X0Y18 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC C34  } [get_ports qsfp_0_tx_2_n] ;# MGTYTXP2_128 GTYE3_CHANNEL_X0Y18 / GTYE3_COMMON_X0Y4
set_property -dict {LOC A33  } [get_ports qsfp_0_tx_3_p] ;# MGTYTXN3_128 GTYE3_CHANNEL_X0Y19 / GTYE3_COMMON_X0Y4
#set_property -dict {LOC A34  } [get_ports qsfp_0_tx_3_n] ;# MGTYTXP3_128 GTYE3_CHANNEL_X0Y19 / GTYE3_COMMON_X0Y4
set_property -dict {LOC N33  } [get_ports qsfp_0_mgt_refclk_p] ;# MGTREFCLK0P_128 from ?
#set_property -dict {LOC N34  } [get_ports qsfp_0_mgt_refclk_n] ;# MGTREFCLK0N_128 from ?
set_property -dict {LOC F29  IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp_0_modprs_l]
set_property -dict {LOC D31  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports qsfp_0_sel_l]

# 161.1328125 MHz MGT reference clock
create_clock -period 6.206 -name qsfp_0_mgt_refclk [get_ports qsfp_0_mgt_refclk_p]

set_property -dict {LOC R38  } [get_ports qsfp_1_rx_0_p] ;# MGTYRXN0_127 GTYE3_CHANNEL_X0Y12 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC R39  } [get_ports qsfp_1_rx_0_n] ;# MGTYRXP0_127 GTYE3_CHANNEL_X0Y12 / GTYE3_COMMON_X0Y3
set_property -dict {LOC N38  } [get_ports qsfp_1_rx_1_p] ;# MGTYRXN1_127 GTYE3_CHANNEL_X0Y13 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC N39  } [get_ports qsfp_1_rx_1_n] ;# MGTYRXP1_127 GTYE3_CHANNEL_X0Y13 / GTYE3_COMMON_X0Y3
set_property -dict {LOC L38  } [get_ports qsfp_1_rx_2_p] ;# MGTYRXN2_127 GTYE3_CHANNEL_X0Y14 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC L39  } [get_ports qsfp_1_rx_2_n] ;# MGTYRXP2_127 GTYE3_CHANNEL_X0Y14 / GTYE3_COMMON_X0Y3
set_property -dict {LOC J38  } [get_ports qsfp_1_rx_3_p] ;# MGTYRXN3_127 GTYE3_CHANNEL_X0Y15 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC J39  } [get_ports qsfp_1_rx_3_n] ;# MGTYRXP3_127 GTYE3_CHANNEL_X0Y15 / GTYE3_COMMON_X0Y3
set_property -dict {LOC P35  } [get_ports qsfp_1_tx_0_p] ;# MGTYTXN0_127 GTYE3_CHANNEL_X0Y12 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC P36  } [get_ports qsfp_1_tx_0_n] ;# MGTYTXP0_127 GTYE3_CHANNEL_X0Y12 / GTYE3_COMMON_X0Y3
set_property -dict {LOC M35  } [get_ports qsfp_1_tx_1_p] ;# MGTYTXN1_127 GTYE3_CHANNEL_X0Y13 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC M36  } [get_ports qsfp_1_tx_1_n] ;# MGTYTXP1_127 GTYE3_CHANNEL_X0Y13 / GTYE3_COMMON_X0Y3
set_property -dict {LOC K35  } [get_ports qsfp_1_tx_2_p] ;# MGTYTXN2_127 GTYE3_CHANNEL_X0Y14 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC K36  } [get_ports qsfp_1_tx_2_n] ;# MGTYTXP2_127 GTYE3_CHANNEL_X0Y14 / GTYE3_COMMON_X0Y3
set_property -dict {LOC H35  } [get_ports qsfp_1_tx_3_p] ;# MGTYTXN3_127 GTYE3_CHANNEL_X0Y15 / GTYE3_COMMON_X0Y3
#set_property -dict {LOC H36  } [get_ports qsfp_1_tx_3_n] ;# MGTYTXP3_127 GTYE3_CHANNEL_X0Y15 / GTYE3_COMMON_X0Y3
set_property -dict {LOC U33  } [get_ports qsfp_1_mgt_refclk_p] ;# MGTREFCLK0P_127 from ?
#set_property -dict {LOC U34  } [get_ports qsfp_1_mgt_refclk_n] ;# MGTREFCLK0N_127 from ?
set_property -dict {LOC F33  IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp_1_modprs_l]
set_property -dict {LOC D30  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports qsfp_1_sel_l]

# 161.1328125 MHz MGT reference clock
create_clock -period 6.206 -name qsfp_1_mgt_refclk [get_ports qsfp_1_mgt_refclk_p]

set_property -dict {LOC B29  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports qsfp_reset_l]
set_property -dict {LOC C29  IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp_int_l]
set_property -dict {LOC A28  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12 PULLUP true} [get_ports qsfp_i2c_scl]
set_property -dict {LOC A29  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12 PULLUP true} [get_ports qsfp_i2c_sda]

# I2C interface
set_property -dict {LOC AT25 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12 PULLUP true} [get_ports eeprom_i2c_scl]
set_property -dict {LOC AT26 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12 PULLUP true} [get_ports eeprom_i2c_sda]
set_property -dict {LOC AP23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12 PULLUP true} [get_ports eeprom_wp]

# PCIe Interface
set_property -dict {LOC J2  } [get_ports {pcie_rx_p[0]}] ;# MGTYRXP3_227 GTYE3_CHANNEL_X0Y7 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC J1  } [get_ports {pcie_rx_n[0]}] ;# MGTYTXP3_227 GTYE3_CHANNEL_X0Y7 / GTYE3_COMMON_X0Y1
set_property -dict {LOC H5  } [get_ports {pcie_tx_p[0]}] ;# MGTYTXN3_227 GTYE3_CHANNEL_X0Y7 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC H4  } [get_ports {pcie_tx_n[0]}] ;# MGTYTXP3_227 GTYE3_CHANNEL_X0Y7 / GTYE3_COMMON_X0Y1
set_property -dict {LOC L2  } [get_ports {pcie_rx_p[1]}] ;# MGTYTXN2_227 GTYE3_CHANNEL_X0Y6 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC L1  } [get_ports {pcie_rx_n[1]}] ;# MGTYTXP2_227 GTYE3_CHANNEL_X0Y6 / GTYE3_COMMON_X0Y1
set_property -dict {LOC K5  } [get_ports {pcie_tx_p[1]}] ;# MGTYTXN2_227 GTYE3_CHANNEL_X0Y6 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC K4  } [get_ports {pcie_tx_n[1]}] ;# MGTYTXP2_227 GTYE3_CHANNEL_X0Y6 / GTYE3_COMMON_X0Y1
set_property -dict {LOC N2  } [get_ports {pcie_rx_p[2]}] ;# MGTYTXN1_227 GTYE3_CHANNEL_X0Y5 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC N1  } [get_ports {pcie_rx_n[2]}] ;# MGTYTXP1_227 GTYE3_CHANNEL_X0Y5 / GTYE3_COMMON_X0Y1
set_property -dict {LOC M5  } [get_ports {pcie_tx_p[2]}] ;# MGTYTXN1_227 GTYE3_CHANNEL_X0Y5 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC M4  } [get_ports {pcie_tx_n[2]}] ;# MGTYTXP1_227 GTYE3_CHANNEL_X0Y5 / GTYE3_COMMON_X0Y1
set_property -dict {LOC R2  } [get_ports {pcie_rx_p[3]}] ;# MGTYTXN0_227 GTYE3_CHANNEL_X0Y4 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC R1  } [get_ports {pcie_rx_n[3]}] ;# MGTYTXP0_227 GTYE3_CHANNEL_X0Y4 / GTYE3_COMMON_X0Y1
set_property -dict {LOC P5  } [get_ports {pcie_tx_p[3]}] ;# MGTYTXN0_227 GTYE3_CHANNEL_X0Y4 / GTYE3_COMMON_X0Y1
#set_property -dict {LOC P4  } [get_ports {pcie_tx_n[3]}] ;# MGTYTXP0_227 GTYE3_CHANNEL_X0Y4 / GTYE3_COMMON_X0Y1
set_property -dict {LOC U2  } [get_ports {pcie_rx_p[4]}] ;# MGTYTXN3_226 GTYE3_CHANNEL_X0Y3 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC U1  } [get_ports {pcie_rx_n[4]}] ;# MGTYTXP3_226 GTYE3_CHANNEL_X0Y3 / GTYE3_COMMON_X0Y0
set_property -dict {LOC T5  } [get_ports {pcie_tx_p[4]}] ;# MGTYTXN3_226 GTYE3_CHANNEL_X0Y3 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC T4  } [get_ports {pcie_tx_n[4]}] ;# MGTYTXP3_226 GTYE3_CHANNEL_X0Y3 / GTYE3_COMMON_X0Y0
set_property -dict {LOC W2  } [get_ports {pcie_rx_p[5]}] ;# MGTYTXN2_226 GTYE3_CHANNEL_X0Y2 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC W1  } [get_ports {pcie_rx_n[5]}] ;# MGTYTXP2_226 GTYE3_CHANNEL_X0Y2 / GTYE3_COMMON_X0Y0
set_property -dict {LOC V5  } [get_ports {pcie_tx_p[5]}] ;# MGTYTXN2_226 GTYE3_CHANNEL_X0Y2 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC V4  } [get_ports {pcie_tx_n[5]}] ;# MGTYTXP2_226 GTYE3_CHANNEL_X0Y2 / GTYE3_COMMON_X0Y0
set_property -dict {LOC AA2 } [get_ports {pcie_rx_p[6]}] ;# MGTYTXN1_226 GTYE3_CHANNEL_X0Y1 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AA1 } [get_ports {pcie_rx_n[6]}] ;# MGTYTXP1_226 GTYE3_CHANNEL_X0Y1 / GTYE3_COMMON_X0Y0
set_property -dict {LOC AB5 } [get_ports {pcie_tx_p[6]}] ;# MGTYTXN1_226 GTYE3_CHANNEL_X0Y1 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AB4 } [get_ports {pcie_tx_n[6]}] ;# MGTYTXP1_226 GTYE3_CHANNEL_X0Y1 / GTYE3_COMMON_X0Y0
set_property -dict {LOC AC2 } [get_ports {pcie_rx_p[7]}] ;# MGTYTXN0_226 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AC1 } [get_ports {pcie_rx_n[7]}] ;# MGTYTXP0_226 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
set_property -dict {LOC AD5 } [get_ports {pcie_tx_p[7]}] ;# MGTYTXN0_226 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AD4 } [get_ports {pcie_tx_n[7]}] ;# MGTYTXP0_226 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AE2 } [get_ports {pcie_rx_p[8]}] ;# MGTYTXN3_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AE1 } [get_ports {pcie_rx_n[8]}] ;# MGTYTXP3_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AF5 } [get_ports {pcie_tx_p[8]}] ;# MGTYTXN3_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AF4 } [get_ports {pcie_tx_n[8]}] ;# MGTYTXP3_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AG2 } [get_ports {pcie_rx_p[9]}] ;# MGTYTXN2_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AG1 } [get_ports {pcie_rx_n[9]}] ;# MGTYTXP2_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AH5 } [get_ports {pcie_tx_p[9]}] ;# MGTYTXN2_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AH4 } [get_ports {pcie_tx_n[9]}] ;# MGTYTXP2_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AJ2 } [get_ports {pcie_rx_p[10]}] ;# MGTYTXN1_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AJ1 } [get_ports {pcie_rx_n[10]}] ;# MGTYTXP1_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AK5 } [get_ports {pcie_tx_p[10]}] ;# MGTYTXN1_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AK4 } [get_ports {pcie_tx_n[10]}] ;# MGTYTXP1_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AL2 } [get_ports {pcie_rx_p[11]}] ;# MGTYTXN0_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AL1 } [get_ports {pcie_rx_n[11]}] ;# MGTYTXP0_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AM5 } [get_ports {pcie_tx_p[11]}] ;# MGTYTXN0_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AM4 } [get_ports {pcie_tx_n[11]}] ;# MGTYTXP0_225 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AN2 } [get_ports {pcie_rx_p[12]}] ;# MGTYTXN3_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AN1 } [get_ports {pcie_rx_n[12]}] ;# MGTYTXP3_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AP5 } [get_ports {pcie_tx_p[12]}] ;# MGTYTXN3_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AP4 } [get_ports {pcie_tx_n[12]}] ;# MGTYTXP3_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AR2 } [get_ports {pcie_rx_p[13]}] ;# MGTYTXN2_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AR1 } [get_ports {pcie_rx_n[13]}] ;# MGTYTXP2_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AT5 } [get_ports {pcie_tx_p[13]}] ;# MGTYTXN2_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AT4 } [get_ports {pcie_tx_n[13]}] ;# MGTYTXP2_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AU2 } [get_ports {pcie_rx_p[14]}] ;# MGTYTXN1_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AU1 } [get_ports {pcie_rx_n[14]}] ;# MGTYTXP1_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AU7 } [get_ports {pcie_tx_p[14]}] ;# MGTYTXN1_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AU6 } [get_ports {pcie_tx_n[14]}] ;# MGTYTXP1_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AV4 } [get_ports {pcie_rx_p[15]}] ;# MGTYTXN0_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AV3 } [get_ports {pcie_rx_n[15]}] ;# MGTYTXP0_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AW7 } [get_ports {pcie_tx_p[15]}] ;# MGTYTXN0_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
#set_property -dict {LOC AW6 } [get_ports {pcie_tx_n[15]}] ;# MGTYTXP0_224 GTYE3_CHANNEL_X0Y0 / GTYE3_COMMON_X0Y0
set_property -dict {LOC AA7  } [get_ports pcie_refclk_1_p] ;# MGTREFCLK0P_226
#set_property -dict {LOC AA6  } [get_ports pcie_refclk_1_n] ;# MGTREFCLK0N_226
#set_property -dict {LOC AJ7  } [get_ports pcie_refclk_2_p] ;# MGTREFCLK0P_224
#set_property -dict {LOC AJ6  } [get_ports pcie_refclk_2_n] ;# MGTREFCLK0N_224
set_property -dict {LOC AJ31 IOSTANDARD LVCMOS18 PULLUP true} [get_ports perst_0]
#set_property -dict {LOC AH29 IOSTANDARD LVCMOS18 PULLUP true} [get_ports perst_1]

# 100 MHz MGT reference clock
create_clock -period 10 -name pcie_mgt_refclk_1 [get_ports pcie_refclk_1_p]
#create_clock -period 10 -name pcie_mgt_refclk_2 [get_ports pcie_refclk_2_p]

# Flash
#set_property -dict {LOC AF30 IOSTANDARD LVCMOS18 DRIVE 16} [get_ports {qspi1_dq[0]}]
#set_property -dict {LOC AG30 IOSTANDARD LVCMOS18 DRIVE 16} [get_ports {qspi1_dq[1]}]
#set_property -dict {LOC AF28 IOSTANDARD LVCMOS18 DRIVE 16} [get_ports {qspi1_dq[2]}]
#set_property -dict {LOC AG28 IOSTANDARD LVCMOS18 DRIVE 16} [get_ports {qspi1_dq[3]}]
#set_property -dict {LOC AV30 IOSTANDARD LVCMOS18 DRIVE 16} [get_ports {qspi1_cs}]

