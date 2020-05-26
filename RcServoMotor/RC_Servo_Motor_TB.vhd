LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
 
ENTITY RC_SERVO_MOTOR_TB IS
END RC_SERVO_MOTOR_TB;
 
ARCHITECTURE BEHAVIOR OF RC_SERVO_MOTOR_TB IS
    -- UNIT UNDER TEST.
    COMPONENT SERVO_CONTROL
				 PORT (
					  CLK   : IN  STD_LOGIC;
					  RESET : IN  STD_LOGIC;
					  SWITCH: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
					  SERVO : OUT STD_LOGIC
				 );
			END COMPONENT;

  
    SIGNAL CLK  			: STD_LOGIC := '0';
    SIGNAL RESET			: STD_LOGIC := '0';
	 SIGNAL SWITCH  		: STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
  
    SIGNAL SERVO 			: STD_LOGIC;
  
    CONSTANT CLK_PERIOD : TIME := 15625 NS;
BEGIN
    
    UUT: SERVO_CONTROL PORT MAP (CLK => CLK, RESET => RESET, SWITCH => SWITCH, SERVO => SERVO);


   CLK_PROCESS :PROCESS BEGIN
        CLK <= '0';
        WAIT FOR CLK_PERIOD/2;
        CLK <= '1';
        WAIT FOR CLK_PERIOD/2;
   END PROCESS;
 

    STIMULI: PROCESS BEGIN
        RESET <= '1';
        WAIT FOR 50 ns;
		  
        RESET <= '0';
        WAIT FOR 50 ns;
		  
        SWITCH <= "000";
        WAIT FOR 20 ms;
		  
        SWITCH <= "010";
        WAIT FOR 20 ms;
		  
        SWITCH <= "001";
		  WAIT FOR 20 ms;
		  assert FALSE Report "SImulation Finished" severity FAILURE;
        WAIT ;

		  END PROCESS;
END;