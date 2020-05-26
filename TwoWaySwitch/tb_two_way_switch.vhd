LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_two_way_switch IS
END tb_two_way_switch;
ARCHITECTURE Behavioral OF tb_two_way_switch IS 
    COMPONENT two_way_switch
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         OP : OUT  std_logic
        );
    END COMPONENT;
    
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal OP : std_logic;
BEGIN

 uut: two_way_switch PORT MAP (
          A => A,
          B => B,
          OP => OP
        );
   stim_proc: process
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
END behavioral;



