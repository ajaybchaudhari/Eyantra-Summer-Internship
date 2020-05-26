library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity two_way_switch is
    Port ( A : in  STD_LOGIC;      -- XOR gate input 1
           B : in  STD_LOGIC;      -- XOR gate input 2
			  
           OP : out  STD_LOGIC     -- XOR gate output
			);
end two_way_switch;

architecture Behavioral of two_way_switch is
begin
OP <= A xor B;    -- 2 input XOR gate
end Behavioral;