LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY seg2 IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
neg : IN STD_LOGIC;
leds, ledn : OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END seg2 ;

ARCHITECTURE Behavior OF seg2 IS
BEGIN
PROCESS ( bcd, neg )

BEGIN

IF (neg ='0') then
	ledn <= NOT("0000000");
end if;
if (neg = '1') then
	ledn <= NOT ("0000001");
END IF;

CASE bcd IS --abcdefg
WHEN "1111" =>leds <=  ("0111011");
WHEN "0000" =>leds <=  ("0010110");
WHEN OTHERS =>leds <= ("-------") ;
END CASE ;
END PROCESS ;
END Behavior ;