--VHDL TEST BENCH
--INCLUDING LIBRARIES
LIBRARY 	IEEE;
USE 		IEEE.STD_LOGIC_1164.ALL;

--ENTITY DECLARATION
ENTITY UNIVERSAL_SHIFT_REGISTER_TB IS
END UNIVERSAL_SHIFT_REGISTER_TB;

--ARCHITECTURE DECLARATION
ARCHITECTURE BEHAVIOR OF UNIVERSAL_SHIFT_REGISTER_TB IS
-- COMPONENT DECLARATION FOR THE UNIT UNDER TEST (UUT)
	COMPONENT UNIVERSAL_SHIFT_REGISTER
		PORT (
					CLOCK, CLEAR, SL_IN, SR_IN : IN BIT;
					MODE 								: IN BIT_VECTOR 	 ( 1 DOWNTO 0 );
					DATA 								: IN BIT_VECTOR 	 ( 3 DOWNTO 0 );
					Q 									: INOUT BIT_VECTOR ( 3 DOWNTO 0 )
				);
	END COMPONENT;
	--INPUTS
	SIGNAL CLEAR : BIT:= '0';
	SIGNAL CLOCK : BIT:= '0';
	SIGNAL SL_IN : BIT:= '0';
	SIGNAL SR_IN : BIT:= '0';
	SIGNAL MODE : BIT_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL DATA : BIT_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	--OUTPUTS
	SIGNAL Q: BIT_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	BEGIN
	-- INSTANTIATE THE UNIT UNDER TEST (UUT)
		UUT: UNIVERSAL_SHIFT_REGISTER PORT MAP (
						CLEAR	=> CLEAR,
						CLOCK => CLOCK,
						SL_IN => SL_IN,
						SR_IN => SR_IN,
						MODE 	=> MODE,
						DATA 	=> DATA,
						Q 		=> Q
						);
						
		-- CLOCK PROCESS DEFINITIONS
		CLK_PROCESS :PROCESS
		BEGIN
			CLOCK <= '0';
			WAIT FOR 5 NS;
			CLOCK <= '1';
			WAIT FOR 5 NS;
		END PROCESS;
			
		-- STIMULUS PROCESS
		STIM_PROC: PROCESS
			BEGIN
			--DIFFERENT COMBINATIONS OF INPUT
			CLEAR <= '0';
			WAIT FOR 50 NS;
			CLEAR <= '1';
			SR_IN <= '1';
			MODE <= "01";
			WAIT FOR 10 NS;
			SR_IN <= '0';
			WAIT FOR 10 NS;
			SR_IN <= '1';
			WAIT FOR 10 NS;
			SR_IN <= '0';
			WAIT FOR 10 NS;
			SL_IN <= '1';
			MODE <= "00";
			WAIT FOR 50 NS;
			MODE <= "10";
			SL_IN <= '1';
			WAIT FOR 10 NS;
			SL_IN <= '0';
			WAIT FOR 10 NS;
			SL_IN <= '0';
			WAIT FOR 10 NS;
			MODE <= "11";
			WAIT FOR 5 NS;
			DATA <= "1111";
			WAIT FOR 100 NS;
		END PROCESS;
END;