--------------------------------------------------------------------------------------
-- File:				SERVO_CONTROL.vhd
-- Description:	This is an implementation of a RC Servo motor control
--						here we generate pwm signal for three shaft modes 0,90,180
--						degrees.  
--------------------------------------------------------------------------------------
-- Libraries
LIBRARY 	IEEE;
USE 		IEEE.STD_LOGIC_1164.ALL;
USE 		IEEE.NUMERIC_STD.ALL;

ENTITY SERVO_CONTROL IS
    PORT (
        CLK   : IN  STD_LOGIC;
        RESET : IN  STD_LOGIC;
		  SWITCH   	: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
        SERVO : OUT STD_LOGIC
    );
END SERVO_CONTROL;

ARCHITECTURE BEHAVIORAL OF SERVO_CONTROL IS
    
    SIGNAL CNTR 		: UNSIGNED(10 DOWNTO 0);			-- COUNTING 1280 STEPS BETWEEN 2MS
	 
	 SIGNAL POSITION	: UNSIGNED(6 DOWNTO 0);
    
    SIGNAL PWMT		: UNSIGNED(7 DOWNTO 0);				-- TEMPORARY SIGNAL USED FOR PWM PULSE.
BEGIN

		PROCESS(POSITION ,RESET, CLK)
		BEGIN
			CASE SWITCH IS
				WHEN "000" =>
					POSITION <= "0000000"; ---0 DEGREE
				
				WHEN "010" =>
					POSITION <= "0111111"; ---90 DEGREE
	
				WHEN "001" =>
					POSITION <= "1111111"; ---180 DEGREE
					
				WHEN OTHERS =>
					POSITION <= "0000000"; ---null
			
			END CASE;
			
			PWMT <= UNSIGNED('0' & POSITION) + 32;		-- MINIMUM VALUE SHOULD BE 0.5MS.   
			IF (RESET = '1') THEN
				CNTR <= (OTHERS => '0');
			ELSIF RISING_EDGE(CLK) THEN
            IF (CNTR = 1279) THEN
                CNTR <= (OTHERS => '0');
            ELSE
                CNTR <= CNTR + 1;
            END IF;
        END IF;
    END PROCESS;
    -- OUTPUT SIGNAL FOR THE SERVOMOTOR.
    SERVO <= '1' WHEN (CNTR < PWMT) ELSE '0';
END BEHAVIORAL;