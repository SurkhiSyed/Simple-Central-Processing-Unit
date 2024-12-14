LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU3 IS
PORT (
    Clock : IN STD_LOGIC;
    OP: IN UNSIGNED(3 DOWNTO 0);
    R1: OUT UNSIGNED(3 DOWNTO 0)  -- lower 4 bits of 8-bit Result
);
END ALU3;

ARCHITECTURE Behavior OF ALU3 IS
    SIGNAL Result: UNSIGNED(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL onecount: INTEGER := 0;  -- to count number of 1's in OP

BEGIN

PROCESS (Clock)
BEGIN
    IF ((Clock) = '1') THEN
        -- Count number of 1's in OP
        onecount <= 0;
        FOR i IN 0 TO 3 LOOP
            IF (OP(i) = '1') THEN
                onecount <= onecount + 1;
            END IF;
        END LOOP;

        -- Check if the number of 1's is even or odd
        IF (onecount = 2) THEN
            Result <= "1111";  -- If equal parity, assign 1111 to  4 bits
        ELSE
            Result <= "0000";  -- Else assign 0000 to  4 bits
        END IF;

    END IF;
END PROCESS;

-- Assign lower 4 bits of Result to R1
R1 <= Result(3 DOWNTO 0);

END Behavior;
