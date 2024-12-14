LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU2 IS
PORT (Clock : IN STD_LOGIC ;
A ,B : IN UNSIGNED(7 DOWNTO 0);
OP: IN UNSIGNED(15 downto 0);
Neg: OUT STD_LOGIC;
R1: OUT UNSIGNED(3 DOWNTO 0);--lower 4bits of 8bits Result
R2: OUT UNSIGNED(3 DOWNTO 0));--higher 4bits of 8bits Result
END ALU2;

ARCHITECTURE Behavior OF ALU2 IS
SIGNAL Reg1, Reg2, Result: UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL Reg4: UNSIGNED(0 TO 7);
SIGNAL Sum : UNSIGNED(8 DOWNTO 0);
SIGNAL  compReg2: UNSIGNED(7 DOWNTO 0);

BEGIN
Reg1 <= A;
Reg2 <= B;
PROCESS (Clock, OP,A,B)
BEGIN
IF (rising_edge(Clock)) THEN
CASE OP IS
WHEN "0000000000000001" => --funtion 1 - shift 2 units
Result <= "11" & reg1(7) & reg1(6) & reg1(5) & reg1(4) & reg1(3) & reg1(2);
WHEN "0000000000000010"  =>  -- Function 2 - subtraction with binary increment by 4
    if ((Reg1 + "00000100") < Reg2) then
        neg <= '1';
        -- Original subtraction and logic, then add 4 in binary (00000100)
        Result <= NOT((Reg1 + "00000100" +  NOT(Reg2) + "00000001")) + 00000001; 
    else
        neg <= '0';
        -- Original subtraction and logic, then add 4 in binary (00000100)
        Result <= (Reg1 - Reg2) + "00000100";  -- Add 4 in binary after subtraction
    end if;

WHEN "0000000000000100" =>--Function 3 - Max(A,B)
neg <= '0';
if (Reg1 < Reg2) then
        Result <= (Reg2); 
    else
        Result <= (Reg1); 
    end if;
WHEN "0000000000001000" =>--Function 4 -Swap upper 4 bitds of A with lower of B
neg <= '0';
Result(7 DOWNTO 4) <= reg2(3 DOWNTO 0);
Result(3 DOWNTO 0) <= reg1(3 DOWNTO 0);
WHEN "0000000000010000" =>--Function 5 -Add 1
neg <= '0';
Result <= (Reg1 + 00000001);
WHEN "0000000000100000" =>--Function 6 -AND
neg <= '0';
Result <= (Reg1 AND Reg2);
WHEN "0000000001000000" =>--Function 7 -Invert upper 4 bits of A
neg <= '0';
Result(7 DOWNTO 4) <= NOT Reg1(7 DOWNTO 4);
Result(3 DOWNTO 0) <= Reg1(3 DOWNTO 0);
WHEN "0000000010000000" =>--Function 8 -Rotate B to left by 3 bits
neg <= '0';
Result <= reg2(4) & reg2(3) & reg2(2) & reg2(1) & reg2(0) & reg2(7) & reg2(6) & reg2(5);
WHEN OTHERS =>-- Don't care
END CASE;
END IF;
END PROCESS;
R1 <= Result(3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);

END Behavior;