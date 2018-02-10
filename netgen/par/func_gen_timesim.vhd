--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: func_gen_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 09 11:33:54 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3N -pcf func_gen.pcf -rpw 100 -tpw 0 -ar Structure -tm func_gen -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim func_gen.ncd func_gen_timesim.vhd 
-- Device	: 6slx16csg324-3n (PRODUCTION 1.23 2013-10-13)
-- Input file	: func_gen.ncd
-- Output file	: C:\Xilinx\func_gen\netgen\par\func_gen_timesim.vhd
-- # of Entities	: 1
-- Design Name	: func_gen
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity func_gen is
  port (
    func_gen_clk_in : in STD_LOGIC := 'X'; 
    func_gen_rst_l_in : in STD_LOGIC := 'X'; 
    func_gen_sine_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    func_gen_pulse_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    func_gen_triangle_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    func_gen_sawtooth_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    func_gen_dcoffset_out : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end func_gen;

architecture Structure of func_gen is
  signal Q_n0171_inv_0 : STD_LOGIC; 
  signal func_gen_clk_in_BUFGP : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_19_Q : STD_LOGIC; 
  signal func_gen_rst_l_in_inv : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_28_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_29_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_1748 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand : STD_LOGIC; 
  signal func_gen_int_tneg_slope_0_1_1750 : STD_LOGIC; 
  signal PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_22_Q : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv : STD_LOGIC; 
  signal Q_n0169_inv : STD_LOGIC; 
  signal Q_n0168_inv_0 : STD_LOGIC; 
  signal func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_20_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_13_1768 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_12_1769 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_11_1770 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_10_1771 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_3_1772 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_9_1773 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_2_1774 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_8_1775 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_1_1776 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_7_1777 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_17_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_18_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_17_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_6_1782 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_0_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_10_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_0_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_11_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_12_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_11_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_13_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_14_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_13_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_5_1795 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_1_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_2_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_1_0 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_uns_tcnt_9_LessThan_23_o : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_3_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_4_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_3_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_4_1809 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_5_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_6_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_5_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_7_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_8_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_7_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_0 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_9_0 : STD_LOGIC; 
  signal func_gen_int_triangle_data_15_0 : STD_LOGIC; 
  signal func_gen_int_sawtooth_data_0_0 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_21_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_19_0 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_21_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_19_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_20_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_data_3_0 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_15_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_16_Q : STD_LOGIC; 
  signal func_gen_int_triangle_temp1_15_0 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_17_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_18_Q : STD_LOGIC; 
  signal func_gen_int_triangle_temp1_17_0 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_19_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_20_Q : STD_LOGIC; 
  signal func_gen_int_triangle_temp1_19_0 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Q_1866 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Q_1870 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Q_1875 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt1_cy_3_Q_1882 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt1_cy_7_Q_1887 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt_cy_3_Q_1891 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt_cy_7_Q_1892 : STD_LOGIC; 
  signal func_gen_clk_in_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_16_Q : STD_LOGIC; 
  signal func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_17_Q : STD_LOGIC; 
  signal func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_18_Q : STD_LOGIC; 
  signal func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_19_Q : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P46_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P45_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P44_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P43_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P42_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P41_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P40_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P39_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P38_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P37_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P36_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P35_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P34_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P33_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P32_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P31_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P30_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P29_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P28_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P27_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P26_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P25_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P24_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P23_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P22_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P21_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P20_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P19_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P18_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P17_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_0 : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_30_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_27_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_26_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_25_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_24_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_23_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_22_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_21_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_20_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_18_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_17_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_16_Q : STD_LOGIC; 
  signal GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_15_Q : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_0_Q_207 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_0_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_1_Q_200 : STD_LOGIC; 
  signal ProtoComp14_CYINITGND_0 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_2_Q_195 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_0_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_3_Q_193 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_1_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_2_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_3_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_8_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_8_Q_268 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_9_Q_266 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_10_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_10_Q_253 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_11_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_9_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_11_Q_244 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_4_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_4_Q_238 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_5_Q_236 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_6_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_6_Q_223 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_7_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_5_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_7_Q_214 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_14_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_13_Q_292 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_14_Q_289 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_13_Q : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_12_Q_281 : STD_LOGIC; 
  signal Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_15_Q_277 : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_12_Q : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt13 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt14 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt11 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt12 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt15 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt18 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt17 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt16 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt9 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt8 : STD_LOGIC; 
  signal func_gen_clk_in_BUFGP_IBUFG_511 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt19 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_tcnt110 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt6 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt7 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt5 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt4 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt3 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt2 : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt : STD_LOGIC; 
  signal Mcount_func_gen_int_uns_pcnt1 : STD_LOGIC; 
  signal func_gen_rst_l_in_inv_non_inverted : STD_LOGIC; 
  signal ProtoComp25_IINV_OUT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M0 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M1 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M2 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M3 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M4 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M5 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M6 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M7 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M8 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M9 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M10 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M11 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M12 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M13 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M14 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M15 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M21 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M22 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M23 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M24 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M25 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M26 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M27 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M28 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M29 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M30 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M31 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M32 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M33 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M34 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M35 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT0 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT1 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT2 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT3 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT4 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT5 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT6 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT7 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT8 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT9 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT10 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT11 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT12 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT13 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT14 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT15 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT16 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT17 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT18 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT19 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT20 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT21 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT22 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT23 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT24 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT25 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT26 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT27 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT28 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT29 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT30 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT31 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT32 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT33 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT34 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT35 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT36 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT37 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT38 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT39 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT40 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT41 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT42 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT43 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT44 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT45 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT46 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT47 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P0 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P1 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P2 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P3 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P4 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P5 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P6 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P7 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P8 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P9 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P10 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P11 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P12 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P13 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P14 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P15 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P16 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P17 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P18 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P19 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P20 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P21 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P22 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P23 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P24 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P25 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P26 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P27 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P28 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P29 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P30 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P31 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P32 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P33 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P34 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P35 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P36 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P37 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P38 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P39 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P40 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P41 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P42 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P43 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P44 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P45 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P46 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P47 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT0 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT1 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT2 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT3 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT4 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT5 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT6 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT7 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT8 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT9 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT10 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT11 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT12 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT13 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT14 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT15 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT16 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT17 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CARRYOUT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CARRYOUTF : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN0 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN1 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN2 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN3 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN4 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN5 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN6 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN7 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN8 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN9 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN10 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN11 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN12 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN13 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN14 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN15 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN16 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN17 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN0 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN1 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN2 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN3 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN4 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN5 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN6 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN7 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN8 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN9 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN10 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN11 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN12 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN13 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN14 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN15 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN16 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN17 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN18 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN19 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN20 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN21 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN22 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN23 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN24 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN25 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN26 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN27 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN28 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN29 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN30 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN31 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN32 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN33 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN34 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN35 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN36 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN37 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN38 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN39 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN40 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN41 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN42 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN43 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN44 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN45 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN46 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN47 : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTP_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTA_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEA_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEP_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEB_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEM_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTB_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CLK_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTM_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTOPMODE_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEC_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEOPMODE_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTD_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CED_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTCARRYIN_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTC_INT : STD_LOGIC; 
  signal Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CECARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CARRYOUT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CARRYOUTF : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CLK_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTD_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CED_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTCARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CECARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CARRYOUT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CARRYOUTF : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CLK_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTD_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CED_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTCARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CECARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CARRYOUT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CARRYOUTF : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CLK_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTD_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CED_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTCARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CECARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CARRYOUT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CARRYOUTF : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN0 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN1 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN2 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN3 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN4 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN5 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN6 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN7 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN8 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN9 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN10 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN11 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN12 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN13 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN14 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN15 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN16 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN17 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN18 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN19 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN20 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN21 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN22 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN23 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN24 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN25 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN26 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN27 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN28 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN29 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN30 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN31 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN32 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN33 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN34 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN35 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN36 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN37 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN38 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN39 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN40 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN41 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN42 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN43 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN44 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN45 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN46 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN47 : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEA_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEP_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTB_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CLK_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTM_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEOPMODE_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTD_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CED_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTCARRYIN_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTC_INT : STD_LOGIC; 
  signal Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CECARRYIN_INT : STD_LOGIC; 
  signal n0122_17_Q : STD_LOGIC; 
  signal n0122_18_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_5_Q : STD_LOGIC; 
  signal n0122_20_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_22_pack_4 : STD_LOGIC; 
  signal n0122_19_Q : STD_LOGIC; 
  signal n0122_26_Q : STD_LOGIC; 
  signal N14_pack_1 : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_0_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_21_pack_3 : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_1_Q : STD_LOGIC; 
  signal n0122_21_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_3_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_2_Q : STD_LOGIC; 
  signal func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_4_Q : STD_LOGIC; 
  signal GND_7_o_GND_7_o_mux_37_OUT_18_Q : STD_LOGIC; 
  signal GND_7_o_GND_7_o_mux_37_OUT_20_Q : STD_LOGIC; 
  signal GND_7_o_GND_7_o_mux_37_OUT_19_Q : STD_LOGIC; 
  signal GND_7_o_GND_7_o_mux_37_OUT_15_Q : STD_LOGIC; 
  signal GND_7_o_GND_7_o_mux_37_OUT_17_Q : STD_LOGIC; 
  signal GND_7_o_GND_7_o_mux_37_OUT_16_Q : STD_LOGIC; 
  signal GND_7_o_GND_7_o_mux_37_OUT_24_Q : STD_LOGIC; 
  signal Q_n0171_inv : STD_LOGIC; 
  signal Q_n0168_inv : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_5_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_2_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_4_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_3_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_1_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_7_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_8_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_6_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_9_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_10_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_15_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_0_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_14_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_12_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_11_Q : STD_LOGIC; 
  signal func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_13_Q : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_13_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_CLKA : STD_LOGIC;
 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_tcnt1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_uns_pcnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_triangle_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_pulse_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_clk_in_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_pulse_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sawtooth_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_sine_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_tneg_slope_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_tneg_slope_0_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_tneg_slope_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_tneg_slope_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_temp1_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_temp1_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_temp1_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_temp1_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_temp1_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_negmax_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_temp1_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sawtooth_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_25_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_23_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp1_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp1_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp1_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp1_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp1_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp1_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_sine_atten_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_temp2_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_func_gen_int_triangle_data_15_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_func_gen_int_uns_pcnt_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_1_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_func_gen_pulse_out_15_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal func_gen_int_triangle_temp2 : STD_LOGIC_VECTOR ( 30 downto 15 ); 
  signal func_gen_int_uns_pcnt : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal func_gen_int_sawtooth_data : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal func_gen_int_sine_atten : STD_LOGIC_VECTOR ( 20 downto 16 ); 
  signal func_gen_int_sawtooth_temp1 : STD_LOGIC_VECTOR ( 22 downto 17 ); 
  signal func_gen_int_triangle_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal func_gen_int_triangle_temp1 : STD_LOGIC_VECTOR ( 21 downto 15 ); 
  signal func_gen_int_sine_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal func_gen_int_uns_tcnt1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal func_gen_int_pulse_data : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal func_gen_int_tneg_slope : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_func_gen_int_uns_tcnt1_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcount_func_gen_int_uns_pcnt_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal GND_7_o_GND_7_o_mux_14_OUT : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  func_gen_int_triangle_negmax_2 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_2_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_2_1774,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_12 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_12_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_12_1769,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_9 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_9_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_9_1773,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_10 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_10_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_10_1771,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_11 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_11_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_11_1770,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_3 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_3_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_3_1772,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_13 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_13_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_13_1768,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_7 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_7_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_7_1777,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_6 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_6_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_6_1782,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_4 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_4_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_4_1809,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_3_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_3_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_2_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_2_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_1_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_1_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_0_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_0_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => X"00F0FFF0FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR2 => func_gen_int_triangle_temp2(18),
      ADR5 => func_gen_int_triangle_temp1(18),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_3_Q_193
    );
  ProtoComp14_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X16Y10"
    )
    port map (
      O => ProtoComp14_CYINITGND_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y10"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp14_CYINITGND_0,
      CO(3) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Q_1866,
      CO(2) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_1_Q,
      DI(0) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_0_Q,
      O(3) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_3_Q,
      O(2) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_2_Q,
      O(1) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_1_Q,
      O(0) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_0_Q,
      S(3) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_3_Q_193,
      S(2) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_2_Q_195,
      S(1) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_1_Q_200,
      S(0) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_0_Q_207
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => X"CC00CCFFCC00CCFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR4 => func_gen_int_triangle_temp2(17),
      ADR1 => func_gen_int_triangle_temp1_17_0,
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_2_Q_195
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => X"FFFF0F0F00000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR2 => func_gen_int_triangle_temp2(16),
      ADR5 => func_gen_int_triangle_temp1(16),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_1_Q_200
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => X"50A05FAF50A05FAF"
    )
    port map (
      ADR1 => '1',
      ADR2 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR0 => func_gen_int_triangle_negmax_1748,
      ADR3 => func_gen_int_triangle_temp1_15_0,
      ADR4 => func_gen_int_triangle_temp2(15),
      ADR5 => '1',
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_0_Q_207
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_A11 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => X"AFAFAFAF"
    )
    port map (
      ADR1 => '1',
      ADR2 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR0 => func_gen_int_triangle_negmax_1748,
      ADR3 => '1',
      ADR4 => '1',
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_0_Q
    );
  func_gen_int_triangle_negmax_1 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_1_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_1_1776,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_5 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_5_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_5_1795,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_11_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_11_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_10_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_10_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_9_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_9_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_8_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_8_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"0FFFF0FF0F00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR5 => func_gen_int_triangle_temp2(26),
      ADR2 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_11_Q_244
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y12"
    )
    port map (
      CI => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Q_1870,
      CYINIT => '0',
      CO(3) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Q_1875,
      CO(2) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_0_Q,
      O(3) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_11_Q,
      O(2) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_10_Q,
      O(1) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_9_Q,
      O(0) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_8_Q,
      S(3) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_11_Q_244,
      S(2) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_10_Q_253,
      S(1) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_9_Q_266,
      S(0) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_8_Q_268
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"0FAAF0AA0FAAF0AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR0 => func_gen_int_triangle_temp2(25),
      ADR2 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_10_Q_253
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"00FFAAAAFF00AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR4 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR0 => func_gen_int_triangle_temp2(24),
      ADR5 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_9_Q_266
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"00FFFF00CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR5 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR1 => func_gen_int_triangle_temp2(23),
      ADR3 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_8_Q_268
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_7_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_7_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_6_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_6_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_5_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_5_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_4_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_4_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"00FFFF00F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR5 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR2 => func_gen_int_triangle_temp2(22),
      ADR3 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_7_Q_214
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y11"
    )
    port map (
      CI => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_Q_1866,
      CYINIT => '0',
      CO(3) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_Q_1870,
      CO(2) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_0_Q,
      O(3) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_7_Q,
      O(2) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_6_Q,
      O(1) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_5_Q,
      O(0) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_4_Q,
      S(3) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_7_Q_214,
      S(2) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_6_Q_223,
      S(1) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_5_Q_236,
      S(0) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_4_Q_238
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"0FF0AAAA0FF0AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR4 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR0 => func_gen_int_triangle_temp2(21),
      ADR2 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_6_Q_223
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"3CFF3C003CFF3C00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR4 => func_gen_int_triangle_temp2(20),
      ADR2 => func_gen_int_triangle_temp1(20),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_5_Q_236
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"55CCAACC55CCAACC"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR1 => func_gen_int_triangle_temp2(19),
      ADR4 => func_gen_int_triangle_temp1_19_0,
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_4_Q_238
    );
  u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 18,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => FALSE,
      EN_RSTRAM_B => FALSE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0C0C0B3F0A7109A408D70809073C066E05A104D304050337026A019C00CE0000",
      INIT_01 => X"18C617FC17321667159C14D11406133A126F11A310D7100B0F3E0E720DA50CD9",
      INIT_02 => X"2540247B23B622F0222A2163209C1FD51F0D1E451D7D1CB51BEC1B231A5A1990",
      INIT_03 => X"315A309C2FDE2F1E2E5F2D9F2CDE2C1D2B5B2A9929D729142851278E26CA2605",
      INIT_04 => X"3CF53C403B8A3AD33A1C396438AC37F3373A368035C5350A344E339232D53218",
      INIT_05 => X"47F24747469C45F04543449543E74338428941D9412840763FC43F113E5E3DAA",
      INIT_06 => X"5235519650F750584FB74F154E734DD04D2C4C884BE24B3C4A9549ED4945489C",
      INIT_07 => X"5BA35B135A8259F0595D58C95834579F5708567155D8553F54A5540A536F52D2",
      INIT_08 => X"642563A46322629F621C61976111608B60035F7A5EF15E665DDB5D4E5CC15C32",
      INIT_09 => X"6BA36B336AC26A5069DD696968F3687D6806678D67146699661D65A1652364A4",
      INIT_0A => X"720C71AE714E70EE708D702A6FC66F616EFB6E946E2C6DC36D586CED6C806C12",
      INIT_0B => X"774D770276B67668761975C97578752674D2747D742873D07378731F72C47269",
      INIT_0C => X"7B5A7B237AEA7AB07A757A3879FA79BB797B793A78F778B3786E782777E07797",
      INIT_0D => X"7E297E057DE17DBB7D937D6B7D417D167CEA7CBC7C8E7C5D7C2C7BFA7BC67B91",
      INIT_0E => X"7FB17FA27F927F807F6E7F5A7F447F2E7F167EFD7EE27EC67EA97E8B7E6C7E4B",
      INIT_0F => X"7FEF7FF57FF97FFC7FFE7FFF7FFE7FFC7FF97FF57FEF7FE87FDF7FD67FCB7FBE",
      INIT_10 => X"7EE27EFD7F167F2E7F447F5A7F6E7F807F927FA27FB17FBE7FCB7FD67FDF7FE8",
      INIT_11 => X"7C8E7CBC7CEA7D167D417D6B7D937DBB7DE17E057E297E4B7E6C7E8B7EA97EC6",
      INIT_12 => X"78F7793A797B79BB79FA7A387A757AB07AEA7B237B5A7B917BC67BFA7C2C7C5D",
      INIT_13 => X"7428747D74D27526757875C97619766876B67702774D779777E07827786E78B3",
      INIT_14 => X"6E2C6E946EFB6F616FC6702A708D70EE714E71AE720C726972C4731F737873D0",
      INIT_15 => X"6714678D6806687D68F3696969DD6A506AC26B336BA36C126C806CED6D586DC3",
      INIT_16 => X"5EF15F7A6003608B61116197621C629F632263A4642564A4652365A1661D6699",
      INIT_17 => X"55D856715708579F583458C9595D59F05A825B135BA35C325CC15D4E5DDB5E66",
      INIT_18 => X"4BE24C884D2C4DD04E734F154FB7505850F75196523552D2536F540A54A5553F",
      INIT_19 => X"412841D94289433843E74495454345F0469C474747F2489C494549ED4A954B3C",
      INIT_1A => X"35C53680373A37F338AC39643A1C3AD33B8A3C403CF53DAA3E5E3F113FC44076",
      INIT_1B => X"29D72A992B5B2C1D2CDE2D9F2E5F2F1E2FDE309C315A321832D53392344E350A",
      INIT_1C => X"1D7D1E451F0D1FD5209C2163222A22F023B6247B2540260526CA278E28512914",
      INIT_1D => X"10D711A3126F133A140614D1159C1667173217FC18C619901A5A1B231BEC1CB5",
      INIT_1E => X"040504D305A1066E073C080908D709A40A710B3F0C0C0CD90DA50E720F3E100B",
      INIT_1F => X"F729F7F7F8C4F992FA5FFB2DFBFBFCC9FD96FE64FF32000000CE019C026A0337",
      INIT_20 => X"EA64EB2FEBFAECC6ED91EE5DEF29EFF5F0C2F18EF25BF327F3F4F4C1F58FF65C",
      INIT_21 => X"DDD6DE9DDF64E02BE0F3E1BBE283E34BE414E4DDE5A6E670E73AE804E8CEE999",
      INIT_22 => X"D1A1D261D322D3E3D4A5D567D629D6ECD7AFD872D936D9FBDAC0DB85DC4ADD10",
      INIT_23 => X"C5E4C69CC754C80DC8C6C980CA3BCAF6CBB2CC6ECD2BCDE8CEA6CF64D022D0E2",
      INIT_24 => X"BABDBB6BBC19BCC8BD77BE27BED8BF8AC03CC0EFC1A2C256C30BC3C0C476C52D",
      INIT_25 => X"B049B0EBB18DB230B2D4B378B41EB4C4B56BB613B6BBB764B80EB8B9B964BA10",
      INIT_26 => X"A6A3A737A7CCA861A8F8A98FAA28AAC1AB5BABF6AC91AD2EADCBAE6AAF09AFA8",
      INIT_27 => X"9DE49E699EEF9F759FFDA086A10FA19AA225A2B2A33FA3CEA45DA4EDA57EA610",
      INIT_28 => X"96239697970D978397FA987398EC996799E39A5F9ADD9B5C9BDB9C5C9CDE9D61",
      INIT_29 => X"8F738FD6903A909F9105916C91D4923D92A89313938093EE945D94CD953E95B0",
      INIT_2A => X"89E78A378A888ADA8B2E8B838BD88C308C888CE18D3C8D978DF48E528EB28F12",
      INIT_2B => X"858B85C886068645868586C68709874D879287D98820886988B388FE894A8998",
      INIT_2C => X"826D829582BF82EA83168344837283A383D48406843A846F84A684DD85168550",
      INIT_2D => X"809280A680BC80D280EA8103811E813A81578175819481B581D781FB821F8245",
      INIT_2E => X"80028001800280048007800B801180188021802A80358042804F805E806E8080",
      INIT_2F => X"80BC80A680928080806E805E804F80428035802A802180188011800B80078004",
      INIT_30 => X"82BF8295826D8245821F81FB81D781B5819481758157813A811E810380EA80D2",
      INIT_31 => X"860685C8858B8550851684DD84A6846F843A840683D483A383728344831682EA",
      INIT_32 => X"8A888A3789E78998894A88FE88B38869882087D98792874D870986C686858645",
      INIT_33 => X"903A8FD68F738F128EB28E528DF48D978D3C8CE18C888C308BD88B838B2E8ADA",
      INIT_34 => X"970D9697962395B0953E94CD945D93EE9380931392A8923D91D4916C9105909F",
      INIT_35 => X"9EEF9E699DE49D619CDE9C5C9BDB9B5C9ADD9A5F99E3996798EC987397FA9783",
      INIT_36 => X"A7CCA737A6A3A610A57EA4EDA45DA3CEA33FA2B2A225A19AA10FA0869FFD9F75",
      INIT_37 => X"B18DB0EBB049AFA8AF09AE6AADCBAD2EAC91ABF6AB5BAAC1AA28A98FA8F8A861",
      INIT_38 => X"BC19BB6BBABDBA10B964B8B9B80EB764B6BBB613B56BB4C4B41EB378B2D4B230",
      INIT_39 => X"C754C69CC5E4C52DC476C3C0C30BC256C1A2C0EFC03CBF8ABED8BE27BD77BCC8",
      INIT_3A => X"D322D261D1A1D0E2D022CF64CEA6CDE8CD2BCC6ECBB2CAF6CA3BC980C8C6C80D",
      INIT_3B => X"DF64DE9DDDD6DD10DC4ADB85DAC0D9FBD936D872D7AFD6ECD629D567D4A5D3E3",
      INIT_3C => X"EBFAEB2FEA64E999E8CEE804E73AE670E5A6E4DDE414E34BE283E1BBE0F3E02B",
      INIT_3D => X"F8C4F7F7F729F65CF58FF4C1F3F4F327F25BF18EF0C2EFF5EF29EE5DED91ECC6",
      INIT_3E => X"00000000000000000000000000000000FF32FE64FD96FCC9FBFBFB2DFA5FF992",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y2"
    )
    port map (
      CLKA => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_CLKA,
      CLKB => '0',
      ENA => '1',
      ENB => '0',
      REGCEA => '0',
      REGCEB => '0',
      RSTA => '0',
      RSTB => '0',
      ADDRA(13) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_13_Q,
      ADDRA(12) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_12_Q,
      ADDRA(11) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_11_Q,
      ADDRA(10) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_10_Q,
      ADDRA(9) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_9_Q,
      ADDRA(8) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_8_Q,
      ADDRA(7) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_4_Q,
      ADDRA(3) => '0',
      ADDRA(2) => '0',
      ADDRA(1) => '0',
      ADDRA(0) => '0',
      ADDRB(13) => '0',
      ADDRB(12) => '0',
      ADDRB(11) => '0',
      ADDRB(10) => '0',
      ADDRB(9) => '0',
      ADDRB(8) => '0',
      ADDRB(7) => '0',
      ADDRB(6) => '0',
      ADDRB(5) => '0',
      ADDRB(4) => '0',
      ADDRB(3) => '0',
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(31) => '0',
      DIA(30) => '0',
      DIA(29) => '0',
      DIA(28) => '0',
      DIA(27) => '0',
      DIA(26) => '0',
      DIA(25) => '0',
      DIA(24) => '0',
      DIA(23) => '0',
      DIA(22) => '0',
      DIA(21) => '0',
      DIA(20) => '0',
      DIA(19) => '0',
      DIA(18) => '0',
      DIA(17) => '0',
      DIA(16) => '0',
      DIA(15) => '0',
      DIA(14) => '0',
      DIA(13) => '0',
      DIA(12) => '0',
      DIA(11) => '0',
      DIA(10) => '0',
      DIA(9) => '0',
      DIA(8) => '0',
      DIA(7) => '0',
      DIA(6) => '0',
      DIA(5) => '0',
      DIA(4) => '0',
      DIA(3) => '0',
      DIA(2) => '0',
      DIA(1) => '0',
      DIA(0) => '0',
      DIB(31) => '0',
      DIB(30) => '0',
      DIB(29) => '0',
      DIB(28) => '0',
      DIB(27) => '0',
      DIB(26) => '0',
      DIB(25) => '0',
      DIB(24) => '0',
      DIB(23) => '0',
      DIB(22) => '0',
      DIB(21) => '0',
      DIB(20) => '0',
      DIB(19) => '0',
      DIB(18) => '0',
      DIB(17) => '0',
      DIB(16) => '0',
      DIB(15) => '0',
      DIB(14) => '0',
      DIB(13) => '0',
      DIB(12) => '0',
      DIB(11) => '0',
      DIB(10) => '0',
      DIB(9) => '0',
      DIB(8) => '0',
      DIB(7) => '0',
      DIB(6) => '0',
      DIB(5) => '0',
      DIB(4) => '0',
      DIB(3) => '0',
      DIB(2) => '0',
      DIB(1) => '0',
      DIB(0) => '0',
      DIPA(3) => '0',
      DIPA(2) => '0',
      DIPA(1) => '0',
      DIPA(0) => '0',
      DIPB(3) => '0',
      DIPB(2) => '0',
      DIPB(1) => '0',
      DIPB(0) => '0',
      DOA(31) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_31_UNCONNECTED,
      DOA(30) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_30_UNCONNECTED,
      DOA(29) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_29_UNCONNECTED,
      DOA(28) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_28_UNCONNECTED,
      DOA(27) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_27_UNCONNECTED,
      DOA(26) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_26_UNCONNECTED,
      DOA(25) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_25_UNCONNECTED,
      DOA(24) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_24_UNCONNECTED,
      DOA(23) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_23_UNCONNECTED,
      DOA(22) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_22_UNCONNECTED,
      DOA(21) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_21_UNCONNECTED,
      DOA(20) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_20_UNCONNECTED,
      DOA(19) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_19_UNCONNECTED,
      DOA(18) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_18_UNCONNECTED,
      DOA(17) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_17_UNCONNECTED,
      DOA(16) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOA_16_UNCONNECTED,
      DOA(15) => func_gen_int_sine_data(15),
      DOA(14) => func_gen_int_sine_data(14),
      DOA(13) => func_gen_int_sine_data(13),
      DOA(12) => func_gen_int_sine_data(12),
      DOA(11) => func_gen_int_sine_data(11),
      DOA(10) => func_gen_int_sine_data(10),
      DOA(9) => func_gen_int_sine_data(9),
      DOA(8) => func_gen_int_sine_data(8),
      DOA(7) => func_gen_int_sine_data(7),
      DOA(6) => func_gen_int_sine_data(6),
      DOA(5) => func_gen_int_sine_data(5),
      DOA(4) => func_gen_int_sine_data(4),
      DOA(3) => func_gen_int_sine_data(3),
      DOA(2) => func_gen_int_sine_data(2),
      DOA(1) => func_gen_int_sine_data(1),
      DOA(0) => func_gen_int_sine_data(0),
      DOB(31) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_31_UNCONNECTED,
      DOB(30) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_30_UNCONNECTED,
      DOB(29) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_29_UNCONNECTED,
      DOB(28) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_28_UNCONNECTED,
      DOB(27) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_27_UNCONNECTED,
      DOB(26) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_26_UNCONNECTED,
      DOB(25) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_25_UNCONNECTED,
      DOB(24) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_24_UNCONNECTED,
      DOB(23) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_23_UNCONNECTED,
      DOB(22) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_22_UNCONNECTED,
      DOB(21) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_21_UNCONNECTED,
      DOB(20) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_20_UNCONNECTED,
      DOB(19) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_19_UNCONNECTED,
      DOB(18) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_18_UNCONNECTED,
      DOB(17) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_17_UNCONNECTED,
      DOB(16) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_16_UNCONNECTED,
      DOB(15) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_15_UNCONNECTED,
      DOB(14) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_14_UNCONNECTED,
      DOB(13) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_13_UNCONNECTED,
      DOB(12) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_12_UNCONNECTED,
      DOB(11) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_11_UNCONNECTED,
      DOB(10) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_10_UNCONNECTED,
      DOB(9) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_9_UNCONNECTED,
      DOB(8) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_8_UNCONNECTED,
      DOB(7) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_7_UNCONNECTED,
      DOB(6) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_6_UNCONNECTED,
      DOB(5) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_5_UNCONNECTED,
      DOB(4) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_4_UNCONNECTED,
      DOB(3) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_3_UNCONNECTED,
      DOB(2) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_2_UNCONNECTED,
      DOB(1) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_1_UNCONNECTED,
      DOB(0) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOB_0_UNCONNECTED,
      DOPA(3) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_3_UNCONNECTED,
      DOPA(2) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_2_UNCONNECTED,
      DOPA(1) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_1_UNCONNECTED,
      DOPA(0) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPA_0_UNCONNECTED,
      DOPB(3) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_3_UNCONNECTED,
      DOPB(2) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_2_UNCONNECTED,
      DOPB(1) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_1_UNCONNECTED,
      DOPB(0) => 
NLW_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_DOPB_0_UNCONNECTED,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEB(3) => '0',
      WEB(2) => '0',
      WEB(1) => '0',
      WEB(0) => '0'
    );
  func_gen_int_triangle_negmax_8 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_8_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_8_1775,
      SET => GND,
      RST => func_gen_rst_l_in_inv
    );
  func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_0
    );
  func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_14_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_14_0
    );
  func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_13_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_13_0
    );
  func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_12_Q,
      O => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_12_0
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"0FFFF0FF0F00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR5 => func_gen_int_triangle_temp2(30),
      ADR2 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_15_Q_277
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y13"
    )
    port map (
      CI => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_Q_1875,
      CYINIT => '0',
      CO(3) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_2_Q,
      DI(1) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_1_Q,
      DI(0) => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_0_Q,
      O(3) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_Q,
      O(2) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_14_Q,
      O(1) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_13_Q,
      O(0) => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_12_Q,
      S(3) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_15_Q_277,
      S(2) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_14_Q_289,
      S(1) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_13_Q_292,
      S(0) => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_12_Q_281
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"0FFFF0FF0F00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR5 => func_gen_int_triangle_temp2(29),
      ADR2 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_14_Q_289
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"00FFF0F0FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR4 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR2 => func_gen_int_triangle_temp2(28),
      ADR5 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_13_Q_292
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"00FFAAAAFF00AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR4 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR0 => func_gen_int_triangle_temp2(27),
      ADR5 => func_gen_int_triangle_temp1(21),
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_lut_12_Q_281
    );
  func_gen_int_uns_tcnt1_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_3_CLK,
      I => Mcount_func_gen_int_uns_tcnt14,
      O => func_gen_int_uns_tcnt1(3),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(3),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(3)
    );
  func_gen_pulse_out_15_OBUF_1_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_13_D5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_tcnt1_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_2_CLK,
      I => Mcount_func_gen_int_uns_tcnt13,
      O => func_gen_int_uns_tcnt1(2),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      CI => '0',
      CYINIT => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      CO(3) => Mcount_func_gen_int_uns_tcnt1_cy_3_Q_1882,
      CO(2) => NLW_Mcount_func_gen_int_uns_tcnt1_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_func_gen_int_uns_tcnt1_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_func_gen_int_uns_tcnt1_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_func_gen_int_uns_tcnt14,
      O(2) => Mcount_func_gen_int_uns_tcnt13,
      O(1) => Mcount_func_gen_int_uns_tcnt12,
      O(0) => Mcount_func_gen_int_uns_tcnt11,
      S(3) => Mcount_func_gen_int_uns_tcnt1_lut(3),
      S(2) => Mcount_func_gen_int_uns_tcnt1_lut(2),
      S(1) => Mcount_func_gen_int_uns_tcnt1_lut(1),
      S(0) => Mcount_func_gen_int_uns_tcnt1_lut(0)
    );
  Mcount_func_gen_int_uns_tcnt1_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(2),
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(2)
    );
  func_gen_pulse_out_15_OBUF_1_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_12_C5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_tcnt1_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_1_CLK,
      I => Mcount_func_gen_int_uns_tcnt12,
      O => func_gen_int_uns_tcnt1(1),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(1),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(1)
    );
  func_gen_pulse_out_15_OBUF_1_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_11_B5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_tcnt1_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_0_CLK,
      I => Mcount_func_gen_int_uns_tcnt11,
      O => func_gen_int_uns_tcnt1(0),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(0),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(0)
    );
  func_gen_pulse_out_15_OBUF_1_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_10_A5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_tcnt1_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_7_CLK,
      I => Mcount_func_gen_int_uns_tcnt18,
      O => func_gen_int_uns_tcnt1(7),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(7),
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(7)
    );
  func_gen_pulse_out_15_OBUF_1_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_17_D5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_tcnt1_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_6_CLK,
      I => Mcount_func_gen_int_uns_tcnt17,
      O => func_gen_int_uns_tcnt1(6),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      CI => Mcount_func_gen_int_uns_tcnt1_cy_3_Q_1882,
      CYINIT => '0',
      CO(3) => Mcount_func_gen_int_uns_tcnt1_cy_7_Q_1887,
      CO(2) => NLW_Mcount_func_gen_int_uns_tcnt1_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_func_gen_int_uns_tcnt1_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_func_gen_int_uns_tcnt1_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_func_gen_int_uns_tcnt18,
      O(2) => Mcount_func_gen_int_uns_tcnt17,
      O(1) => Mcount_func_gen_int_uns_tcnt16,
      O(0) => Mcount_func_gen_int_uns_tcnt15,
      S(3) => Mcount_func_gen_int_uns_tcnt1_lut(7),
      S(2) => Mcount_func_gen_int_uns_tcnt1_lut(6),
      S(1) => Mcount_func_gen_int_uns_tcnt1_lut(5),
      S(0) => Mcount_func_gen_int_uns_tcnt1_lut(4)
    );
  Mcount_func_gen_int_uns_tcnt1_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(6),
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(6)
    );
  func_gen_pulse_out_15_OBUF_1_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_16_C5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_tcnt1_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_5_CLK,
      I => Mcount_func_gen_int_uns_tcnt16,
      O => func_gen_int_uns_tcnt1(5),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(5),
      ADR0 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(5)
    );
  func_gen_pulse_out_15_OBUF_1_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_15_B5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_tcnt1_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_4_CLK,
      I => Mcount_func_gen_int_uns_tcnt15,
      O => func_gen_int_uns_tcnt1(4),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(4),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(4)
    );
  func_gen_pulse_out_15_OBUF_1_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_14_A5LUT_O_UNCONNECTED
    );
  func_gen_sine_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_7_OBUF_I,
      O => func_gen_sine_out(7)
    );
  func_gen_pulse_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD182"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_5_OBUF_I,
      O => func_gen_pulse_out(5)
    );
  func_gen_pulse_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_6_OBUF_I,
      O => func_gen_pulse_out(6)
    );
  func_gen_pulse_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD184"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_7_OBUF_I,
      O => func_gen_pulse_out(7)
    );
  func_gen_pulse_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_8_OBUF_I,
      O => func_gen_pulse_out(8)
    );
  func_gen_sine_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_6_OBUF_I,
      O => func_gen_sine_out(6)
    );
  func_gen_sawtooth_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_9_OBUF_I,
      O => func_gen_sawtooth_out(9)
    );
  func_gen_sawtooth_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_10_OBUF_I,
      O => func_gen_sawtooth_out(10)
    );
  func_gen_sawtooth_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_12_OBUF_I,
      O => func_gen_sawtooth_out(12)
    );
  func_gen_pulse_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_9_OBUF_I,
      O => func_gen_pulse_out(9)
    );
  func_gen_triangle_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_1_OBUF_I,
      O => func_gen_triangle_out(1)
    );
  Mcount_func_gen_int_uns_pcnt_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y7"
    )
    port map (
      CI => Mcount_func_gen_int_uns_pcnt_cy_7_Q_1892,
      CYINIT => '0',
      CO(3) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_O_2_UNCONNECTED,
      O(1) => Mcount_func_gen_int_uns_pcnt9,
      O(0) => Mcount_func_gen_int_uns_pcnt8,
      S(3) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_Mcount_func_gen_int_uns_pcnt_xor_9_S_2_UNCONNECTED,
      S(1) => Mcount_func_gen_int_uns_pcnt_lut(9),
      S(0) => Mcount_func_gen_int_uns_pcnt_lut(8)
    );
  func_gen_int_uns_pcnt_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_9_CLK,
      I => Mcount_func_gen_int_uns_pcnt9,
      O => func_gen_int_uns_pcnt(9),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(9),
      ADR5 => '1',
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      O => Mcount_func_gen_int_uns_pcnt_lut(9)
    );
  func_gen_int_uns_pcnt_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_8_CLK,
      I => Mcount_func_gen_int_uns_pcnt8,
      O => func_gen_int_uns_pcnt(8),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(8),
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(8)
    );
  func_gen_pulse_out_15_OBUF_1_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_9_A5LUT_O_UNCONNECTED
    );
  func_gen_sawtooth_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_11_OBUF_I,
      O => func_gen_sawtooth_out(11)
    );
  func_gen_sawtooth_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_13_OBUF_I,
      O => func_gen_sawtooth_out(13)
    );
  func_gen_sawtooth_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_14_OBUF_I,
      O => func_gen_sawtooth_out(14)
    );
  func_gen_sawtooth_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_15_OBUF_I,
      O => func_gen_sawtooth_out(15)
    );
  func_gen_triangle_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_0_OBUF_I,
      O => func_gen_triangle_out(0)
    );
  func_gen_sine_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_8_OBUF_I,
      O => func_gen_sine_out(8)
    );
  func_gen_sine_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_9_OBUF_I,
      O => func_gen_sine_out(9)
    );
  func_gen_sine_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_10_OBUF_I,
      O => func_gen_sine_out(10)
    );
  func_gen_triangle_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD143"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_2_OBUF_I,
      O => func_gen_triangle_out(2)
    );
  func_gen_triangle_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD144"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_3_OBUF_I,
      O => func_gen_triangle_out(3)
    );
  func_gen_triangle_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_12_OBUF_I,
      O => func_gen_triangle_out(12)
    );
  func_gen_triangle_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_8_OBUF_I,
      O => func_gen_triangle_out(8)
    );
  func_gen_sine_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_14_OBUF_I,
      O => func_gen_sine_out(14)
    );
  func_gen_clk_in_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 240 ps
    )
    port map (
      O => func_gen_clk_in_BUFGP_IBUFG_511,
      I => func_gen_clk_in
    );
  ProtoComp24_IMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP_IBUFG_511,
      O => func_gen_clk_in_BUFGP_IBUFG_0
    );
  func_gen_sine_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_12_OBUF_I,
      O => func_gen_sine_out(12)
    );
  func_gen_triangle_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_6_OBUF_I,
      O => func_gen_triangle_out(6)
    );
  func_gen_triangle_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_5_OBUF_I,
      O => func_gen_triangle_out(5)
    );
  func_gen_pulse_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_11_OBUF_I,
      O => func_gen_pulse_out(11)
    );
  func_gen_triangle_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_7_OBUF_I,
      O => func_gen_triangle_out(7)
    );
  func_gen_pulse_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => '0',
      O => func_gen_pulse_out(15)
    );
  func_gen_sine_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_11_OBUF_I,
      O => func_gen_sine_out(11)
    );
  func_gen_sine_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_15_OBUF_I,
      O => func_gen_sine_out(15)
    );
  func_gen_pulse_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_10_OBUF_I,
      O => func_gen_pulse_out(10)
    );
  func_gen_triangle_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_4_OBUF_I,
      O => func_gen_triangle_out(4)
    );
  func_gen_triangle_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_10_OBUF_I,
      O => func_gen_triangle_out(10)
    );
  func_gen_triangle_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_9_OBUF_I,
      O => func_gen_triangle_out(9)
    );
  func_gen_pulse_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => '0',
      O => func_gen_pulse_out(14)
    );
  func_gen_triangle_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_11_OBUF_I,
      O => func_gen_triangle_out(11)
    );
  func_gen_pulse_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => '0',
      O => func_gen_pulse_out(12)
    );
  func_gen_pulse_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => '0',
      O => func_gen_pulse_out(13)
    );
  func_gen_sine_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_13_OBUF_I,
      O => func_gen_sine_out(13)
    );
  func_gen_triangle_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_13_OBUF_I,
      O => func_gen_triangle_out(13)
    );
  func_gen_triangle_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_14_OBUF_I,
      O => func_gen_triangle_out(14)
    );
  Mcount_func_gen_int_uns_tcnt1_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      CI => Mcount_func_gen_int_uns_tcnt1_cy_7_Q_1887,
      CYINIT => '0',
      CO(3) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_O_2_UNCONNECTED,
      O(1) => Mcount_func_gen_int_uns_tcnt110,
      O(0) => Mcount_func_gen_int_uns_tcnt19,
      S(3) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_Mcount_func_gen_int_uns_tcnt1_xor_9_S_2_UNCONNECTED,
      S(1) => Mcount_func_gen_int_uns_tcnt1_lut(9),
      S(0) => Mcount_func_gen_int_uns_tcnt1_lut(8)
    );
  func_gen_int_uns_tcnt1_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_9_CLK,
      I => Mcount_func_gen_int_uns_tcnt110,
      O => func_gen_int_uns_tcnt1(9),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y17",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(9),
      ADR3 => '1',
      ADR5 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      O => Mcount_func_gen_int_uns_tcnt1_lut(9)
    );
  func_gen_int_uns_tcnt1_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0168_inv_0,
      CLK => NlwBufferSignal_func_gen_int_uns_tcnt1_8_CLK,
      I => Mcount_func_gen_int_uns_tcnt19,
      O => func_gen_int_uns_tcnt1(8),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_tcnt1_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y17",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_tcnt1(8),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_tcnt1_lut(8)
    );
  func_gen_pulse_out_15_OBUF_1_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_18_A5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_7_CLK,
      I => Mcount_func_gen_int_uns_pcnt7,
      O => func_gen_int_uns_pcnt(7),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(7),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(7)
    );
  func_gen_pulse_out_15_OBUF_1_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_8_D5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_6_CLK,
      I => Mcount_func_gen_int_uns_pcnt6,
      O => func_gen_int_uns_pcnt(6),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      CI => Mcount_func_gen_int_uns_pcnt_cy_3_Q_1891,
      CYINIT => '0',
      CO(3) => Mcount_func_gen_int_uns_pcnt_cy_7_Q_1892,
      CO(2) => NLW_Mcount_func_gen_int_uns_pcnt_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_func_gen_int_uns_pcnt_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_func_gen_int_uns_pcnt_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_func_gen_int_uns_pcnt7,
      O(2) => Mcount_func_gen_int_uns_pcnt6,
      O(1) => Mcount_func_gen_int_uns_pcnt5,
      O(0) => Mcount_func_gen_int_uns_pcnt4,
      S(3) => Mcount_func_gen_int_uns_pcnt_lut(7),
      S(2) => Mcount_func_gen_int_uns_pcnt_lut(6),
      S(1) => Mcount_func_gen_int_uns_pcnt_lut(5),
      S(0) => Mcount_func_gen_int_uns_pcnt_lut(4)
    );
  Mcount_func_gen_int_uns_pcnt_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(6),
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(6)
    );
  func_gen_pulse_out_15_OBUF_1_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_7_C5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_5_CLK,
      I => Mcount_func_gen_int_uns_pcnt5,
      O => func_gen_int_uns_pcnt(5),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(5),
      ADR0 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(5)
    );
  func_gen_pulse_out_15_OBUF_1_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_6_B5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_4_CLK,
      I => Mcount_func_gen_int_uns_pcnt4,
      O => func_gen_int_uns_pcnt(4),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => func_gen_int_uns_pcnt(4),
      ADR2 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(4)
    );
  func_gen_pulse_out_15_OBUF_1_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_5_A5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_3_CLK,
      I => Mcount_func_gen_int_uns_pcnt3,
      O => func_gen_int_uns_pcnt(3),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(3),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(3)
    );
  func_gen_pulse_out_15_OBUF_1_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_4_D5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_2_CLK,
      I => Mcount_func_gen_int_uns_pcnt2,
      O => func_gen_int_uns_pcnt(2),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y5"
    )
    port map (
      CI => '0',
      CYINIT => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      CO(3) => Mcount_func_gen_int_uns_pcnt_cy_3_Q_1891,
      CO(2) => NLW_Mcount_func_gen_int_uns_pcnt_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_func_gen_int_uns_pcnt_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_func_gen_int_uns_pcnt_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_func_gen_int_uns_pcnt3,
      O(2) => Mcount_func_gen_int_uns_pcnt2,
      O(1) => Mcount_func_gen_int_uns_pcnt1,
      O(0) => Mcount_func_gen_int_uns_pcnt,
      S(3) => Mcount_func_gen_int_uns_pcnt_lut(3),
      S(2) => Mcount_func_gen_int_uns_pcnt_lut(2),
      S(1) => Mcount_func_gen_int_uns_pcnt_lut(1),
      S(0) => Mcount_func_gen_int_uns_pcnt_lut(0)
    );
  Mcount_func_gen_int_uns_pcnt_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(2),
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(2)
    );
  func_gen_pulse_out_15_OBUF_1_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_3_C5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_1_CLK,
      I => Mcount_func_gen_int_uns_pcnt1,
      O => func_gen_int_uns_pcnt(1),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(1),
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(1)
    );
  func_gen_pulse_out_15_OBUF_1_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_1_2_B5LUT_O_UNCONNECTED
    );
  func_gen_int_uns_pcnt_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_uns_pcnt_0_CLK,
      I => Mcount_func_gen_int_uns_pcnt,
      O => func_gen_int_uns_pcnt(0),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mcount_func_gen_int_uns_pcnt_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => func_gen_int_uns_pcnt(0),
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Mcount_func_gen_int_uns_pcnt_lut(0)
    );
  func_gen_pulse_out_15_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_func_gen_pulse_out_15_OBUF_A5LUT_O_UNCONNECTED
    );
  func_gen_dcoffset_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD208"
    )
    port map (
      I => '0',
      O => func_gen_dcoffset_out(14)
    );
  func_gen_dcoffset_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD197"
    )
    port map (
      I => func_gen_int_triangle_negmax_10_1771,
      O => func_gen_dcoffset_out(3)
    );
  func_gen_dcoffset_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD207"
    )
    port map (
      I => '0',
      O => func_gen_dcoffset_out(13)
    );
  func_gen_rst_l_in_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 240 ps
    )
    port map (
      O => func_gen_rst_l_in_inv_non_inverted,
      I => func_gen_rst_l_in
    );
  ProtoComp25_IMUX : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 240 ps
    )
    port map (
      I => ProtoComp25_IINV_OUT,
      O => func_gen_rst_l_in_inv
    );
  ProtoComp25_IINV : X_INV
    generic map(
      LOC => "PAD193",
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_rst_l_in_inv_non_inverted,
      O => ProtoComp25_IINV_OUT
    );
  func_gen_dcoffset_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD201"
    )
    port map (
      I => func_gen_int_triangle_negmax_6_1782,
      O => func_gen_dcoffset_out(7)
    );
  func_gen_dcoffset_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => func_gen_int_triangle_negmax_5_1795,
      O => func_gen_dcoffset_out(8)
    );
  func_gen_dcoffset_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD198"
    )
    port map (
      I => func_gen_int_triangle_negmax_9_1773,
      O => func_gen_dcoffset_out(4)
    );
  func_gen_dcoffset_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD205"
    )
    port map (
      I => func_gen_int_triangle_negmax_2_1774,
      O => func_gen_dcoffset_out(11)
    );
  func_gen_dcoffset_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD206"
    )
    port map (
      I => func_gen_int_triangle_negmax_1_1776,
      O => func_gen_dcoffset_out(12)
    );
  func_gen_dcoffset_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => '0',
      O => func_gen_dcoffset_out(15)
    );
  func_gen_dcoffset_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => func_gen_int_triangle_negmax_12_1769,
      O => func_gen_dcoffset_out(1)
    );
  func_gen_triangle_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_func_gen_triangle_out_15_OBUF_I,
      O => func_gen_triangle_out(15)
    );
  func_gen_dcoffset_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD200"
    )
    port map (
      I => func_gen_int_triangle_negmax_7_1777,
      O => func_gen_dcoffset_out(6)
    );
  func_gen_sawtooth_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_0_OBUF_I,
      O => func_gen_sawtooth_out(0)
    );
  func_gen_dcoffset_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => func_gen_int_triangle_negmax_4_1809,
      O => func_gen_dcoffset_out(9)
    );
  func_gen_dcoffset_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => func_gen_int_triangle_negmax_3_1772,
      O => func_gen_dcoffset_out(10)
    );
  func_gen_dcoffset_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => func_gen_int_triangle_negmax_11_1770,
      O => func_gen_dcoffset_out(2)
    );
  func_gen_dcoffset_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD199"
    )
    port map (
      I => func_gen_int_triangle_negmax_8_1775,
      O => func_gen_dcoffset_out(5)
    );
  func_gen_sawtooth_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_1_OBUF_I,
      O => func_gen_sawtooth_out(1)
    );
  func_gen_dcoffset_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => func_gen_int_triangle_negmax_13_1768,
      O => func_gen_dcoffset_out(0)
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTP_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTA_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEA_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEP_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEB_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEM_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTB_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CLK_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTM_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTOPMODE_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEC_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEOPMODE_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTD_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CED_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTCARRYIN_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTC_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y1",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CECARRYIN_INT
    );
  Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X1Y1"
    )
    port map (
      CECARRYIN => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CECARRYIN_INT,
      RSTC => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTC_INT,
      RSTCARRYIN => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTCARRYIN_INT,
      CED => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CED_INT,
      RSTD => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTD_INT,
      CEOPMODE => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEOPMODE_INT,
      CEC => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEC_INT,
      RSTOPMODE => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTOPMODE_INT,
      RSTM => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTM_INT,
      CLK => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CLK_INT,
      RSTB => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTB_INT,
      CEM => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEM_INT,
      CEB => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEB_INT,
      CARRYIN => GND,
      CEP => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEP_INT,
      CEA => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CEA_INT,
      RSTA => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTA_INT,
      RSTP => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_RSTP_INT,
      CARRYOUTF => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CARRYOUTF,
      CARRYOUT => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_CARRYOUT,
      B(17) => func_gen_int_sine_data(15),
      B(16) => func_gen_int_sine_data(15),
      B(15) => func_gen_int_sine_data(15),
      B(14) => func_gen_int_sine_data(14),
      B(13) => func_gen_int_sine_data(13),
      B(12) => func_gen_int_sine_data(12),
      B(11) => func_gen_int_sine_data(11),
      B(10) => func_gen_int_sine_data(10),
      B(9) => func_gen_int_sine_data(9),
      B(8) => func_gen_int_sine_data(8),
      B(7) => func_gen_int_sine_data(7),
      B(6) => func_gen_int_sine_data(6),
      B(5) => func_gen_int_sine_data(5),
      B(4) => func_gen_int_sine_data(4),
      B(3) => func_gen_int_sine_data(3),
      B(2) => func_gen_int_sine_data(2),
      B(1) => func_gen_int_sine_data(1),
      B(0) => func_gen_int_sine_data(0),
      PCIN(47) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN47,
      PCIN(46) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN46,
      PCIN(45) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN45,
      PCIN(44) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN44,
      PCIN(43) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN43,
      PCIN(42) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN42,
      PCIN(41) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN41,
      PCIN(40) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN40,
      PCIN(39) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN39,
      PCIN(38) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN38,
      PCIN(37) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN37,
      PCIN(36) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN36,
      PCIN(35) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN35,
      PCIN(34) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN34,
      PCIN(33) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN33,
      PCIN(32) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN32,
      PCIN(31) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN31,
      PCIN(30) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN30,
      PCIN(29) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN29,
      PCIN(28) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN28,
      PCIN(27) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN27,
      PCIN(26) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN26,
      PCIN(25) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN25,
      PCIN(24) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN24,
      PCIN(23) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN23,
      PCIN(22) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN22,
      PCIN(21) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN21,
      PCIN(20) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN20,
      PCIN(19) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN19,
      PCIN(18) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN18,
      PCIN(17) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN17,
      PCIN(16) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN16,
      PCIN(15) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN15,
      PCIN(14) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN14,
      PCIN(13) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN13,
      PCIN(12) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN12,
      PCIN(11) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN11,
      PCIN(10) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN10,
      PCIN(9) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN9,
      PCIN(8) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN8,
      PCIN(7) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN7,
      PCIN(6) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN6,
      PCIN(5) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN5,
      PCIN(4) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN4,
      PCIN(3) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN3,
      PCIN(2) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN2,
      PCIN(1) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN1,
      PCIN(0) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => GND,
      A(15) => GND,
      A(14) => GND,
      A(13) => GND,
      A(12) => GND,
      A(11) => GND,
      A(10) => GND,
      A(9) => GND,
      A(8) => GND,
      A(7) => GND,
      A(6) => GND,
      A(5) => GND,
      A(4) => GND,
      A(3) => VCC,
      A(2) => VCC,
      A(1) => VCC,
      A(0) => VCC,
      BCIN(17) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN17,
      BCIN(16) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN16,
      BCIN(15) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN15,
      BCIN(14) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN14,
      BCIN(13) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN13,
      BCIN(12) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN12,
      BCIN(11) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN11,
      BCIN(10) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN10,
      BCIN(9) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN9,
      BCIN(8) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN8,
      BCIN(7) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN7,
      BCIN(6) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN6,
      BCIN(5) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN5,
      BCIN(4) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN4,
      BCIN(3) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN3,
      BCIN(2) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN2,
      BCIN(1) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN1,
      BCIN(0) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCIN0,
      BCOUT(17) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT17,
      BCOUT(16) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT16,
      BCOUT(15) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT15,
      BCOUT(14) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT14,
      BCOUT(13) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT13,
      BCOUT(12) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT12,
      BCOUT(11) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT11,
      BCOUT(10) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT10,
      BCOUT(9) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT9,
      BCOUT(8) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT8,
      BCOUT(7) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT7,
      BCOUT(6) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT6,
      BCOUT(5) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT5,
      BCOUT(4) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT4,
      BCOUT(3) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT3,
      BCOUT(2) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT2,
      BCOUT(1) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT1,
      BCOUT(0) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_BCOUT0,
      P(47) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P47,
      P(46) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P46,
      P(45) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P45,
      P(44) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P44,
      P(43) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P43,
      P(42) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P42,
      P(41) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P41,
      P(40) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P40,
      P(39) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P39,
      P(38) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P38,
      P(37) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P37,
      P(36) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P36,
      P(35) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P35,
      P(34) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P34,
      P(33) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P33,
      P(32) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P32,
      P(31) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P31,
      P(30) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P30,
      P(29) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P29,
      P(28) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P28,
      P(27) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P27,
      P(26) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P26,
      P(25) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P25,
      P(24) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P24,
      P(23) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P23,
      P(22) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P22,
      P(21) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P21,
      P(20) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P20,
      P(19) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P19,
      P(18) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P18,
      P(17) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P17,
      P(16) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P16,
      P(15) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P15,
      P(14) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P14,
      P(13) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P13,
      P(12) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P12,
      P(11) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P11,
      P(10) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P10,
      P(9) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P9,
      P(8) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P8,
      P(7) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P7,
      P(6) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P6,
      P(5) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P5,
      P(4) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P4,
      P(3) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P3,
      P(2) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P2,
      P(1) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P1,
      P(0) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_P0,
      PCOUT(47) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT47,
      PCOUT(46) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT46,
      PCOUT(45) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT45,
      PCOUT(44) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT44,
      PCOUT(43) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT43,
      PCOUT(42) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT42,
      PCOUT(41) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT41,
      PCOUT(40) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT40,
      PCOUT(39) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT39,
      PCOUT(38) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT38,
      PCOUT(37) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT37,
      PCOUT(36) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT36,
      PCOUT(35) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT35,
      PCOUT(34) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT34,
      PCOUT(33) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT33,
      PCOUT(32) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT32,
      PCOUT(31) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT31,
      PCOUT(30) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT30,
      PCOUT(29) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT29,
      PCOUT(28) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT28,
      PCOUT(27) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT27,
      PCOUT(26) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT26,
      PCOUT(25) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT25,
      PCOUT(24) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT24,
      PCOUT(23) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT23,
      PCOUT(22) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT22,
      PCOUT(21) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT21,
      PCOUT(20) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT20,
      PCOUT(19) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT19,
      PCOUT(18) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT18,
      PCOUT(17) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT17,
      PCOUT(16) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT16,
      PCOUT(15) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT15,
      PCOUT(14) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT14,
      PCOUT(13) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT13,
      PCOUT(12) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT12,
      PCOUT(11) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT11,
      PCOUT(10) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT10,
      PCOUT(9) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT9,
      PCOUT(8) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT8,
      PCOUT(7) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT7,
      PCOUT(6) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT6,
      PCOUT(5) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT5,
      PCOUT(4) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT4,
      PCOUT(3) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT3,
      PCOUT(2) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT2,
      PCOUT(1) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT1,
      PCOUT(0) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_PCOUT0,
      M(35) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M35,
      M(34) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M34,
      M(33) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M33,
      M(32) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M32,
      M(31) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M31,
      M(30) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M30,
      M(29) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M29,
      M(28) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M28,
      M(27) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M27,
      M(26) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M26,
      M(25) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M25,
      M(24) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M24,
      M(23) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M23,
      M(22) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M22,
      M(21) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M21,
      M(20) => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_20_Q,
      M(19) => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_19_Q,
      M(18) => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_18_Q,
      M(17) => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_17_Q,
      M(16) => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_16_Q,
      M(15) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M15,
      M(14) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M14,
      M(13) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M13,
      M(12) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M12,
      M(11) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M11,
      M(10) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M10,
      M(9) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M9,
      M(8) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M8,
      M(7) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M7,
      M(6) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M6,
      M(5) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M5,
      M(4) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M4,
      M(3) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M3,
      M(2) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M2,
      M(1) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M1,
      M(0) => Mmult_func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_M0
    );
  func_gen_sawtooth_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_2_OBUF_I,
      O => func_gen_sawtooth_out(2)
    );
  func_gen_sine_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_0_OBUF_I,
      O => func_gen_sine_out(0)
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTP_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTA_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEA_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEP_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEB_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEM_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTB_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CLK_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTM_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEC_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTD_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CED_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTCARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTC_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y5",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CECARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "CASCADE",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y5"
    )
    port map (
      CECARRYIN => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CECARRYIN_INT,
      RSTC => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTC_INT,
      RSTCARRYIN => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTCARRYIN_INT,
      CED => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CED_INT,
      RSTD => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTD_INT,
      CEOPMODE => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEOPMODE_INT,
      CEC => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEC_INT,
      RSTOPMODE => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTOPMODE_INT,
      RSTM => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTM_INT,
      CLK => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CLK_INT,
      RSTB => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTB_INT,
      CEM => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEM_INT,
      CEB => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEB_INT,
      CARRYIN => GND,
      CEP => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEP_INT,
      CEA => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CEA_INT,
      RSTA => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTA_INT,
      RSTP => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_RSTP_INT,
      CARRYOUTF => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CARRYOUTF,
      CARRYOUT => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_CARRYOUT,
      B(17) => GND,
      B(16) => GND,
      B(15) => GND,
      B(14) => GND,
      B(13) => GND,
      B(12) => GND,
      B(11) => GND,
      B(10) => GND,
      B(9) => GND,
      B(8) => GND,
      B(7) => GND,
      B(6) => GND,
      B(5) => GND,
      B(4) => GND,
      B(3) => GND,
      B(2) => GND,
      B(1) => GND,
      B(0) => GND,
      PCIN(47) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN47,
      PCIN(46) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN46,
      PCIN(45) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN45,
      PCIN(44) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN44,
      PCIN(43) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN43,
      PCIN(42) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN42,
      PCIN(41) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN41,
      PCIN(40) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN40,
      PCIN(39) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN39,
      PCIN(38) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN38,
      PCIN(37) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN37,
      PCIN(36) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN36,
      PCIN(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN35,
      PCIN(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN34,
      PCIN(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN33,
      PCIN(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN32,
      PCIN(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN31,
      PCIN(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN30,
      PCIN(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN29,
      PCIN(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN28,
      PCIN(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN27,
      PCIN(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN26,
      PCIN(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN25,
      PCIN(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN24,
      PCIN(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN23,
      PCIN(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN22,
      PCIN(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN21,
      PCIN(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN20,
      PCIN(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN19,
      PCIN(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN18,
      PCIN(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN17,
      PCIN(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN16,
      PCIN(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN15,
      PCIN(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN14,
      PCIN(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN13,
      PCIN(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN12,
      PCIN(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN11,
      PCIN(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN10,
      PCIN(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN9,
      PCIN(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN8,
      PCIN(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN7,
      PCIN(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN6,
      PCIN(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN5,
      PCIN(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN4,
      PCIN(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN3,
      PCIN(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN2,
      PCIN(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN1,
      PCIN(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCIN0,
      C(47) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(46) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(45) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(44) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(43) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(42) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(41) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(40) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(39) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(38) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(37) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(36) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P46_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P45_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P44_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P43_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P42_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P41_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P40_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P39_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P38_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P37_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P36_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P35_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P34_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P33_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P32_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P31_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P30_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P29_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P28_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P27_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P26_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P25_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P24_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P23_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P22_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P21_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P20_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P19_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P18_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      C(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P17_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => func_gen_int_tneg_slope(0),
      A(16) => func_gen_int_tneg_slope(0),
      A(15) => func_gen_int_tneg_slope(0),
      A(14) => func_gen_int_tneg_slope(0),
      A(13) => func_gen_int_tneg_slope(0),
      A(12) => func_gen_int_tneg_slope(0),
      A(11) => func_gen_int_tneg_slope(0),
      A(10) => func_gen_int_tneg_slope(0),
      A(9) => func_gen_int_tneg_slope(0),
      A(8) => func_gen_int_tneg_slope(0),
      A(7) => func_gen_int_tneg_slope(0),
      A(6) => func_gen_int_tneg_slope(0),
      A(5) => func_gen_int_tneg_slope(0),
      A(4) => func_gen_int_tneg_slope(0),
      A(3) => func_gen_int_tneg_slope(0),
      A(2) => func_gen_int_tneg_slope(0),
      A(1) => func_gen_int_tneg_slope(0),
      A(0) => func_gen_int_tneg_slope(0),
      BCIN(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_17,
      BCIN(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_16,
      BCIN(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_15,
      BCIN(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_14,
      BCIN(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_13,
      BCIN(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_12,
      BCIN(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_11,
      BCIN(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_10,
      BCIN(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_9,
      BCIN(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_8,
      BCIN(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_7,
      BCIN(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_6,
      BCIN(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_5,
      BCIN(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_4,
      BCIN(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_3,
      BCIN(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_2,
      BCIN(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_1,
      BCIN(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_0,
      BCOUT(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT17,
      BCOUT(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT16,
      BCOUT(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT15,
      BCOUT(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT14,
      BCOUT(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT13,
      BCOUT(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT12,
      BCOUT(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT11,
      BCOUT(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT10,
      BCOUT(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT9,
      BCOUT(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT8,
      BCOUT(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT7,
      BCOUT(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT6,
      BCOUT(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT5,
      BCOUT(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT4,
      BCOUT(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT3,
      BCOUT(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT2,
      BCOUT(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT1,
      BCOUT(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_BCOUT0,
      P(47) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P47,
      P(46) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P46,
      P(45) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P45,
      P(44) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P44,
      P(43) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P43,
      P(42) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P42,
      P(41) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P41,
      P(40) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P40,
      P(39) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P39,
      P(38) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P38,
      P(37) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P37,
      P(36) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P36,
      P(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P35,
      P(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P34,
      P(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P33,
      P(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P32,
      P(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P31,
      P(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P30,
      P(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P29,
      P(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P28,
      P(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P27,
      P(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P26,
      P(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P25,
      P(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P24,
      P(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P23,
      P(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P22,
      P(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P21,
      P(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P20,
      P(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P19,
      P(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P18,
      P(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P17,
      P(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P16,
      P(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P15,
      P(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_P14,
      P(13) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_30_Q,
      P(12) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_29_Q,
      P(11) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_28_Q,
      P(10) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_27_Q,
      P(9) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_26_Q,
      P(8) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_25_Q,
      P(7) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_24_Q,
      P(6) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_23_Q,
      P(5) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_22_Q,
      P(4) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_21_Q,
      P(3) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_20_Q,
      P(2) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_19_Q,
      P(1) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_18_Q,
      P(0) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_17_Q,
      PCOUT(47) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT47,
      PCOUT(46) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT46,
      PCOUT(45) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT45,
      PCOUT(44) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT44,
      PCOUT(43) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT43,
      PCOUT(42) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT42,
      PCOUT(41) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT41,
      PCOUT(40) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT40,
      PCOUT(39) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT39,
      PCOUT(38) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT38,
      PCOUT(37) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT37,
      PCOUT(36) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT36,
      PCOUT(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT35,
      PCOUT(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT34,
      PCOUT(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT33,
      PCOUT(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT32,
      PCOUT(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT31,
      PCOUT(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT30,
      PCOUT(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT29,
      PCOUT(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT28,
      PCOUT(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT27,
      PCOUT(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT26,
      PCOUT(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT25,
      PCOUT(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT24,
      PCOUT(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT23,
      PCOUT(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT22,
      PCOUT(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT21,
      PCOUT(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT20,
      PCOUT(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT19,
      PCOUT(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT18,
      PCOUT(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT17,
      PCOUT(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT16,
      PCOUT(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT15,
      PCOUT(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT14,
      PCOUT(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT13,
      PCOUT(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT12,
      PCOUT(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT11,
      PCOUT(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT10,
      PCOUT(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT9,
      PCOUT(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT8,
      PCOUT(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT7,
      PCOUT(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT6,
      PCOUT(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT5,
      PCOUT(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT4,
      PCOUT(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT3,
      PCOUT(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT2,
      PCOUT(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT1,
      PCOUT(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_PCOUT0,
      M(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M35,
      M(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M34,
      M(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M33,
      M(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M32,
      M(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M31,
      M(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M30,
      M(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M29,
      M(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M28,
      M(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M27,
      M(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M26,
      M(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M25,
      M(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M24,
      M(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M23,
      M(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M22,
      M(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M21,
      M(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M20,
      M(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M19,
      M(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M18,
      M(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M17,
      M(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M16,
      M(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M15,
      M(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M14,
      M(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M13,
      M(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M12,
      M(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M11,
      M(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M10,
      M(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M9,
      M(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M8,
      M(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M7,
      M(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M6,
      M(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M5,
      M(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M4,
      M(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M3,
      M(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M2,
      M(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M1,
      M(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_M0
    );
  func_gen_pulse_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_3_OBUF_I,
      O => func_gen_pulse_out(3)
    );
  func_gen_sawtooth_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_6_OBUF_I,
      O => func_gen_sawtooth_out(6)
    );
  func_gen_pulse_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_0_OBUF_I,
      O => func_gen_pulse_out(0)
    );
  func_gen_sine_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_1_OBUF_I,
      O => func_gen_sine_out(1)
    );
  func_gen_pulse_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_4_OBUF_I,
      O => func_gen_pulse_out(4)
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTP_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTA_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEA_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEP_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEB_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEM_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTB_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CLK_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTM_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEC_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTD_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CED_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTCARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTC_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y2",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CECARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y2"
    )
    port map (
      CECARRYIN => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CECARRYIN_INT,
      RSTC => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTC_INT,
      RSTCARRYIN => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTCARRYIN_INT,
      CED => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CED_INT,
      RSTD => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTD_INT,
      CEOPMODE => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEOPMODE_INT,
      CEC => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEC_INT,
      RSTOPMODE => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTOPMODE_INT,
      RSTM => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTM_INT,
      CLK => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CLK_INT,
      RSTB => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTB_INT,
      CEM => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEM_INT,
      CEB => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEB_INT,
      CARRYIN => GND,
      CEP => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEP_INT,
      CEA => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CEA_INT,
      RSTA => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTA_INT,
      RSTP => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_RSTP_INT,
      CARRYOUTF => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CARRYOUTF,
      CARRYOUT => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_CARRYOUT,
      B(17) => GND,
      B(16) => GND,
      B(15) => GND,
      B(14) => GND,
      B(13) => GND,
      B(12) => GND,
      B(11) => GND,
      B(10) => GND,
      B(9) => func_gen_int_triangle_negmax_1748,
      B(8) => func_gen_int_triangle_negmax_1748,
      B(7) => func_gen_int_triangle_negmax_1748,
      B(6) => GND,
      B(5) => GND,
      B(4) => func_gen_int_triangle_negmax_1748,
      B(3) => GND,
      B(2) => func_gen_int_triangle_negmax_1748,
      B(1) => GND,
      B(0) => func_gen_int_triangle_negmax_1748,
      PCIN(47) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN47,
      PCIN(46) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN46,
      PCIN(45) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN45,
      PCIN(44) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN44,
      PCIN(43) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN43,
      PCIN(42) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN42,
      PCIN(41) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN41,
      PCIN(40) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN40,
      PCIN(39) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN39,
      PCIN(38) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN38,
      PCIN(37) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN37,
      PCIN(36) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN36,
      PCIN(35) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN35,
      PCIN(34) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN34,
      PCIN(33) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN33,
      PCIN(32) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN32,
      PCIN(31) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN31,
      PCIN(30) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN30,
      PCIN(29) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN29,
      PCIN(28) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN28,
      PCIN(27) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN27,
      PCIN(26) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN26,
      PCIN(25) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN25,
      PCIN(24) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN24,
      PCIN(23) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN23,
      PCIN(22) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN22,
      PCIN(21) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN21,
      PCIN(20) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN20,
      PCIN(19) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN19,
      PCIN(18) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN18,
      PCIN(17) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN17,
      PCIN(16) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN16,
      PCIN(15) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN15,
      PCIN(14) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN14,
      PCIN(13) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN13,
      PCIN(12) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN12,
      PCIN(11) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN11,
      PCIN(10) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN10,
      PCIN(9) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN9,
      PCIN(8) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN8,
      PCIN(7) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN7,
      PCIN(6) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN6,
      PCIN(5) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN5,
      PCIN(4) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN4,
      PCIN(3) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN3,
      PCIN(2) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN2,
      PCIN(1) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN1,
      PCIN(0) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => GND,
      A(15) => GND,
      A(14) => GND,
      A(13) => GND,
      A(12) => GND,
      A(11) => GND,
      A(10) => GND,
      A(9) => func_gen_int_uns_pcnt(9),
      A(8) => func_gen_int_uns_pcnt(8),
      A(7) => func_gen_int_uns_pcnt(7),
      A(6) => func_gen_int_uns_pcnt(6),
      A(5) => func_gen_int_uns_pcnt(5),
      A(4) => func_gen_int_uns_pcnt(4),
      A(3) => func_gen_int_uns_pcnt(3),
      A(2) => func_gen_int_uns_pcnt(2),
      A(1) => func_gen_int_uns_pcnt(1),
      A(0) => func_gen_int_uns_pcnt(0),
      BCIN(17) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN17,
      BCIN(16) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN16,
      BCIN(15) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN15,
      BCIN(14) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN14,
      BCIN(13) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN13,
      BCIN(12) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN12,
      BCIN(11) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN11,
      BCIN(10) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN10,
      BCIN(9) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN9,
      BCIN(8) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN8,
      BCIN(7) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN7,
      BCIN(6) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN6,
      BCIN(5) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN5,
      BCIN(4) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN4,
      BCIN(3) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN3,
      BCIN(2) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN2,
      BCIN(1) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN1,
      BCIN(0) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCIN0,
      BCOUT(17) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT17,
      BCOUT(16) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT16,
      BCOUT(15) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT15,
      BCOUT(14) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT14,
      BCOUT(13) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT13,
      BCOUT(12) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT12,
      BCOUT(11) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT11,
      BCOUT(10) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT10,
      BCOUT(9) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT9,
      BCOUT(8) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT8,
      BCOUT(7) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT7,
      BCOUT(6) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT6,
      BCOUT(5) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT5,
      BCOUT(4) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT4,
      BCOUT(3) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT3,
      BCOUT(2) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT2,
      BCOUT(1) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT1,
      BCOUT(0) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_BCOUT0,
      P(47) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P47,
      P(46) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P46,
      P(45) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P45,
      P(44) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P44,
      P(43) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P43,
      P(42) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P42,
      P(41) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P41,
      P(40) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P40,
      P(39) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P39,
      P(38) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P38,
      P(37) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P37,
      P(36) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P36,
      P(35) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P35,
      P(34) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P34,
      P(33) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P33,
      P(32) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P32,
      P(31) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P31,
      P(30) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P30,
      P(29) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P29,
      P(28) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P28,
      P(27) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P27,
      P(26) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P26,
      P(25) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P25,
      P(24) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P24,
      P(23) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P23,
      P(22) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P22,
      P(21) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P21,
      P(20) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P20,
      P(19) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P19,
      P(18) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P18,
      P(17) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P17,
      P(16) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P16,
      P(15) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P15,
      P(14) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P14,
      P(13) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P13,
      P(12) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P12,
      P(11) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P11,
      P(10) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P10,
      P(9) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P9,
      P(8) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P8,
      P(7) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P7,
      P(6) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P6,
      P(5) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P5,
      P(4) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P4,
      P(3) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P3,
      P(2) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P2,
      P(1) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P1,
      P(0) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_P0,
      PCOUT(47) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT47,
      PCOUT(46) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT46,
      PCOUT(45) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT45,
      PCOUT(44) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT44,
      PCOUT(43) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT43,
      PCOUT(42) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT42,
      PCOUT(41) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT41,
      PCOUT(40) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT40,
      PCOUT(39) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT39,
      PCOUT(38) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT38,
      PCOUT(37) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT37,
      PCOUT(36) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT36,
      PCOUT(35) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT35,
      PCOUT(34) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT34,
      PCOUT(33) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT33,
      PCOUT(32) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT32,
      PCOUT(31) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT31,
      PCOUT(30) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT30,
      PCOUT(29) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT29,
      PCOUT(28) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT28,
      PCOUT(27) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT27,
      PCOUT(26) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT26,
      PCOUT(25) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT25,
      PCOUT(24) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT24,
      PCOUT(23) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT23,
      PCOUT(22) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT22,
      PCOUT(21) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT21,
      PCOUT(20) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT20,
      PCOUT(19) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT19,
      PCOUT(18) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT18,
      PCOUT(17) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT17,
      PCOUT(16) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT16,
      PCOUT(15) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT15,
      PCOUT(14) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT14,
      PCOUT(13) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT13,
      PCOUT(12) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT12,
      PCOUT(11) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT11,
      PCOUT(10) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT10,
      PCOUT(9) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT9,
      PCOUT(8) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT8,
      PCOUT(7) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT7,
      PCOUT(6) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT6,
      PCOUT(5) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT5,
      PCOUT(4) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT4,
      PCOUT(3) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT3,
      PCOUT(2) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT2,
      PCOUT(1) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT1,
      PCOUT(0) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_PCOUT0,
      M(35) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M35,
      M(34) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M34,
      M(33) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M33,
      M(32) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M32,
      M(31) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M31,
      M(30) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M30,
      M(29) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M29,
      M(28) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M28,
      M(27) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M27,
      M(26) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M26,
      M(25) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M25,
      M(24) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M24,
      M(23) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M23,
      M(22) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M22,
      M(21) => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_21_Q,
      M(20) => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_20_Q,
      M(19) => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_19_Q,
      M(18) => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_18_Q,
      M(17) => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_17_Q,
      M(16) => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_16_Q,
      M(15) => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_15_Q,
      M(14) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M14,
      M(13) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M13,
      M(12) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M12,
      M(11) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M11,
      M(10) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M10,
      M(9) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M9,
      M(8) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M8,
      M(7) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M7,
      M(6) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M6,
      M(5) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M5,
      M(4) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M4,
      M(3) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M3,
      M(2) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M2,
      M(1) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M1,
      M(0) => Mmult_GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_M0
    );
  func_gen_sawtooth_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_4_OBUF_I,
      O => func_gen_sawtooth_out(4)
    );
  func_gen_pulse_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_1_OBUF_I,
      O => func_gen_pulse_out(1)
    );
  func_gen_pulse_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => NlwBufferSignal_func_gen_pulse_out_2_OBUF_I,
      O => func_gen_pulse_out(2)
    );
  func_gen_sawtooth_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_3_OBUF_I,
      O => func_gen_sawtooth_out(3)
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTP_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTA_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEA_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEP_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEB_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEM_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTB_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CLK_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTM_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEC_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTD_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CED_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTCARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTC_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y4",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CECARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y4"
    )
    port map (
      CECARRYIN => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CECARRYIN_INT,
      RSTC => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTC_INT,
      RSTCARRYIN => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTCARRYIN_INT,
      CED => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CED_INT,
      RSTD => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTD_INT,
      CEOPMODE => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEOPMODE_INT,
      CEC => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEC_INT,
      RSTOPMODE => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTOPMODE_INT,
      RSTM => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTM_INT,
      CLK => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CLK_INT,
      RSTB => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTB_INT,
      CEM => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEM_INT,
      CEB => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEB_INT,
      CARRYIN => GND,
      CEP => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEP_INT,
      CEA => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CEA_INT,
      RSTA => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTA_INT,
      RSTP => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_RSTP_INT,
      CARRYOUTF => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CARRYOUTF,
      CARRYOUT => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_CARRYOUT,
      B(17) => GND,
      B(16) => GND,
      B(15) => GND,
      B(14) => GND,
      B(13) => GND,
      B(12) => GND,
      B(11) => GND,
      B(10) => GND,
      B(9) => func_gen_int_uns_tcnt1(9),
      B(8) => func_gen_int_uns_tcnt1(8),
      B(7) => func_gen_int_uns_tcnt1(7),
      B(6) => func_gen_int_uns_tcnt1(6),
      B(5) => func_gen_int_uns_tcnt1(5),
      B(4) => func_gen_int_uns_tcnt1(4),
      B(3) => func_gen_int_uns_tcnt1(3),
      B(2) => func_gen_int_uns_tcnt1(2),
      B(1) => func_gen_int_uns_tcnt1(1),
      B(0) => func_gen_int_uns_tcnt1(0),
      PCIN(47) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN47,
      PCIN(46) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN46,
      PCIN(45) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN45,
      PCIN(44) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN44,
      PCIN(43) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN43,
      PCIN(42) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN42,
      PCIN(41) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN41,
      PCIN(40) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN40,
      PCIN(39) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN39,
      PCIN(38) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN38,
      PCIN(37) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN37,
      PCIN(36) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN36,
      PCIN(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN35,
      PCIN(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN34,
      PCIN(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN33,
      PCIN(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN32,
      PCIN(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN31,
      PCIN(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN30,
      PCIN(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN29,
      PCIN(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN28,
      PCIN(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN27,
      PCIN(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN26,
      PCIN(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN25,
      PCIN(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN24,
      PCIN(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN23,
      PCIN(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN22,
      PCIN(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN21,
      PCIN(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN20,
      PCIN(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN19,
      PCIN(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN18,
      PCIN(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN17,
      PCIN(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN16,
      PCIN(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN15,
      PCIN(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN14,
      PCIN(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN13,
      PCIN(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN12,
      PCIN(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN11,
      PCIN(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN10,
      PCIN(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN9,
      PCIN(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN8,
      PCIN(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN7,
      PCIN(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN6,
      PCIN(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN5,
      PCIN(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN4,
      PCIN(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN3,
      PCIN(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN2,
      PCIN(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN1,
      PCIN(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => func_gen_int_tneg_slope_0_1_1750,
      A(15) => func_gen_int_tneg_slope_0_1_1750,
      A(14) => func_gen_int_tneg_slope_0_1_1750,
      A(13) => func_gen_int_tneg_slope_0_1_1750,
      A(12) => func_gen_int_tneg_slope_0_1_1750,
      A(11) => func_gen_int_tneg_slope_0_1_1750,
      A(10) => func_gen_int_tneg_slope_0_1_1750,
      A(9) => GND,
      A(8) => GND,
      A(7) => GND,
      A(6) => func_gen_int_tneg_slope_0_1_1750,
      A(5) => func_gen_int_tneg_slope_0_1_1750,
      A(4) => GND,
      A(3) => func_gen_int_tneg_slope_0_1_1750,
      A(2) => GND,
      A(1) => func_gen_int_tneg_slope_0_1_1750,
      A(0) => func_gen_int_tneg_slope(0),
      BCIN(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN17,
      BCIN(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN16,
      BCIN(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN15,
      BCIN(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN14,
      BCIN(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN13,
      BCIN(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN12,
      BCIN(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN11,
      BCIN(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN10,
      BCIN(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN9,
      BCIN(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN8,
      BCIN(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN7,
      BCIN(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN6,
      BCIN(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN5,
      BCIN(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN4,
      BCIN(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN3,
      BCIN(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN2,
      BCIN(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN1,
      BCIN(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCIN0,
      BCOUT(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_17,
      BCOUT(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_16,
      BCOUT(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_15,
      BCOUT(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_14,
      BCOUT(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_13,
      BCOUT(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_12,
      BCOUT(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_11,
      BCOUT(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_10,
      BCOUT(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_9,
      BCOUT(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_8,
      BCOUT(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_7,
      BCOUT(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_6,
      BCOUT(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_5,
      BCOUT(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_4,
      BCOUT(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_3,
      BCOUT(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_2,
      BCOUT(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_1,
      BCOUT(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_BCOUT_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1_B_0,
      P(47) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P47_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(46) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P46_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(45) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P45_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(44) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P44_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(43) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P43_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(42) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P42_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(41) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P41_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(40) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P40_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(39) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P39_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(38) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P38_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(37) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P37_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(36) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P36_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P35_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P34_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P33_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P32_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P31_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P30_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P29_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P28_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P27_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P26_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P25_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P24_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P23_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P22_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P21_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P20_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P19_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P18_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P17_to_Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT1,
      P(16) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_16_Q,
      P(15) => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_15_Q,
      P(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P14,
      P(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P13,
      P(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P12,
      P(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P11,
      P(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P10,
      P(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P9,
      P(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P8,
      P(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P7,
      P(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P6,
      P(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P5,
      P(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P4,
      P(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P3,
      P(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P2,
      P(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P1,
      P(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_P0,
      PCOUT(47) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT47,
      PCOUT(46) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT46,
      PCOUT(45) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT45,
      PCOUT(44) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT44,
      PCOUT(43) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT43,
      PCOUT(42) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT42,
      PCOUT(41) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT41,
      PCOUT(40) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT40,
      PCOUT(39) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT39,
      PCOUT(38) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT38,
      PCOUT(37) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT37,
      PCOUT(36) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT36,
      PCOUT(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT35,
      PCOUT(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT34,
      PCOUT(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT33,
      PCOUT(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT32,
      PCOUT(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT31,
      PCOUT(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT30,
      PCOUT(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT29,
      PCOUT(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT28,
      PCOUT(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT27,
      PCOUT(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT26,
      PCOUT(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT25,
      PCOUT(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT24,
      PCOUT(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT23,
      PCOUT(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT22,
      PCOUT(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT21,
      PCOUT(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT20,
      PCOUT(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT19,
      PCOUT(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT18,
      PCOUT(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT17,
      PCOUT(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT16,
      PCOUT(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT15,
      PCOUT(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT14,
      PCOUT(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT13,
      PCOUT(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT12,
      PCOUT(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT11,
      PCOUT(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT10,
      PCOUT(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT9,
      PCOUT(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT8,
      PCOUT(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT7,
      PCOUT(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT6,
      PCOUT(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT5,
      PCOUT(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT4,
      PCOUT(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT3,
      PCOUT(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT2,
      PCOUT(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT1,
      PCOUT(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_PCOUT0,
      M(35) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M35,
      M(34) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M34,
      M(33) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M33,
      M(32) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M32,
      M(31) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M31,
      M(30) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M30,
      M(29) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M29,
      M(28) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M28,
      M(27) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M27,
      M(26) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M26,
      M(25) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M25,
      M(24) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M24,
      M(23) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M23,
      M(22) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M22,
      M(21) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M21,
      M(20) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M20,
      M(19) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M19,
      M(18) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M18,
      M(17) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M17,
      M(16) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M16,
      M(15) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M15,
      M(14) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M14,
      M(13) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M13,
      M(12) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M12,
      M(11) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M11,
      M(10) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M10,
      M(9) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M9,
      M(8) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M8,
      M(7) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M7,
      M(6) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M6,
      M(5) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M5,
      M(4) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M4,
      M(3) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M3,
      M(2) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M2,
      M(1) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M1,
      M(0) => Mmult_GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_M0
    );
  func_gen_sawtooth_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_5_OBUF_I,
      O => func_gen_sawtooth_out(5)
    );
  func_gen_clk_in_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_func_gen_clk_in_BUFGP_BUFG_IN,
      O => func_gen_clk_in_BUFGP
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTP_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTA_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEA_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEP_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEB_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEM_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTB_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CLK_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTM_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEC_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEOPMODE_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTD_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CED_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTCARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => GND,
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTC_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y0",
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CECARRYIN_INT
    );
  Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y0"
    )
    port map (
      CECARRYIN => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CECARRYIN_INT,
      RSTC => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTC_INT,
      RSTCARRYIN => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTCARRYIN_INT,
      CED => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CED_INT,
      RSTD => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTD_INT,
      CEOPMODE => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEOPMODE_INT,
      CEC => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEC_INT,
      RSTOPMODE => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTOPMODE_INT,
      RSTM => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTM_INT,
      CLK => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CLK_INT,
      RSTB => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTB_INT,
      CEM => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEM_INT,
      CEB => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEB_INT,
      CARRYIN => GND,
      CEP => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEP_INT,
      CEA => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CEA_INT,
      RSTA => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTA_INT,
      RSTP => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_RSTP_INT,
      CARRYOUTF => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CARRYOUTF,
      CARRYOUT => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_CARRYOUT,
      B(17) => GND,
      B(16) => GND,
      B(15) => GND,
      B(14) => GND,
      B(13) => GND,
      B(12) => GND,
      B(11) => GND,
      B(10) => func_gen_int_triangle_negmax_1748,
      B(9) => func_gen_int_triangle_negmax_1748,
      B(8) => func_gen_int_triangle_negmax_1748,
      B(7) => func_gen_int_triangle_negmax_1748,
      B(6) => GND,
      B(5) => func_gen_int_triangle_negmax_1748,
      B(4) => GND,
      B(3) => func_gen_int_triangle_negmax_1748,
      B(2) => func_gen_int_triangle_negmax_1748,
      B(1) => GND,
      B(0) => func_gen_int_triangle_negmax_1748,
      PCIN(47) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN47,
      PCIN(46) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN46,
      PCIN(45) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN45,
      PCIN(44) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN44,
      PCIN(43) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN43,
      PCIN(42) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN42,
      PCIN(41) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN41,
      PCIN(40) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN40,
      PCIN(39) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN39,
      PCIN(38) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN38,
      PCIN(37) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN37,
      PCIN(36) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN36,
      PCIN(35) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN35,
      PCIN(34) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN34,
      PCIN(33) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN33,
      PCIN(32) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN32,
      PCIN(31) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN31,
      PCIN(30) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN30,
      PCIN(29) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN29,
      PCIN(28) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN28,
      PCIN(27) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN27,
      PCIN(26) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN26,
      PCIN(25) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN25,
      PCIN(24) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN24,
      PCIN(23) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN23,
      PCIN(22) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN22,
      PCIN(21) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN21,
      PCIN(20) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN20,
      PCIN(19) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN19,
      PCIN(18) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN18,
      PCIN(17) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN17,
      PCIN(16) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN16,
      PCIN(15) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN15,
      PCIN(14) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN14,
      PCIN(13) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN13,
      PCIN(12) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN12,
      PCIN(11) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN11,
      PCIN(10) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN10,
      PCIN(9) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN9,
      PCIN(8) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN8,
      PCIN(7) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN7,
      PCIN(6) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN6,
      PCIN(5) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN5,
      PCIN(4) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN4,
      PCIN(3) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN3,
      PCIN(2) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN2,
      PCIN(1) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN1,
      PCIN(0) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => GND,
      A(15) => GND,
      A(14) => GND,
      A(13) => GND,
      A(12) => GND,
      A(11) => GND,
      A(10) => GND,
      A(9) => func_gen_int_uns_pcnt(9),
      A(8) => func_gen_int_uns_pcnt(8),
      A(7) => func_gen_int_uns_pcnt(7),
      A(6) => func_gen_int_uns_pcnt(6),
      A(5) => func_gen_int_uns_pcnt(5),
      A(4) => func_gen_int_uns_pcnt(4),
      A(3) => func_gen_int_uns_pcnt(3),
      A(2) => func_gen_int_uns_pcnt(2),
      A(1) => func_gen_int_uns_pcnt(1),
      A(0) => func_gen_int_uns_pcnt(0),
      BCIN(17) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN17,
      BCIN(16) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN16,
      BCIN(15) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN15,
      BCIN(14) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN14,
      BCIN(13) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN13,
      BCIN(12) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN12,
      BCIN(11) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN11,
      BCIN(10) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN10,
      BCIN(9) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN9,
      BCIN(8) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN8,
      BCIN(7) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN7,
      BCIN(6) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN6,
      BCIN(5) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN5,
      BCIN(4) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN4,
      BCIN(3) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN3,
      BCIN(2) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN2,
      BCIN(1) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN1,
      BCIN(0) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCIN0,
      BCOUT(17) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT17,
      BCOUT(16) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT16,
      BCOUT(15) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT15,
      BCOUT(14) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT14,
      BCOUT(13) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT13,
      BCOUT(12) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT12,
      BCOUT(11) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT11,
      BCOUT(10) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT10,
      BCOUT(9) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT9,
      BCOUT(8) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT8,
      BCOUT(7) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT7,
      BCOUT(6) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT6,
      BCOUT(5) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT5,
      BCOUT(4) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT4,
      BCOUT(3) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT3,
      BCOUT(2) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT2,
      BCOUT(1) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT1,
      BCOUT(0) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_BCOUT0,
      P(47) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P47,
      P(46) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P46,
      P(45) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P45,
      P(44) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P44,
      P(43) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P43,
      P(42) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P42,
      P(41) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P41,
      P(40) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P40,
      P(39) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P39,
      P(38) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P38,
      P(37) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P37,
      P(36) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P36,
      P(35) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P35,
      P(34) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P34,
      P(33) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P33,
      P(32) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P32,
      P(31) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P31,
      P(30) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P30,
      P(29) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P29,
      P(28) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P28,
      P(27) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P27,
      P(26) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P26,
      P(25) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P25,
      P(24) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P24,
      P(23) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P23,
      P(22) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P22,
      P(21) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P21,
      P(20) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P20,
      P(19) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P19,
      P(18) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P18,
      P(17) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P17,
      P(16) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P16,
      P(15) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P15,
      P(14) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P14,
      P(13) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P13,
      P(12) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P12,
      P(11) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P11,
      P(10) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P10,
      P(9) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P9,
      P(8) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P8,
      P(7) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P7,
      P(6) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P6,
      P(5) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P5,
      P(4) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P4,
      P(3) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P3,
      P(2) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P2,
      P(1) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P1,
      P(0) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_P0,
      PCOUT(47) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT47,
      PCOUT(46) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT46,
      PCOUT(45) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT45,
      PCOUT(44) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT44,
      PCOUT(43) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT43,
      PCOUT(42) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT42,
      PCOUT(41) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT41,
      PCOUT(40) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT40,
      PCOUT(39) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT39,
      PCOUT(38) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT38,
      PCOUT(37) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT37,
      PCOUT(36) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT36,
      PCOUT(35) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT35,
      PCOUT(34) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT34,
      PCOUT(33) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT33,
      PCOUT(32) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT32,
      PCOUT(31) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT31,
      PCOUT(30) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT30,
      PCOUT(29) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT29,
      PCOUT(28) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT28,
      PCOUT(27) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT27,
      PCOUT(26) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT26,
      PCOUT(25) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT25,
      PCOUT(24) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT24,
      PCOUT(23) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT23,
      PCOUT(22) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT22,
      PCOUT(21) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT21,
      PCOUT(20) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT20,
      PCOUT(19) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT19,
      PCOUT(18) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT18,
      PCOUT(17) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT17,
      PCOUT(16) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT16,
      PCOUT(15) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT15,
      PCOUT(14) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT14,
      PCOUT(13) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT13,
      PCOUT(12) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT12,
      PCOUT(11) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT11,
      PCOUT(10) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT10,
      PCOUT(9) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT9,
      PCOUT(8) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT8,
      PCOUT(7) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT7,
      PCOUT(6) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT6,
      PCOUT(5) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT5,
      PCOUT(4) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT4,
      PCOUT(3) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT3,
      PCOUT(2) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT2,
      PCOUT(1) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT1,
      PCOUT(0) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_PCOUT0,
      M(35) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M35,
      M(34) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M34,
      M(33) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M33,
      M(32) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M32,
      M(31) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M31,
      M(30) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M30,
      M(29) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M29,
      M(28) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M28,
      M(27) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M27,
      M(26) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M26,
      M(25) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M25,
      M(24) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M24,
      M(23) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M23,
      M(22) => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_22_Q,
      M(21) => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_21_Q,
      M(20) => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_20_Q,
      M(19) => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_19_Q,
      M(18) => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_18_Q,
      M(17) => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_17_Q,
      M(16) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M16,
      M(15) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M15,
      M(14) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M14,
      M(13) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M13,
      M(12) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M12,
      M(11) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M11,
      M(10) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M10,
      M(9) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M9,
      M(8) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M8,
      M(7) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M7,
      M(6) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M6,
      M(5) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M5,
      M(4) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M4,
      M(3) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M3,
      M(2) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M2,
      M(1) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M1,
      M(0) => Mmult_GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_M0
    );
  func_gen_sine_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_5_OBUF_I,
      O => func_gen_sine_out(5)
    );
  func_gen_sine_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_3_OBUF_I,
      O => func_gen_sine_out(3)
    );
  func_gen_sine_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_2_OBUF_I,
      O => func_gen_sine_out(2)
    );
  func_gen_sawtooth_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_8_OBUF_I,
      O => func_gen_sawtooth_out(8)
    );
  GND_7_o_GND_7_o_mux_14_OUT_0_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"A000000000000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => func_gen_int_uns_pcnt(4),
      ADR4 => func_gen_int_uns_pcnt(5),
      ADR0 => func_gen_int_uns_pcnt(6),
      ADR3 => func_gen_int_uns_pcnt(7),
      ADR5 => func_gen_int_uns_pcnt(8),
      O => N16
    );
  func_gen_int_pulse_data_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_pulse_data_0_CLK,
      I => GND_7_o_GND_7_o_mux_14_OUT(0),
      O => func_gen_int_pulse_data(0),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  GND_7_o_GND_7_o_mux_14_OUT_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"00CC0FCF00CC5FDF"
    )
    port map (
      ADR4 => func_gen_int_uns_pcnt(9),
      ADR0 => func_gen_int_uns_pcnt(2),
      ADR5 => func_gen_int_uns_pcnt(3),
      ADR2 => N16,
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR3 => func_gen_int_triangle_negmax_1748,
      O => GND_7_o_GND_7_o_mux_14_OUT(0)
    );
  func_gen_sawtooth_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_func_gen_sawtooth_out_7_OBUF_I,
      O => func_gen_sawtooth_out(7)
    );
  func_gen_sine_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => NlwBufferSignal_func_gen_sine_out_4_OBUF_I,
      O => func_gen_sine_out(4)
    );
  func_gen_int_tneg_slope_0_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_tneg_slope_0_1_CLK,
      I => NlwBufferSignal_func_gen_int_tneg_slope_0_1_IN,
      O => func_gen_int_tneg_slope_0_1_1750,
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_tneg_slope_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_tneg_slope_0_CLK,
      I => NlwBufferSignal_func_gen_int_tneg_slope_0_IN,
      O => func_gen_int_tneg_slope(0),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sawtooth_data_5_func_gen_int_sawtooth_data_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_temp1_22_pack_4,
      O => func_gen_int_sawtooth_temp1(22)
    );
  func_gen_int_sawtooth_data_5_func_gen_int_sawtooth_data_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_temp1(19),
      O => func_gen_int_sawtooth_temp1_19_0
    );
  func_gen_int_sawtooth_data_5_func_gen_int_sawtooth_data_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_temp1(17),
      O => func_gen_int_sawtooth_temp1_17_0
    );
  func_gen_int_sawtooth_data_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_data_5_CLK,
      I => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_5_Q,
      O => func_gen_int_sawtooth_data(5),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR0 => func_gen_int_sawtooth_temp1(22),
      ADR5 => '1',
      O => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_5_Q
    );
  n0122_26_1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_22_Q,
      ADR4 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR2 => '1',
      O => n0122_26_Q
    );
  func_gen_int_sawtooth_temp1_22 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_temp1_22_CLK,
      I => n0122_26_Q,
      O => func_gen_int_sawtooth_temp1_22_pack_4,
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => func_gen_int_uns_pcnt(9),
      ADR0 => func_gen_int_uns_pcnt(8),
      ADR1 => func_gen_int_uns_pcnt(7),
      ADR2 => func_gen_int_uns_pcnt(6),
      ADR3 => func_gen_int_uns_pcnt(5),
      ADR5 => N4,
      O => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o
    );
  func_gen_int_sawtooth_temp1_20 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_temp1_20_CLK,
      I => n0122_20_Q,
      O => func_gen_int_sawtooth_temp1(20),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_n012241 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR1 => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_20_Q,
      ADR5 => '1',
      O => n0122_20_Q
    );
  Mmux_n012231 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_19_Q,
      ADR3 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR2 => '1',
      O => n0122_19_Q
    );
  func_gen_int_sawtooth_temp1_19 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_temp1_19_CLK,
      I => n0122_19_Q,
      O => func_gen_int_sawtooth_temp1(19),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sawtooth_temp1_18 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_temp1_18_CLK,
      I => n0122_18_Q,
      O => func_gen_int_sawtooth_temp1(18),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_n012221 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"5500550055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR3 => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_18_Q,
      ADR5 => '1',
      O => n0122_18_Q
    );
  Mmux_n012211 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"50505050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_17_Q,
      ADR0 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR4 => '1',
      O => n0122_17_Q
    );
  func_gen_int_sawtooth_temp1_17 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_temp1_17_CLK,
      I => n0122_17_Q,
      O => func_gen_int_sawtooth_temp1(17),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_negmax : X_FF
    generic map(
      LOC => "SLICE_X17Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_negmax_CLK,
      I => '1',
      O => func_gen_int_triangle_negmax_1748,
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_18 : X_FF
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_18_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_18_IN,
      O => func_gen_int_triangle_temp2(18),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_17 : X_FF
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_17_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_17_IN,
      O => func_gen_int_triangle_temp2(17),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_16 : X_FF
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_16_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_16_IN,
      O => func_gen_int_triangle_temp2(16),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_15 : X_FF
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_15_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_15_IN,
      O => func_gen_int_triangle_temp2(15),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y13",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1
    );
  N4_N4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N14_pack_1,
      O => N14
    );
  PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => X"FEFAFAFAFEFAFAFA"
    )
    port map (
      ADR0 => func_gen_int_uns_pcnt(3),
      ADR1 => func_gen_int_uns_pcnt(2),
      ADR3 => func_gen_int_uns_pcnt(1),
      ADR4 => func_gen_int_uns_pcnt(0),
      ADR2 => func_gen_int_uns_pcnt(4),
      ADR5 => '1',
      O => N4
    );
  n00261_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => X"F0E0E0E0"
    )
    port map (
      ADR0 => func_gen_int_uns_pcnt(3),
      ADR1 => func_gen_int_uns_pcnt(2),
      ADR3 => func_gen_int_uns_pcnt(1),
      ADR4 => func_gen_int_uns_pcnt(0),
      ADR2 => func_gen_int_uns_pcnt(4),
      O => N14_pack_1
    );
  GND_7_o_func_gen_int_uns_tcnt_9_LessThan_23_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => X"F8F0F0F0F0F0F0F0"
    )
    port map (
      ADR1 => func_gen_int_uns_pcnt(8),
      ADR5 => func_gen_int_uns_pcnt(7),
      ADR4 => func_gen_int_uns_pcnt(6),
      ADR0 => func_gen_int_uns_pcnt(5),
      ADR3 => N14,
      ADR2 => func_gen_int_uns_pcnt(9),
      O => GND_7_o_func_gen_int_uns_tcnt_9_LessThan_23_o
    );
  func_gen_int_sawtooth_data_4_func_gen_int_sawtooth_data_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(3),
      O => func_gen_int_sawtooth_data_3_0
    );
  func_gen_int_sawtooth_data_4_func_gen_int_sawtooth_data_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_temp1_21_pack_3,
      O => func_gen_int_sawtooth_temp1(21)
    );
  func_gen_int_sawtooth_data_4_func_gen_int_sawtooth_data_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(0),
      O => func_gen_int_sawtooth_data_0_0
    );
  func_gen_int_sawtooth_data_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_data_4_CLK,
      I => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_4_Q,
      O => func_gen_int_sawtooth_data(4),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"5050505050505050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR2 => func_gen_int_sawtooth_temp1(21),
      ADR5 => '1',
      O => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_4_Q
    );
  Mmux_func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT101 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"44444444"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => func_gen_int_sawtooth_temp1(20),
      ADR0 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR4 => '1',
      O => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_3_Q
    );
  func_gen_int_sawtooth_data_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_data_3_CLK,
      I => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_3_Q,
      O => func_gen_int_sawtooth_data(3),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sawtooth_data_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_data_2_CLK,
      I => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_2_Q,
      O => func_gen_int_sawtooth_data(2),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR0 => func_gen_int_sawtooth_temp1_19_0,
      ADR5 => '1',
      O => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_2_Q
    );
  Mmux_n012251 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"0F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => GND_7_o_func_gen_int_sawpos_slope_24_MuLt_51_OUT_21_Q,
      ADR2 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR3 => '1',
      O => n0122_21_Q
    );
  func_gen_int_sawtooth_temp1_21 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_temp1_21_CLK,
      I => n0122_21_Q,
      O => func_gen_int_sawtooth_temp1_21_pack_3,
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sawtooth_data_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_data_1_CLK,
      I => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_1_Q,
      O => func_gen_int_sawtooth_data(1),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"5555000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR4 => func_gen_int_sawtooth_temp1(18),
      ADR5 => '1',
      O => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_1_Q
    );
  Mmux_func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"44444444"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => func_gen_int_sawtooth_temp1_17_0,
      ADR0 => PWR_7_o_func_gen_int_uns_sawcnt_9_LessThan_50_o,
      ADR4 => '1',
      O => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_0_Q
    );
  func_gen_int_sawtooth_data_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sawtooth_data_0_CLK,
      I => func_gen_int_sawtooth_temp1_32_GND_7_o_mux_54_OUT_0_Q,
      O => func_gen_int_sawtooth_data(0),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_22 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_22_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_22_IN,
      O => func_gen_int_triangle_temp2(22),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_21 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_21_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_21_IN,
      O => func_gen_int_triangle_temp2(21),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_20 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_20_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_20_IN,
      O => func_gen_int_triangle_temp2(20),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_19 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_19_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_19_IN,
      O => func_gen_int_triangle_temp2(19),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_26 : X_FF
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_26_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_26_IN,
      O => func_gen_int_triangle_temp2(26),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_25 : X_FF
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_25_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_25_IN,
      O => func_gen_int_triangle_temp2(25),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_24 : X_FF
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_24_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_24_IN,
      O => func_gen_int_triangle_temp2(24),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_23 : X_FF
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_23_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_23_IN,
      O => func_gen_int_triangle_temp2(23),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp1_21_func_gen_int_triangle_temp1_21_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Q_n0171_inv,
      O => Q_n0171_inv_0
    );
  func_gen_int_triangle_temp1_21_func_gen_int_triangle_temp1_21_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_temp1(19),
      O => func_gen_int_triangle_temp1_19_0
    );
  func_gen_int_triangle_temp1_21_func_gen_int_triangle_temp1_21_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_temp1(17),
      O => func_gen_int_triangle_temp1_17_0
    );
  func_gen_int_triangle_temp1_21_func_gen_int_triangle_temp1_21_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_temp1(15),
      O => func_gen_int_triangle_temp1_15_0
    );
  func_gen_int_triangle_temp1_21 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => Q_n0169_inv,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp1_21_CLK,
      I => GND_7_o_GND_7_o_mux_37_OUT_24_Q,
      O => func_gen_int_triangle_temp1(21),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  GND_7_o_GND_7_o_mux_37_OUT_24_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"8888888888888888"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR1 => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_21_Q,
      ADR5 => '1',
      O => GND_7_o_GND_7_o_mux_37_OUT_24_Q
    );
  Q_n0171_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"00AA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR0 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR4 => '1',
      O => Q_n0171_inv
    );
  func_gen_int_triangle_temp1_20 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => Q_n0169_inv,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp1_20_CLK,
      I => GND_7_o_GND_7_o_mux_37_OUT_20_Q,
      O => func_gen_int_triangle_temp1(20),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_GND_7_o_GND_7_o_mux_37_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR0 => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_20_Q,
      ADR5 => '1',
      O => GND_7_o_GND_7_o_mux_37_OUT_20_Q
    );
  Mmux_GND_7_o_GND_7_o_mux_37_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_19_Q,
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR3 => '1',
      O => GND_7_o_GND_7_o_mux_37_OUT_19_Q
    );
  func_gen_int_triangle_temp1_19 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => Q_n0169_inv,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp1_19_CLK,
      I => GND_7_o_GND_7_o_mux_37_OUT_19_Q,
      O => func_gen_int_triangle_temp1(19),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp1_18 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => Q_n0169_inv,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp1_18_CLK,
      I => GND_7_o_GND_7_o_mux_37_OUT_18_Q,
      O => func_gen_int_triangle_temp1(18),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_GND_7_o_GND_7_o_mux_37_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"8888888888888888"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR0 => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_18_Q,
      ADR5 => '1',
      O => GND_7_o_GND_7_o_mux_37_OUT_18_Q
    );
  Mmux_GND_7_o_GND_7_o_mux_37_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_17_Q,
      ADR1 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR4 => '1',
      O => GND_7_o_GND_7_o_mux_37_OUT_17_Q
    );
  func_gen_int_triangle_temp1_17 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => Q_n0169_inv,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp1_17_CLK,
      I => GND_7_o_GND_7_o_mux_37_OUT_17_Q,
      O => func_gen_int_triangle_temp1(17),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp1_16 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => Q_n0169_inv,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp1_16_CLK,
      I => GND_7_o_GND_7_o_mux_37_OUT_16_Q,
      O => func_gen_int_triangle_temp1(16),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_GND_7_o_GND_7_o_mux_37_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR1 => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_16_Q,
      ADR5 => '1',
      O => GND_7_o_GND_7_o_mux_37_OUT_16_Q
    );
  Mmux_GND_7_o_GND_7_o_mux_37_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => GND_7_o_func_gen_int_tpos_slope_24_MuLt_28_OUT_15_Q,
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR2 => '1',
      O => GND_7_o_GND_7_o_mux_37_OUT_15_Q
    );
  func_gen_int_triangle_temp1_15 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => Q_n0169_inv,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp1_15_CLK,
      I => GND_7_o_GND_7_o_mux_37_OUT_15_Q,
      O => func_gen_int_triangle_temp1(15),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Q_n0169_inv_n0169_inv_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Q_n0168_inv,
      O => Q_n0168_inv_0
    );
  Q_n0169_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"AAAAFFFFAAAAFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR5 => '1',
      O => Q_n0169_inv
    );
  Q_n0168_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"5555FFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand,
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      O => Q_n0168_inv
    );
  PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR4 => func_gen_int_uns_pcnt(9),
      ADR2 => func_gen_int_uns_pcnt(8),
      ADR5 => func_gen_int_uns_pcnt(7),
      ADR1 => func_gen_int_uns_pcnt(6),
      ADR0 => func_gen_int_uns_pcnt(5),
      ADR3 => N4,
      O => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv
    );
  n00261 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"070F0F0F0F0F0F0F"
    )
    port map (
      ADR2 => func_gen_int_uns_pcnt(9),
      ADR1 => func_gen_int_uns_pcnt(8),
      ADR0 => func_gen_int_uns_pcnt(7),
      ADR4 => func_gen_int_uns_pcnt(6),
      ADR5 => func_gen_int_uns_pcnt(5),
      ADR3 => N14,
      O => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand
    );
  func_gen_int_sine_atten_20 : X_FF
    generic map(
      LOC => "SLICE_X28Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sine_atten_20_CLK,
      I => NlwBufferSignal_func_gen_int_sine_atten_20_IN,
      O => func_gen_int_sine_atten(20),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sine_atten_19 : X_FF
    generic map(
      LOC => "SLICE_X30Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sine_atten_19_CLK,
      I => NlwBufferSignal_func_gen_int_sine_atten_19_IN,
      O => func_gen_int_sine_atten(19),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sine_atten_18 : X_FF
    generic map(
      LOC => "SLICE_X30Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sine_atten_18_CLK,
      I => NlwBufferSignal_func_gen_int_sine_atten_18_IN,
      O => func_gen_int_sine_atten(18),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sine_atten_17 : X_FF
    generic map(
      LOC => "SLICE_X30Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sine_atten_17_CLK,
      I => NlwBufferSignal_func_gen_int_sine_atten_17_IN,
      O => func_gen_int_sine_atten(17),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_sine_atten_16 : X_FF
    generic map(
      LOC => "SLICE_X30Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_sine_atten_16_CLK,
      I => NlwBufferSignal_func_gen_int_sine_atten_16_IN,
      O => func_gen_int_sine_atten(16),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_8_func_gen_int_triangle_data_8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(7),
      O => func_gen_int_triangle_data_7_0
    );
  func_gen_int_triangle_data_8_func_gen_int_triangle_data_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(5),
      O => func_gen_int_triangle_data_5_0
    );
  func_gen_int_triangle_data_8_func_gen_int_triangle_data_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(3),
      O => func_gen_int_triangle_data_3_0
    );
  func_gen_int_triangle_data_8_func_gen_int_triangle_data_8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(1),
      O => func_gen_int_triangle_data_1_0
    );
  func_gen_int_triangle_data_8 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_8_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_8_Q,
      O => func_gen_int_triangle_data(8),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT151 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"FF0FF000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_8_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_8_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT141 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"CFCFC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_7_0,
      ADR2 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_7_Q
    );
  func_gen_int_triangle_data_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_7_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_7_Q,
      O => func_gen_int_triangle_data(7),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_6_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_6_Q,
      O => func_gen_int_triangle_data(6),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT131 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"FF0FF000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_6_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_6_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT121 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"AFAFA0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_5_0,
      ADR2 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR4 => func_gen_int_triangle_negmax_1748,
      ADR3 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_5_Q
    );
  func_gen_int_triangle_data_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_5_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_5_Q,
      O => func_gen_int_triangle_data(5),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_4_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_4_Q,
      O => func_gen_int_triangle_data(4),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"DD88DD88DD88DD88"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR1 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_4_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_4_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT101 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"FFAA5500"
    )
    port map (
      ADR2 => '1',
      ADR4 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_3_0,
      ADR0 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR1 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_3_Q
    );
  func_gen_int_triangle_data_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_3_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_3_Q,
      O => func_gen_int_triangle_data(3),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_2 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_2_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_2_Q,
      O => func_gen_int_triangle_data(2),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR0 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_2_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_2_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT81 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_1_0,
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR3 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_1_Q
    );
  func_gen_int_triangle_data_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_1_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_1_Q,
      O => func_gen_int_triangle_data(1),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_30 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_30_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_30_IN,
      O => func_gen_int_triangle_temp2(30),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_29 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_29_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_29_IN,
      O => func_gen_int_triangle_temp2(29),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_28 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_28_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_28_IN,
      O => func_gen_int_triangle_temp2(28),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_temp2_27 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => Q_n0171_inv_0,
      CLK => NlwBufferSignal_func_gen_int_triangle_temp2_27_CLK,
      I => NlwBufferSignal_func_gen_int_triangle_temp2_27_IN,
      O => func_gen_int_triangle_temp2(27),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_14_func_gen_int_triangle_data_14_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(13),
      O => func_gen_int_triangle_data_13_0
    );
  func_gen_int_triangle_data_14_func_gen_int_triangle_data_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(11),
      O => func_gen_int_triangle_data_11_0
    );
  func_gen_int_triangle_data_14_func_gen_int_triangle_data_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(0),
      O => func_gen_int_triangle_data_0_0
    );
  func_gen_int_triangle_data_14_func_gen_int_triangle_data_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(15),
      O => func_gen_int_triangle_data_15_0
    );
  func_gen_int_triangle_data_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_14_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_14_Q,
      O => func_gen_int_triangle_data(14),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR1 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_14_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_14_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_13_0,
      ADR4 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR3 => func_gen_int_triangle_negmax_1748,
      ADR1 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_13_Q
    );
  func_gen_int_triangle_data_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_13_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_13_Q,
      O => func_gen_int_triangle_data(13),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_12_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_12_Q,
      O => func_gen_int_triangle_data(12),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"FCFC0C0CFCFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR1 => func_gen_int_triangle_negmax_1748,
      ADR4 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_12_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_12_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"FC0CFC0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_11_0,
      ADR2 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR1 => func_gen_int_triangle_negmax_1748,
      ADR4 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_11_Q
    );
  func_gen_int_triangle_data_11 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_11_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_11_Q,
      O => func_gen_int_triangle_data(11),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_10 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_10_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_10_Q,
      O => func_gen_int_triangle_data(10),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR1 => func_gen_int_triangle_negmax_1748,
      ADR0 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_10_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_10_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"F0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_0_0,
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR1 => func_gen_int_triangle_negmax_1748,
      ADR4 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_0_Q
    );
  func_gen_int_triangle_data_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_0_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_0_Q,
      O => func_gen_int_triangle_data(0),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  func_gen_int_triangle_data_9 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_9_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_9_Q,
      O => func_gen_int_triangle_data(9),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"F0AAF0AAF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR0 => func_gen_int_triangle_negmax_1748,
      ADR2 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_9_0,
      ADR5 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_9_Q
    );
  Mmux_func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"FFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR4 => func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_15_0,
      ADR3 => PWR_7_o_func_gen_int_uns_pcnt_9_LessThan_10_o_inv,
      ADR0 => func_gen_int_triangle_negmax_1748,
      ADR1 => '1',
      O => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_15_Q
    );
  func_gen_int_triangle_data_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_func_gen_int_triangle_data_15_CLK,
      I => func_gen_int_triangle_negmax_15_func_gen_int_triangle_negmax_15_mux_35_OUT_15_Q,
      O => func_gen_int_triangle_data(15),
      RST => func_gen_rst_l_in_inv,
      SET => GND
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_2_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_12_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_9_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_10_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_11_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_3_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_13_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_7_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_6_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_4_CLK
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_uns_tcnt_9_LessThan_23_o,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_1_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_uns_tcnt_9_LessThan_23_o,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_2_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_3_DI_3_Q
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_1_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_5_CLK
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_0_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_1_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_2_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_11_DI_3_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_0_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_1_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_2_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_cy_7_DI_3_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(6),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_10_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(7),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_11_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(8),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_12_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_13_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(9),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_13_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(0),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_4_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(1),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_5_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(2),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_6_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(3),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_7_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(4),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_8_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_uns_pcnt(5),
      O => 
NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_ADDRA_9_Q
    );
  NlwBufferBlock_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_CLKA : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_u1_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s6_init_ram_SP_SIMPLE_PRIM18_ram_CLKA
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_8_CLK
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_0_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_1_Q
    );
  NlwBufferBlock_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_A_10_mand1,
      O => NlwBufferSignal_Mmux_func_gen_int_triangle_negmax_15_GND_7_o_mux_34_OUT_rs_xor_15_DI_2_Q
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_3_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_2_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_1_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_0_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_7_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_6_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_5_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_4_CLK
    );
  NlwBufferBlock_func_gen_sine_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_7_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_5_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_6_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_7_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_8_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_6_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_9_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_10_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_12_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_9_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_1_0,
      O => NlwBufferSignal_func_gen_triangle_out_1_OBUF_I
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_9_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_8_CLK
    );
  NlwBufferBlock_func_gen_sawtooth_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_11_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_13_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_14_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_15_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_0_0,
      O => NlwBufferSignal_func_gen_triangle_out_0_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_8_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_9_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_10_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(2),
      O => NlwBufferSignal_func_gen_triangle_out_2_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_3_0,
      O => NlwBufferSignal_func_gen_triangle_out_3_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(12),
      O => NlwBufferSignal_func_gen_triangle_out_12_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(8),
      O => NlwBufferSignal_func_gen_triangle_out_8_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_14_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_12_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(6),
      O => NlwBufferSignal_func_gen_triangle_out_6_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_5_0,
      O => NlwBufferSignal_func_gen_triangle_out_5_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_11_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_7_0,
      O => NlwBufferSignal_func_gen_triangle_out_7_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_11_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_15_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_10_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(4),
      O => NlwBufferSignal_func_gen_triangle_out_4_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(10),
      O => NlwBufferSignal_func_gen_triangle_out_10_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(9),
      O => NlwBufferSignal_func_gen_triangle_out_9_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_11_0,
      O => NlwBufferSignal_func_gen_triangle_out_11_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_13_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_13_0,
      O => NlwBufferSignal_func_gen_triangle_out_13_OBUF_I
    );
  NlwBufferBlock_func_gen_triangle_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data(14),
      O => NlwBufferSignal_func_gen_triangle_out_14_OBUF_I
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_9_CLK
    );
  NlwBufferBlock_func_gen_int_uns_tcnt1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_tcnt1_8_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_7_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_6_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_5_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_4_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_3_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_2_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_1_CLK
    );
  NlwBufferBlock_func_gen_int_uns_pcnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_uns_pcnt_0_CLK
    );
  NlwBufferBlock_func_gen_triangle_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_data_15_0,
      O => NlwBufferSignal_func_gen_triangle_out_15_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data_0_0,
      O => NlwBufferSignal_func_gen_sawtooth_out_0_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(1),
      O => NlwBufferSignal_func_gen_sawtooth_out_1_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(2),
      O => NlwBufferSignal_func_gen_sawtooth_out_2_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(16),
      O => NlwBufferSignal_func_gen_sine_out_0_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_3_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_6_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_0_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(17),
      O => NlwBufferSignal_func_gen_sine_out_1_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_4_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(4),
      O => NlwBufferSignal_func_gen_sawtooth_out_4_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_1_OBUF_I
    );
  NlwBufferBlock_func_gen_pulse_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_pulse_data(0),
      O => NlwBufferSignal_func_gen_pulse_out_2_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data_3_0,
      O => NlwBufferSignal_func_gen_sawtooth_out_3_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_5_OBUF_I
    );
  NlwBufferBlock_func_gen_clk_in_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP_IBUFG_0,
      O => NlwBufferSignal_func_gen_clk_in_BUFGP_BUFG_IN
    );
  NlwBufferBlock_func_gen_sine_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_5_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(19),
      O => NlwBufferSignal_func_gen_sine_out_3_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(18),
      O => NlwBufferSignal_func_gen_sine_out_2_OBUF_I
    );
  NlwBufferBlock_func_gen_sawtooth_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_8_OBUF_I
    );
  NlwBufferBlock_func_gen_int_pulse_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_pulse_data_0_CLK
    );
  NlwBufferBlock_func_gen_sawtooth_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sawtooth_data(5),
      O => NlwBufferSignal_func_gen_sawtooth_out_7_OBUF_I
    );
  NlwBufferBlock_func_gen_sine_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_atten(20),
      O => NlwBufferSignal_func_gen_sine_out_4_OBUF_I
    );
  NlwBufferBlock_func_gen_int_tneg_slope_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_tneg_slope_0_1_CLK
    );
  NlwBufferBlock_func_gen_int_tneg_slope_0_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_1748,
      O => NlwBufferSignal_func_gen_int_tneg_slope_0_1_IN
    );
  NlwBufferBlock_func_gen_int_tneg_slope_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_tneg_slope_0_CLK
    );
  NlwBufferBlock_func_gen_int_tneg_slope_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_triangle_negmax_1748,
      O => NlwBufferSignal_func_gen_int_tneg_slope_0_IN
    );
  NlwBufferBlock_func_gen_int_sawtooth_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_data_5_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_temp1_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_temp1_22_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_temp1_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_temp1_20_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_temp1_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_temp1_19_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_temp1_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_temp1_18_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_temp1_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_temp1_17_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_negmax_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_negmax_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_18_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_18_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_18_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_18_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_17_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_17_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_17_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_17_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_16_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_16_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_16_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_16_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_15_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_15_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_15_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_15_IN
    );
  NlwBufferBlock_func_gen_int_sawtooth_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_data_4_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_data_3_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_data_2_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_temp1_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_temp1_21_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_data_1_CLK
    );
  NlwBufferBlock_func_gen_int_sawtooth_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sawtooth_data_0_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_22_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_22_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_22_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_22_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_21_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_21_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_21_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_21_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_20_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_20_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_20_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_20_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_19_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_19_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_19_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_19_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_26_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_26_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_26_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_26_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_25_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_25_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_25_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_25_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_24_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_24_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_24_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_24_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_23_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_23_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_23_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_23_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp1_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp1_21_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp1_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp1_20_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp1_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp1_19_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp1_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp1_18_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp1_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp1_17_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp1_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp1_16_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp1_15_CLK
    );
  NlwBufferBlock_func_gen_int_sine_atten_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sine_atten_20_CLK
    );
  NlwBufferBlock_func_gen_int_sine_atten_20_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_20_Q,
      O => NlwBufferSignal_func_gen_int_sine_atten_20_IN
    );
  NlwBufferBlock_func_gen_int_sine_atten_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sine_atten_19_CLK
    );
  NlwBufferBlock_func_gen_int_sine_atten_19_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_19_Q,
      O => NlwBufferSignal_func_gen_int_sine_atten_19_IN
    );
  NlwBufferBlock_func_gen_int_sine_atten_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sine_atten_18_CLK
    );
  NlwBufferBlock_func_gen_int_sine_atten_18_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_18_Q,
      O => NlwBufferSignal_func_gen_int_sine_atten_18_IN
    );
  NlwBufferBlock_func_gen_int_sine_atten_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sine_atten_17_CLK
    );
  NlwBufferBlock_func_gen_int_sine_atten_17_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_17_Q,
      O => NlwBufferSignal_func_gen_int_sine_atten_17_IN
    );
  NlwBufferBlock_func_gen_int_sine_atten_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_sine_atten_16_CLK
    );
  NlwBufferBlock_func_gen_int_sine_atten_16_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_int_sine_data_15_func_gen_int_sine_amp_15_MuLt_6_OUT_16_Q,
      O => NlwBufferSignal_func_gen_int_sine_atten_16_IN
    );
  NlwBufferBlock_func_gen_int_triangle_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_8_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_7_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_6_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_5_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_4_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_3_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_2_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_1_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_30_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_30_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_30_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_30_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_29_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_29_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_29_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_29_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_28_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_28_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_28_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_28_IN
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_27_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_temp2_27_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_7_o_func_gen_int_tneg_slope_24_MuLt_25_OUT_27_Q,
      O => NlwBufferSignal_func_gen_int_triangle_temp2_27_IN
    );
  NlwBufferBlock_func_gen_int_triangle_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_14_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_13_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_12_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_11_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_10_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_0_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_9_CLK
    );
  NlwBufferBlock_func_gen_int_triangle_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => func_gen_clk_in_BUFGP,
      O => NlwBufferSignal_func_gen_int_triangle_data_15_CLK
    );
  NlwBlock_func_gen_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_func_gen_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

