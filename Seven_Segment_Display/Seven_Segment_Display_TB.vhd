-- Libraries
LIBRARY 	IEEE;
USE 		IEEE.STD_LOGIC_1164.ALL;
 
ENTITY Seven_Segment_Display_TB IS
END Seven_Segment_Display_TB;

 
ARCHITECTURE behavior OF Seven_Segment_Display_TB IS
 
-- Component Declaration for the Unit Under Test (UUT) 
COMPONENT Seven_Segment_Display
	PORT(
			BCDNos			: IN STD_LOGIC_VECTOR  (3 DOWNTO 0);
			DisplayLEDs		: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
			);
	END COMPONENT;
 

SIGNAL BCDNos : STD_LOGIC_VECTOR  	  (3 DOWNTO 0); 							--INPUT BCD NO
SIGNAL DisplayLEDs : STD_LOGIC_VECTOR (6 DOWNTO 0);			   				--OUTPUT LED SIGNAL
 
BEGIN
-- Initiate the Unit Under Test (UUT)
		uut: Seven_Segment_Display PORT MAP (
								BCDNos 		=> BCDNos,
								DisplayLEDs => DisplayLEDs
								);
 
-- Stimulus process
		stim_proc: PROCESS
		BEGIN
			BCDNos <= "0000";
				WAIT FOR 100 ns;
				
			BCDNos <= "0001";
				WAIT FOR 100 ns;
				
			BCDNos <= "0010";
				WAIT FOR 100 ns;
				
			BCDNos <= "0011";
				WAIT FOR 100 ns;
				
			BCDNos <= "0100";
				WAIT FOR 100 ns;
				
			BCDNos <= "0101";
				WAIT FOR 100 ns;
				
			BCDNos <= "0110";
				WAIT FOR 100 ns;
				
			BCDNos <= "0111";
				WAIT FOR 100 ns;
				
			BCDNos <= "1000";
				WAIT FOR 100 ns;
				
			BCDNos <= "1001";
				WAIT FOR 100 ns;
				WAIT;
	END PROCESS;
END;