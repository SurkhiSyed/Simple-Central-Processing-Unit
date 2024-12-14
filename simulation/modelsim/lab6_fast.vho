-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/26/2024 11:20:20"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU1 IS
    PORT (
	Clock : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	OP : IN std_logic_vector(15 DOWNTO 0);
	Neg : OUT std_logic;
	R1 : OUT std_logic_vector(3 DOWNTO 0);
	R2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU1;

-- Design Ports Information
-- Neg	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[1]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[2]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[3]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[0]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[1]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[2]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[3]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[7]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[9]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[11]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[12]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[13]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[14]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[15]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[8]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[5]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[6]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[3]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Neg : std_logic;
SIGNAL ww_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Result~0_combout\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \Selector6~6_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Result~4_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Result~5_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector3~9_combout\ : std_logic;
SIGNAL \Selector1~9_combout\ : std_logic;
SIGNAL \Selector7~8_combout\ : std_logic;
SIGNAL \Selector7~9_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Neg~reg0_regout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector6~10_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Selector6~7_combout\ : std_logic;
SIGNAL \Selector6~8_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~9_combout\ : std_logic;
SIGNAL \Result~1_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector5~9_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector5~7_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~8_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \Selector4~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector4~9_combout\ : std_logic;
SIGNAL \Selector4~7_combout\ : std_logic;
SIGNAL \Result~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~8_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Result~3_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector2~9_combout\ : std_logic;
SIGNAL \Selector2~7_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~8_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \Selector1~7_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~8_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OP~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_A <= A;
ww_B <= B;
ww_OP <= OP;
Neg <= ww_Neg;
R1 <= ww_R1;
R2 <= ww_R2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~clk_delay_ctrl_clkout\);

-- Location: LCCOMB_X29_Y3_N16
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B~combout\(0) & ((GND) # (!\A~combout\(0)))) # (!\B~combout\(0) & (\A~combout\(0) $ (GND)))
-- \Add1~1\ = CARRY((\B~combout\(0)) # (!\A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X28_Y3_N0
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\A~combout\(0) & ((GND) # (!\B~combout\(0)))) # (!\A~combout\(0) & (\B~combout\(0) $ (GND)))
-- \Add2~1\ = CARRY((\A~combout\(0)) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X29_Y2_N6
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A~combout\(0) & (\B~combout\(0) $ (VCC))) # (!\A~combout\(0) & (\B~combout\(0) & VCC))
-- \Add0~1\ = CARRY((\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X28_Y3_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (!\Add2~1\)) # (!\B~combout\(1) & (\Add2~1\ & VCC)))) # (!\A~combout\(1) & ((\B~combout\(1) & ((\Add2~1\) # (GND))) # (!\B~combout\(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\A~combout\(1) & (\B~combout\(1) & !\Add2~1\)) # (!\A~combout\(1) & ((\B~combout\(1)) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X29_Y3_N18
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B~combout\(1) & ((\A~combout\(1) & (!\Add1~1\)) # (!\A~combout\(1) & (\Add1~1\ & VCC)))) # (!\B~combout\(1) & ((\A~combout\(1) & ((\Add1~1\) # (GND))) # (!\A~combout\(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B~combout\(1) & (\A~combout\(1) & !\Add1~1\)) # (!\B~combout\(1) & ((\A~combout\(1)) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X28_Y3_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\B~combout\(2) & (\A~combout\(2) & !\Add2~3\)) # (!\B~combout\(2) & ((\A~combout\(2)) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X29_Y3_N20
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B~combout\(2) & ((!\Add1~3\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X28_Y3_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\B~combout\(3) & ((\A~combout\(3) & (!\Add2~5\)) # (!\A~combout\(3) & ((\Add2~5\) # (GND))))) # (!\B~combout\(3) & ((\A~combout\(3) & (\Add2~5\ & VCC)) # (!\A~combout\(3) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\B~combout\(3) & ((!\Add2~5\) # (!\A~combout\(3)))) # (!\B~combout\(3) & (!\A~combout\(3) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X28_Y3_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\B~combout\(4) $ (\A~combout\(4) $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\B~combout\(4) & (\A~combout\(4) & !\Add2~7\)) # (!\B~combout\(4) & ((\A~combout\(4)) # (!\Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X29_Y3_N24
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\A~combout\(4) & (\B~combout\(4) & !\Add1~7\)) # (!\A~combout\(4) & ((\B~combout\(4)) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X29_Y2_N14
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B~combout\(4) $ (\A~combout\(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B~combout\(4) & ((\A~combout\(4)) # (!\Add0~7\))) # (!\B~combout\(4) & (\A~combout\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X28_Y3_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\A~combout\(5) & ((\B~combout\(5) & (!\Add2~9\)) # (!\B~combout\(5) & (\Add2~9\ & VCC)))) # (!\A~combout\(5) & ((\B~combout\(5) & ((\Add2~9\) # (GND))) # (!\B~combout\(5) & (!\Add2~9\))))
-- \Add2~11\ = CARRY((\A~combout\(5) & (\B~combout\(5) & !\Add2~9\)) # (!\A~combout\(5) & ((\B~combout\(5)) # (!\Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X29_Y3_N26
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\B~combout\(5) & ((\A~combout\(5) & (!\Add1~9\)) # (!\A~combout\(5) & (\Add1~9\ & VCC)))) # (!\B~combout\(5) & ((\A~combout\(5) & ((\Add1~9\) # (GND))) # (!\A~combout\(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\B~combout\(5) & (\A~combout\(5) & !\Add1~9\)) # (!\B~combout\(5) & ((\A~combout\(5)) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X28_Y3_N12
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\B~combout\(6) $ (\A~combout\(6) $ (\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\B~combout\(6) & (\A~combout\(6) & !\Add2~11\)) # (!\B~combout\(6) & ((\A~combout\(6)) # (!\Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X29_Y3_N28
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\Add1~11\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X29_Y2_N18
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A~combout\(6) & ((\B~combout\(6)) # (!\Add0~11\))) # (!\A~combout\(6) & (\B~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y1_N20
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\OP~combout\(4) & (!\OP~combout\(6) & !\OP~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(4),
	datab => \OP~combout\(6),
	datac => \OP~combout\(5),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X29_Y1_N12
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\OP~combout\(4) & (!\OP~combout\(6) & \OP~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(4),
	datab => \OP~combout\(6),
	datac => \OP~combout\(5),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X28_Y2_N6
\WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = ((\Equal7~0_combout\) # ((\Equal1~3_combout\ & \Equal1~4_combout\))) # (!\WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal7~0_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X29_Y2_N2
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\A~combout\(0) & (\B~combout\(0) & \Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => \Equal5~1_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X29_Y1_N8
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\OP~combout\(4) & (!\OP~combout\(2) & (!\OP~combout\(5) & !\OP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(4),
	datab => \OP~combout\(2),
	datac => \OP~combout\(5),
	datad => \OP~combout\(6),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X29_Y1_N26
\Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (!\B~combout\(0) & (\OP~combout\(3) & (\Equal3~0_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \OP~combout\(3),
	datac => \Equal3~0_combout\,
	datad => \Equal2~2_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X29_Y2_N28
\Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\OP~combout\(7) & (!\OP~combout\(8) & ((\B~combout\(0)) # (\A~combout\(0))))) # (!\OP~combout\(7) & (((\OP~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \OP~combout\(8),
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X30_Y2_N0
\Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (!\Add0~0_combout\) # (!\OP~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(8),
	datac => \Add0~0_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X29_Y2_N22
\Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\Equal1~5_combout\ & (\Selector7~3_combout\ & (\Selector7~4_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Selector7~3_combout\,
	datac => \Selector7~4_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X29_Y2_N0
\Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = (\Selector7~9_combout\) # ((\Selector7~1_combout\) # ((\Add0~0_combout\ & !\WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector7~9_combout\,
	datac => \WideNor0~3_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~6_combout\);

-- Location: LCCOMB_X27_Y2_N24
\Result~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~0_combout\ = \B~combout\(1) $ (\A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(1),
	combout => \Result~0_combout\);

-- Location: LCCOMB_X28_Y3_N22
\Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = (\Selector6~4_combout\ & ((\Add2~2_combout\) # ((\Selector8~0_combout\ & \Add1~2_combout\)))) # (!\Selector6~4_combout\ & (((\Selector8~0_combout\ & \Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~4_combout\,
	datab => \Add2~2_combout\,
	datac => \Selector8~0_combout\,
	datad => \Add1~2_combout\,
	combout => \Selector6~5_combout\);

-- Location: LCCOMB_X27_Y2_N12
\Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~6_combout\ = (\Selector6~5_combout\) # ((\B~combout\(1) & (\A~combout\(1) & \Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~5_combout\,
	datab => \B~combout\(1),
	datac => \A~combout\(1),
	datad => \Equal5~1_combout\,
	combout => \Selector6~6_combout\);

-- Location: LCCOMB_X28_Y3_N20
\Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\Selector6~4_combout\ & ((\Add2~4_combout\) # ((\Selector8~0_combout\ & \Add1~4_combout\)))) # (!\Selector6~4_combout\ & (((\Selector8~0_combout\ & \Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~4_combout\,
	datab => \Add2~4_combout\,
	datac => \Selector8~0_combout\,
	datad => \Add1~4_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X27_Y1_N12
\Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (\Selector5~4_combout\) # ((\Equal5~1_combout\ & (\B~combout\(2) & \A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Selector5~4_combout\,
	datac => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \Selector5~5_combout\);

-- Location: LCCOMB_X27_Y1_N10
\Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = (\B~combout\(2) & ((\Equal7~0_combout\) # ((\Equal8~0_combout\ & \A~combout\(2))))) # (!\B~combout\(2) & ((\A~combout\(2) & ((\Equal7~0_combout\))) # (!\A~combout\(2) & (\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \Equal8~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \A~combout\(2),
	combout => \Selector5~6_combout\);

-- Location: LCCOMB_X27_Y2_N6
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (!\A~combout\(3) & (((!\B~combout\(3) & \Equal4~1_combout\)) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datac => \WideNor0~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X28_Y3_N16
\Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Add1~8_combout\ & ((\Selector8~0_combout\) # ((\Add2~8_combout\ & \Selector6~4_combout\)))) # (!\Add1~8_combout\ & (\Add2~8_combout\ & ((\Selector6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add2~8_combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector6~4_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X28_Y1_N6
\Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\Equal8~0_combout\ & ((\Equal7~0_combout\) # (\B~combout\(4) $ (!\A~combout\(4))))) # (!\Equal8~0_combout\ & (\Equal7~0_combout\ & ((\B~combout\(4)) # (\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \B~combout\(4),
	datac => \Equal7~0_combout\,
	datad => \A~combout\(4),
	combout => \Selector3~6_combout\);

-- Location: LCCOMB_X28_Y1_N12
\Selector3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (\Selector3~6_combout\) # ((\Selector3~9_combout\) # ((!\B~combout\(4) & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~6_combout\,
	datab => \Selector3~9_combout\,
	datac => \B~combout\(4),
	datad => \Equal3~1_combout\,
	combout => \Selector3~7_combout\);

-- Location: LCCOMB_X27_Y1_N6
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\A~combout\(5) & (((!\B~combout\(5) & \Equal4~1_combout\)) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datac => \Equal4~1_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X27_Y1_N24
\Result~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~4_combout\ = \B~combout\(5) $ (\A~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datad => \A~combout\(5),
	combout => \Result~4_combout\);

-- Location: LCCOMB_X28_Y3_N30
\Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector8~0_combout\ & ((\Add1~10_combout\) # ((\Selector6~4_combout\ & \Add2~10_combout\)))) # (!\Selector8~0_combout\ & (\Selector6~4_combout\ & ((\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector6~4_combout\,
	datac => \Add1~10_combout\,
	datad => \Add2~10_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X28_Y1_N4
\Result~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~5_combout\ = \B~combout\(6) $ (\A~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(6),
	datad => \A~combout\(6),
	combout => \Result~5_combout\);

-- Location: LCCOMB_X28_Y3_N28
\Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Add2~12_combout\ & ((\Selector6~4_combout\) # ((\Add1~12_combout\ & \Selector8~0_combout\)))) # (!\Add2~12_combout\ & (\Add1~12_combout\ & (\Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add1~12_combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector6~4_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X28_Y1_N2
\Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\Selector1~4_combout\) # ((\Equal5~1_combout\ & (\B~combout\(6) & \A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~4_combout\,
	datab => \Equal5~1_combout\,
	datac => \B~combout\(6),
	datad => \A~combout\(6),
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X28_Y1_N24
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\A~combout\(7) & (((!\B~combout\(7) & \Equal4~1_combout\)) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \Equal4~1_combout\,
	datac => \A~combout\(7),
	datad => \WideNor0~1_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X29_Y1_N4
\Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\OP~combout\(4) & (\OP~combout\(6) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(4),
	datac => \OP~combout\(6),
	datad => \Equal4~0_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X28_Y1_N14
\Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Equal8~0_combout\ & ((\Selector0~4_combout\) # (\A~combout\(7) $ (!\B~combout\(7))))) # (!\Equal8~0_combout\ & (\Selector0~4_combout\ & (\A~combout\(7) $ (\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \A~combout\(7),
	datac => \B~combout\(7),
	datad => \Selector0~4_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X28_Y2_N26
\Selector3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~9_combout\ = (!\OP~combout\(7) & (\Add0~8_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \Add0~8_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector3~9_combout\);

-- Location: LCCOMB_X28_Y2_N14
\Selector1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~9_combout\ = (!\OP~combout\(7) & (\Add0~12_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \Add0~12_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector1~9_combout\);

-- Location: LCCOMB_X30_Y3_N22
\Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~8_combout\ = (\Equal1~3_combout\ & ((\LessThan0~14_combout\ & (\Add1~0_combout\)) # (!\LessThan0~14_combout\ & ((\Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \Add1~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Equal1~3_combout\,
	combout => \Selector7~8_combout\);

-- Location: LCCOMB_X29_Y2_N26
\Selector7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~9_combout\ = (\Selector7~2_combout\) # ((\Selector7~5_combout\) # ((\Selector7~8_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~8_combout\,
	datab => \Selector7~2_combout\,
	datac => \Equal1~4_combout\,
	datad => \Selector7~5_combout\,
	combout => \Selector7~9_combout\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(11),
	combout => \OP~combout\(11));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(5),
	combout => \OP~combout\(5));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKDELAYCTRL_G7
\Clock~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \Clock~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(4),
	combout => \OP~combout\(4));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(0),
	combout => \OP~combout\(0));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(14),
	combout => \OP~combout\(14));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(13),
	combout => \OP~combout\(13));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(15),
	combout => \OP~combout\(15));

-- Location: LCCOMB_X29_Y1_N14
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\OP~combout\(14) & (!\OP~combout\(13) & !\OP~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(14),
	datac => \OP~combout\(13),
	datad => \OP~combout\(15),
	combout => \Equal1~1_combout\);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(9),
	combout => \OP~combout\(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(10),
	combout => \OP~combout\(10));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(12),
	combout => \OP~combout\(12));

-- Location: LCCOMB_X35_Y1_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\OP~combout\(11) & (!\OP~combout\(9) & (!\OP~combout\(10) & !\OP~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(11),
	datab => \OP~combout\(9),
	datac => \OP~combout\(10),
	datad => \OP~combout\(12),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X28_Y2_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\OP~combout\(8) & (\OP~combout\(0) & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(8),
	datab => \OP~combout\(0),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(2),
	combout => \OP~combout\(2));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(1),
	combout => \OP~combout\(1));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(3),
	combout => \OP~combout\(3));

-- Location: LCCOMB_X29_Y1_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Equal2~0_combout\ & (!\OP~combout\(2) & (!\OP~combout\(1) & !\OP~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \OP~combout\(3),
	combout => \Equal0~0_combout\);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(7),
	combout => \OP~combout\(7));

-- Location: LCCOMB_X28_Y2_N20
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & !\OP~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \OP~combout\(7),
	combout => \Equal0~2_combout\);

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(8),
	combout => \OP~combout\(8));

-- Location: LCCOMB_X30_Y1_N24
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\OP~combout\(7) & (!\OP~combout\(0) & !\OP~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(7),
	datac => \OP~combout\(0),
	datad => \OP~combout\(8),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X29_Y1_N30
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (!\OP~combout\(1) & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \OP~combout\(1),
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X29_Y1_N28
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\OP~combout\(5) & (!\OP~combout\(3) & (!\OP~combout\(2) & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(5),
	datab => \OP~combout\(3),
	datac => \OP~combout\(2),
	datad => \Equal2~2_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X28_Y2_N4
\WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (!\Equal0~2_combout\ & (((\OP~combout\(4)) # (!\Equal4~0_combout\)) # (!\OP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \OP~combout\(4),
	datac => \Equal0~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \WideNor0~3_combout\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(6),
	combout => \OP~combout\(6));

-- Location: LCCOMB_X27_Y2_N0
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\OP~combout\(4) & (!\OP~combout\(6) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(4),
	datac => \OP~combout\(6),
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X28_Y2_N30
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~0_combout\ & (!\OP~combout\(0) & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \OP~combout\(0),
	datac => \Equal1~1_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X28_Y2_N16
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\Equal0~0_combout\ & (\Equal1~5_combout\ & (\OP~combout\(8) & !\OP~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal1~5_combout\,
	datac => \OP~combout\(8),
	datad => \OP~combout\(7),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X29_Y2_N4
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (\Equal5~1_combout\) # (\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X28_Y2_N2
WideNor0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\WideNor0~2_combout\) # (((\Equal4~1_combout\) # (\WideNor0~0_combout\)) # (!\WideNor0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \WideNor0~3_combout\,
	datac => \Equal4~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X28_Y2_N22
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\OP~combout\(8) & !\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(8),
	datac => \OP~combout\(0),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X28_Y2_N0
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\OP~combout\(7) & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X29_Y3_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\B~combout\(0) & !\A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y3_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B~combout\(1) & (\A~combout\(1) & !\LessThan0~1_cout\)) # (!\B~combout\(1) & ((\A~combout\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y3_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B~combout\(2) & ((!\LessThan0~3_cout\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y3_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B~combout\(3) & (\A~combout\(3) & !\LessThan0~5_cout\)) # (!\B~combout\(3) & ((\A~combout\(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y3_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A~combout\(4) & (\B~combout\(4) & !\LessThan0~7_cout\)) # (!\A~combout\(4) & ((\B~combout\(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y3_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\B~combout\(5) & (\A~combout\(5) & !\LessThan0~9_cout\)) # (!\B~combout\(5) & ((\A~combout\(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y3_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\LessThan0~11_cout\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y3_N14
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\B~combout\(7) & ((\LessThan0~13_cout\) # (!\A~combout\(7)))) # (!\B~combout\(7) & (\LessThan0~13_cout\ & !\A~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datad => \A~combout\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X28_Y3_N24
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Equal1~4_combout\ & (\Equal1~3_combout\ & \LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~3_combout\,
	datac => \LessThan0~14_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X29_Y1_N0
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((\Neg~reg0_regout\ & ((\Equal0~2_combout\) # (!\WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \WideNor0~combout\,
	datac => \Neg~reg0_regout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCFF_X29_Y1_N1
\Neg~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Neg~reg0_regout\);

-- Location: LCCOMB_X29_Y1_N6
\WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = ((\OP~combout\(3) $ (!\OP~combout\(2))) # (!\Equal2~2_combout\)) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \OP~combout\(3),
	datac => \OP~combout\(2),
	datad => \Equal2~2_combout\,
	combout => \WideNor0~1_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X29_Y2_N24
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\A~combout\(0) & (((!\B~combout\(0) & \Equal4~1_combout\)) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \WideNor0~1_combout\,
	datac => \B~combout\(0),
	datad => \Equal4~1_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X28_Y2_N12
\Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = (\Selector7~6_combout\) # ((\Selector7~0_combout\) # ((!\WideNor0~combout\ & Result(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~6_combout\,
	datab => \WideNor0~combout\,
	datac => Result(0),
	datad => \Selector7~0_combout\,
	combout => \Selector7~7_combout\);

-- Location: LCFF_X28_Y2_N13
\Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(0));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X27_Y2_N26
\Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (!\A~combout\(1) & (((!\B~combout\(1) & \Equal4~1_combout\)) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datac => \WideNor0~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X29_Y2_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (\Add0~1\ & VCC)) # (!\B~combout\(1) & (!\Add0~1\)))) # (!\A~combout\(1) & ((\B~combout\(1) & (!\Add0~1\)) # (!\B~combout\(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A~combout\(1) & (!\B~combout\(1) & !\Add0~1\)) # (!\A~combout\(1) & ((!\Add0~1\) # (!\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X28_Y2_N24
\Selector6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~10_combout\ = (!\OP~combout\(7) & (\Add0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \Add0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector6~10_combout\);

-- Location: LCCOMB_X29_Y2_N30
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\OP~combout\(7) & (!\OP~combout\(8) & (\Equal1~5_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \OP~combout\(8),
	datac => \Equal1~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X27_Y2_N14
\Selector6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~7_combout\ = (\A~combout\(1) & ((\Equal7~0_combout\) # ((\B~combout\(1) & \Equal8~0_combout\)))) # (!\A~combout\(1) & ((\B~combout\(1) & ((\Equal7~0_combout\))) # (!\B~combout\(1) & (\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datac => \Equal8~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \Selector6~7_combout\);

-- Location: LCCOMB_X27_Y2_N8
\Selector6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~8_combout\ = (\Selector6~10_combout\) # ((\Selector6~7_combout\) # ((\Equal3~1_combout\ & !\B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Selector6~10_combout\,
	datac => \Selector6~7_combout\,
	datad => \B~combout\(1),
	combout => \Selector6~8_combout\);

-- Location: LCCOMB_X27_Y2_N18
\Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Result~0_combout\ & (!\OP~combout\(4) & (\OP~combout\(6) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~0_combout\,
	datab => \OP~combout\(4),
	datac => \OP~combout\(6),
	datad => \Equal4~0_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X27_Y2_N16
\Selector6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~9_combout\ = (\Selector6~6_combout\) # ((\Selector6~2_combout\) # ((\Selector6~8_combout\) # (\Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~6_combout\,
	datab => \Selector6~2_combout\,
	datac => \Selector6~8_combout\,
	datad => \Selector6~3_combout\,
	combout => \Selector6~9_combout\);

-- Location: LCFF_X27_Y2_N17
\Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector6~9_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(1));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X27_Y1_N28
\Result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~1_combout\ = \B~combout\(2) $ (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \Result~1_combout\);

-- Location: LCCOMB_X27_Y1_N22
\Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\OP~combout\(6) & (!\OP~combout\(4) & (\Equal4~0_combout\ & \Result~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \OP~combout\(4),
	datac => \Equal4~0_combout\,
	datad => \Result~1_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X29_Y2_N10
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A~combout\(2) $ (\B~combout\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A~combout\(2) & ((\B~combout\(2)) # (!\Add0~3\))) # (!\A~combout\(2) & (\B~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X28_Y2_N10
\Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~9_combout\ = (!\OP~combout\(7) & (\Add0~4_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \Add0~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector5~9_combout\);

-- Location: LCCOMB_X29_Y1_N24
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Equal2~0_combout\ & (\OP~combout\(3) & (!\OP~combout\(2) & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \OP~combout\(3),
	datac => \OP~combout\(2),
	datad => \Equal2~2_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X27_Y1_N4
\Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~7_combout\ = (\Selector5~6_combout\) # ((\Selector5~9_combout\) # ((!\B~combout\(2) & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~6_combout\,
	datab => \Selector5~9_combout\,
	datac => \B~combout\(2),
	datad => \Equal3~1_combout\,
	combout => \Selector5~7_combout\);

-- Location: LCCOMB_X27_Y1_N30
\Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (!\A~combout\(2) & (((!\B~combout\(2) & \Equal4~1_combout\)) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \B~combout\(2),
	datac => \Equal4~1_combout\,
	datad => \A~combout\(2),
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X27_Y1_N20
\Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~8_combout\ = (\Selector5~5_combout\) # ((\Selector5~3_combout\) # ((\Selector5~7_combout\) # (\Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~5_combout\,
	datab => \Selector5~3_combout\,
	datac => \Selector5~7_combout\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~8_combout\);

-- Location: LCFF_X27_Y1_N21
\Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector5~8_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(2));

-- Location: LCCOMB_X29_Y3_N22
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\B~combout\(3) & ((\A~combout\(3) & (!\Add1~5\)) # (!\A~combout\(3) & (\Add1~5\ & VCC)))) # (!\B~combout\(3) & ((\A~combout\(3) & ((\Add1~5\) # (GND))) # (!\A~combout\(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\B~combout\(3) & (\A~combout\(3) & !\Add1~5\)) # (!\B~combout\(3) & ((\A~combout\(3)) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X29_Y1_N22
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal2~0_combout\ & (!\OP~combout\(2) & (\OP~combout\(1) & !\OP~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \OP~combout\(3),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X30_Y3_N8
\Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (\Equal1~3_combout\ & (\Equal1~4_combout\ & !\LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~3_combout\,
	datac => \Equal1~4_combout\,
	datad => \LessThan0~14_combout\,
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X28_Y3_N26
\Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (\Add2~6_combout\ & ((\Selector6~4_combout\) # ((\Add1~6_combout\ & \Selector8~0_combout\)))) # (!\Add2~6_combout\ & (\Add1~6_combout\ & (\Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add1~6_combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector6~4_combout\,
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X29_Y1_N18
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal5~0_combout\ & (!\OP~combout\(3) & (!\OP~combout\(2) & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \OP~combout\(3),
	datac => \OP~combout\(2),
	datad => \Equal2~2_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X27_Y2_N4
\Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = (\Selector4~4_combout\) # ((\B~combout\(3) & (\A~combout\(3) & \Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datac => \Selector4~4_combout\,
	datad => \Equal5~1_combout\,
	combout => \Selector4~5_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X27_Y2_N30
\Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~6_combout\ = (\Equal8~0_combout\ & ((\Equal7~0_combout\) # (\A~combout\(3) $ (!\B~combout\(3))))) # (!\Equal8~0_combout\ & (\Equal7~0_combout\ & ((\A~combout\(3)) # (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \Equal7~0_combout\,
	combout => \Selector4~6_combout\);

-- Location: LCCOMB_X29_Y2_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B~combout\(3) & ((\A~combout\(3) & (\Add0~5\ & VCC)) # (!\A~combout\(3) & (!\Add0~5\)))) # (!\B~combout\(3) & ((\A~combout\(3) & (!\Add0~5\)) # (!\A~combout\(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\B~combout\(3) & (!\A~combout\(3) & !\Add0~5\)) # (!\B~combout\(3) & ((!\Add0~5\) # (!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X28_Y2_N8
\Selector4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~9_combout\ = (!\OP~combout\(7) & (\Add0~6_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(7),
	datab => \Add0~6_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector4~9_combout\);

-- Location: LCCOMB_X27_Y2_N20
\Selector4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~7_combout\ = (\Selector4~6_combout\) # ((\Selector4~9_combout\) # ((!\B~combout\(3) & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \Selector4~6_combout\,
	datac => \Selector4~9_combout\,
	datad => \Equal3~1_combout\,
	combout => \Selector4~7_combout\);

-- Location: LCCOMB_X27_Y2_N28
\Result~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~2_combout\ = \A~combout\(3) $ (\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	combout => \Result~2_combout\);

-- Location: LCCOMB_X27_Y2_N2
\Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\Equal4~0_combout\ & (!\OP~combout\(4) & (\OP~combout\(6) & \Result~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \OP~combout\(4),
	datac => \OP~combout\(6),
	datad => \Result~2_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X27_Y2_N22
\Selector4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~8_combout\ = (\Selector4~2_combout\) # ((\Selector4~5_combout\) # ((\Selector4~7_combout\) # (\Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Selector4~5_combout\,
	datac => \Selector4~7_combout\,
	datad => \Selector4~3_combout\,
	combout => \Selector4~8_combout\);

-- Location: LCFF_X27_Y2_N23
\Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector4~8_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X28_Y1_N28
\Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\A~combout\(4) & (((\Equal4~1_combout\ & !\B~combout\(4))) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \Equal4~1_combout\,
	datac => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X28_Y1_N20
\Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\Selector3~4_combout\) # ((\Equal5~1_combout\ & (\B~combout\(4) & \A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~4_combout\,
	datab => \Equal5~1_combout\,
	datac => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X28_Y1_N18
\Result~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~3_combout\ = \B~combout\(4) $ (\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \Result~3_combout\);

-- Location: LCCOMB_X29_Y1_N2
\Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (!\OP~combout\(4) & (\Result~3_combout\ & (\OP~combout\(6) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(4),
	datab => \Result~3_combout\,
	datac => \OP~combout\(6),
	datad => \Equal4~0_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X28_Y1_N8
\Selector3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~8_combout\ = (\Selector3~7_combout\) # ((\Selector3~2_combout\) # ((\Selector3~5_combout\) # (\Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~7_combout\,
	datab => \Selector3~2_combout\,
	datac => \Selector3~5_combout\,
	datad => \Selector3~3_combout\,
	combout => \Selector3~8_combout\);

-- Location: LCFF_X28_Y1_N9
\Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector3~8_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(4));

-- Location: LCCOMB_X27_Y1_N2
\Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\B~combout\(5) & ((\Equal7~0_combout\) # ((\Equal8~0_combout\ & \A~combout\(5))))) # (!\B~combout\(5) & ((\A~combout\(5) & (\Equal7~0_combout\)) # (!\A~combout\(5) & ((\Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Equal7~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \A~combout\(5),
	combout => \Selector2~6_combout\);

-- Location: LCCOMB_X29_Y2_N16
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\B~combout\(5) & ((\A~combout\(5) & (\Add0~9\ & VCC)) # (!\A~combout\(5) & (!\Add0~9\)))) # (!\B~combout\(5) & ((\A~combout\(5) & (!\Add0~9\)) # (!\A~combout\(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\B~combout\(5) & (!\A~combout\(5) & !\Add0~9\)) # (!\B~combout\(5) & ((!\Add0~9\) # (!\A~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X28_Y2_N28
\Selector2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~9_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Add0~10_combout\ & !\OP~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~10_combout\,
	datad => \OP~combout\(7),
	combout => \Selector2~9_combout\);

-- Location: LCCOMB_X27_Y1_N0
\Selector2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~7_combout\ = (\Selector2~6_combout\) # ((\Selector2~9_combout\) # ((!\B~combout\(5) & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Selector2~6_combout\,
	datac => \Selector2~9_combout\,
	datad => \Equal3~1_combout\,
	combout => \Selector2~7_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCCOMB_X27_Y1_N16
\Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\Selector2~4_combout\) # ((\A~combout\(5) & (\Equal5~1_combout\ & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~4_combout\,
	datab => \A~combout\(5),
	datac => \Equal5~1_combout\,
	datad => \B~combout\(5),
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X27_Y1_N26
\Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Result~4_combout\ & (!\OP~combout\(4) & (\Equal4~0_combout\ & \OP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~4_combout\,
	datab => \OP~combout\(4),
	datac => \Equal4~0_combout\,
	datad => \OP~combout\(6),
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X27_Y1_N18
\Selector2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~8_combout\ = (\Selector2~2_combout\) # ((\Selector2~7_combout\) # ((\Selector2~5_combout\) # (\Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \Selector2~7_combout\,
	datac => \Selector2~5_combout\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~8_combout\);

-- Location: LCFF_X27_Y1_N19
\Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector2~8_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X28_Y1_N0
\Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (\B~combout\(6) & ((\Equal7~0_combout\) # ((\Equal8~0_combout\ & \A~combout\(6))))) # (!\B~combout\(6) & ((\A~combout\(6) & (\Equal7~0_combout\)) # (!\A~combout\(6) & ((\Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \Equal7~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \A~combout\(6),
	combout => \Selector1~6_combout\);

-- Location: LCCOMB_X28_Y1_N10
\Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~7_combout\ = (\Selector1~9_combout\) # ((\Selector1~6_combout\) # ((!\B~combout\(6) & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~9_combout\,
	datab => \Selector1~6_combout\,
	datac => \B~combout\(6),
	datad => \Equal3~1_combout\,
	combout => \Selector1~7_combout\);

-- Location: LCCOMB_X27_Y1_N14
\Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Result~5_combout\ & (!\OP~combout\(4) & (\Equal4~0_combout\ & \OP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~5_combout\,
	datab => \OP~combout\(4),
	datac => \Equal4~0_combout\,
	datad => \OP~combout\(6),
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X28_Y1_N30
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\A~combout\(6) & (((\Equal4~1_combout\ & !\B~combout\(6))) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \Equal4~1_combout\,
	datac => \B~combout\(6),
	datad => \A~combout\(6),
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X27_Y1_N8
\Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~8_combout\ = (\Selector1~5_combout\) # ((\Selector1~7_combout\) # ((\Selector1~3_combout\) # (\Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~5_combout\,
	datab => \Selector1~7_combout\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~8_combout\);

-- Location: LCFF_X27_Y1_N9
\Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector1~8_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(6));

-- Location: LCCOMB_X28_Y1_N16
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\B~combout\(7) & ((\Equal7~0_combout\))) # (!\B~combout\(7) & (\Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \Equal3~1_combout\,
	datac => \Equal7~0_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X29_Y2_N20
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B~combout\(7) $ (\Add0~13\ $ (\A~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datad => \A~combout\(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X29_Y1_N10
\Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\Selector0~5_combout\) # ((\Selector0~3_combout\) # ((\Equal0~2_combout\ & \Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~5_combout\,
	datab => \Selector0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~14_combout\,
	combout => \Selector0~6_combout\);

-- Location: LCCOMB_X28_Y3_N14
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \B~combout\(7) $ (\Add2~13\ $ (!\A~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datad => \A~combout\(7),
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X29_Y3_N30
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \B~combout\(7) $ (\Add1~13\ $ (!\A~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datad => \A~combout\(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X28_Y3_N18
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector6~4_combout\ & ((\Add2~14_combout\) # ((\Selector8~0_combout\ & \Add1~14_combout\)))) # (!\Selector6~4_combout\ & (((\Selector8~0_combout\ & \Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~4_combout\,
	datab => \Add2~14_combout\,
	datac => \Selector8~0_combout\,
	datad => \Add1~14_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X28_Y1_N22
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\A~combout\(7) & ((\Equal7~0_combout\) # ((\B~combout\(7) & \Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \Equal7~0_combout\,
	datac => \A~combout\(7),
	datad => \Equal5~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X28_Y1_N26
\Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = (\Selector0~0_combout\) # ((\Selector0~6_combout\) # ((\Selector0~2_combout\) # (\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector0~6_combout\,
	datac => \Selector0~2_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~7_combout\);

-- Location: LCFF_X28_Y1_N27
\Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector0~7_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(7));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Neg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Neg~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Neg);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(0));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(1));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(2));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(3));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(0));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(3));
END structure;


