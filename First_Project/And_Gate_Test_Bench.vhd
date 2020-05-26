LIBRARY 	IEEE;
USE 		IEEE.STD_LOGIC_1164.ALL;

--defining the entity
ENTITY And_Gate_Test_Bench IS									
END And_Gate_Test_Bench;

--defining the architecture
ARCHITECTURE BEHAVIOURAL OF And_Gate_Test_Bench IS 
    COMPONENT AND_GATE
		PORT(
				A		: IN STD_LOGIC;		--Switch 1
				B		: IN STD_LOGIC;		--Switch 2

				C		: OUT STD_LOGIC		--LED Output
				);
    END COMPONENT;   
   signal A : STD_LOGIC := '0';			--Stimulus signal for switch 1
   signal B : STD_LOGIC := '0';			--Stimulus signal for switch 2
   signal C : STD_LOGIC;					--Output signal
	BEGIN
--defining unit under test i.et And_gate
	uut: AND_GATE PORT MAP (
									A => A,
									B => B,
									C => C
									);
			stim_proc: process				--begining stimulation process
			 BEGIN
				 A <= '0';
				 B <= '0';
				 WAIT FOR 50 ns;
				 A <= '0';
				 B <= '1';
				 WAIT FOR 50 ns;
				 A <= '1';
				 B <= '0';
				 WAIT FOR 50 ns;
				 A <= '1';
				 B <= '1'; 
				 WAIT FOR 50 ns;
				 WAIT;
			 END PROCESS;
END BEHAVIOURAL;

