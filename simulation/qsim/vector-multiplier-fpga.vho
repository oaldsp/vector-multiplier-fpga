-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/28/2026 09:07:58"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vector_multiplier_fpga IS
    PORT (
	signaltap_trigger : OUT std_logic;
	clk : IN std_logic;
	result : OUT std_logic_vector(15 DOWNTO 0);
	u : OUT std_logic_vector(7 DOWNTO 0);
	v : OUT std_logic_vector(7 DOWNTO 0);
	MAX10_CLK1_50 : IN std_logic
	);
END vector_multiplier_fpga;

-- Design Ports Information
-- signaltap_trigger	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[4]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vector_multiplier_fpga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_signaltap_trigger : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_u : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_v : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \signaltap_trigger~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \u[7]~output_o\ : std_logic;
SIGNAL \u[6]~output_o\ : std_logic;
SIGNAL \u[5]~output_o\ : std_logic;
SIGNAL \u[4]~output_o\ : std_logic;
SIGNAL \u[3]~output_o\ : std_logic;
SIGNAL \u[2]~output_o\ : std_logic;
SIGNAL \u[1]~output_o\ : std_logic;
SIGNAL \u[0]~output_o\ : std_logic;
SIGNAL \v[7]~output_o\ : std_logic;
SIGNAL \v[6]~output_o\ : std_logic;
SIGNAL \v[5]~output_o\ : std_logic;
SIGNAL \v[4]~output_o\ : std_logic;
SIGNAL \v[3]~output_o\ : std_logic;
SIGNAL \v[2]~output_o\ : std_logic;
SIGNAL \v[1]~output_o\ : std_logic;
SIGNAL \v[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst1|lpm_mult_component|auto_generated|result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

signaltap_trigger <= ww_signaltap_trigger;
ww_clk <= clk;
result <= ww_result;
u <= ww_u;
v <= ww_v;
ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\
& \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\
& \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & 
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & 
\inst1|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~1\ & \inst1|lpm_mult_component|auto_generated|mac_mult1~0\);

\inst1|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst1|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst1|lpm_mult_component|auto_generated|result\(0) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst1|lpm_mult_component|auto_generated|result\(1) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst1|lpm_mult_component|auto_generated|result\(2) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst1|lpm_mult_component|auto_generated|result\(3) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst1|lpm_mult_component|auto_generated|result\(4) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst1|lpm_mult_component|auto_generated|result\(5) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst1|lpm_mult_component|auto_generated|result\(6) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst1|lpm_mult_component|auto_generated|result\(7) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst1|lpm_mult_component|auto_generated|result\(8) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst1|lpm_mult_component|auto_generated|result\(9) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst1|lpm_mult_component|auto_generated|result\(10) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst1|lpm_mult_component|auto_generated|result\(11) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst1|lpm_mult_component|auto_generated|result\(12) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst1|lpm_mult_component|auto_generated|result\(13) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst1|lpm_mult_component|auto_generated|result\(14) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst1|lpm_mult_component|auto_generated|result\(15) <= \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst2|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst2|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst2|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst2|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst2|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst1|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\inst|altsyncram_component|auto_generated|q_a\(7) & \inst|altsyncram_component|auto_generated|q_a\(6) & \inst|altsyncram_component|auto_generated|q_a\(5) & 
\inst|altsyncram_component|auto_generated|q_a\(4) & \inst|altsyncram_component|auto_generated|q_a\(3) & \inst|altsyncram_component|auto_generated|q_a\(2) & \inst|altsyncram_component|auto_generated|q_a\(1) & 
\inst|altsyncram_component|auto_generated|q_a\(0) & gnd);

\inst1|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\inst2|altsyncram_component|auto_generated|q_a\(7) & \inst2|altsyncram_component|auto_generated|q_a\(6) & \inst2|altsyncram_component|auto_generated|q_a\(5) & 
\inst2|altsyncram_component|auto_generated|q_a\(4) & \inst2|altsyncram_component|auto_generated|q_a\(3) & \inst2|altsyncram_component|auto_generated|q_a\(2) & \inst2|altsyncram_component|auto_generated|q_a\(1) & 
\inst2|altsyncram_component|auto_generated|q_a\(0) & gnd);

\inst1|lpm_mult_component|auto_generated|mac_mult1~0\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst1|lpm_mult_component|auto_generated|mac_mult1~1\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst1|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst3|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y0_N30
\signaltap_trigger~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	devoe => ww_devoe,
	o => \signaltap_trigger~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(15),
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(14),
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(13),
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(12),
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(11),
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(10),
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(9),
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(8),
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(7),
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(6),
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(5),
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(4),
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_mult_component|auto_generated|result\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\u[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \u[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\u[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \u[6]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\u[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \u[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\u[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \u[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\u[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \u[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\u[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \u[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\u[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \u[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\u[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \u[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\v[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \v[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\v[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \v[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\v[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \v[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\v[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \v[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\v[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \v[3]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\v[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \v[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\v[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \v[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\v[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \v[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y3_N14
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X54_Y3_N15
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X54_Y3_N16
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X54_Y3_N17
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X54_Y3_N18
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X54_Y3_N19
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X54_Y3_N20
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X54_Y3_N21
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X54_Y3_N22
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X54_Y3_N23
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X54_Y3_N24
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X54_Y3_N25
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X54_Y3_N26
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X54_Y3_N27
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X54_Y3_N28
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ $ (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: FF_X54_Y3_N29
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X54_Y3_N12
\inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)) # (((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # 
-- (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X54_Y3_N10
\inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # ((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- ((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X54_Y3_N4
\inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = (\inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # (\inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datad => \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	combout => \inst3|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: M9K_X53_Y3_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000FC01BA00BFC03D00115C05040188C0798023DC09E9029E80B11030380D7403B900FF90427811280480813500532815FF05B00174506004193106AA81BFC07",
	mem_init1 => X"3701D67078241F180821C21EF08BC4238B0906C25070998C27D90A3F429AE0A8D42B000B1042DBC0BBFC2FCE0C15431030C890339A0D3DC35E70D9E037100E03C39760EB983BF80F2703D260F80C3F531033041FF10AF8434311000453311AB047FD1236C4965128204B19132244DF013BC04F891406451081499453DB153F455AC158CC57001610C59BE16BFC5BCC1714C5D03178985F9C183E061E6189D8630F19040657819B9C67F71A26869241A80C6B551B3386DFF1BAF06F411C00071351CAB873FD1D36475631D81C771B1E22C79F11EBBC7B871F0607D091F99C7FDC203F081AA208C483012111485C021BFC87CA221408902228A08B9E233E48DE42",
	mem_init0 => X"39D08F0E24044917A24BA493F72526095232581097572634099FF26AE89B3F270009D3727AC49FFE2835CA1612881CA31C29238A5F229BB8A7852A05CA90A2A9A4ABDE2B3F0ADA82B8BCAF012C11CB1C22CBFCB3C82D138B5022D8A4B7A02E3E8B9E32E9C4BB0D2F048BD7D2FBA8BFF630254C12130810C35931348C5FF31AE0C73D32000C93832ACCCBFE33358CD5E33818CF1E34240D1F334BB4D38235058D50B359B0D7DF363ECD9A6368B8DB0137124DDC437BFCDFC738130E102388ACE3A3393E8E5E2399BCE70C3A050E97F3ABACEBF53B24CED203B814EF5B3C34CF1FF3CAD8F33B3D000F53A3DAD4F7FF3E350F95C3E814FB1F3F248FDF43FBB0FF80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vector_u.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoryU:inst|altsyncram:altsyncram_component|altsyncram_goq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: DSPMULT_X48_Y1_N0
\inst1|lpm_mult_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y1_N2
\inst1|lpm_mult_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X78_Y37_N1
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_signaltap_trigger <= \signaltap_trigger~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_u(7) <= \u[7]~output_o\;

ww_u(6) <= \u[6]~output_o\;

ww_u(5) <= \u[5]~output_o\;

ww_u(4) <= \u[4]~output_o\;

ww_u(3) <= \u[3]~output_o\;

ww_u(2) <= \u[2]~output_o\;

ww_u(1) <= \u[1]~output_o\;

ww_u(0) <= \u[0]~output_o\;

ww_v(7) <= \v[7]~output_o\;

ww_v(6) <= \v[6]~output_o\;

ww_v(5) <= \v[5]~output_o\;

ww_v(4) <= \v[4]~output_o\;

ww_v(3) <= \v[3]~output_o\;

ww_v(2) <= \v[2]~output_o\;

ww_v(1) <= \v[1]~output_o\;

ww_v(0) <= \v[0]~output_o\;
END structure;


