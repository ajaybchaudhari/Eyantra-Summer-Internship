---------------------------------------------------------------------------------
-- File:				And_Gate.vhd
-- Description:	This is an implementation of a simple logical And Gate using a 
-- 					dataflow architecture.
---------------------------------------------------------------------------------
-- Libraries
LIBRARY 	IEEE;
USE 		IEEE.STD_LOGIC_1164.ALL;
 

-- Entity Declaration
-- This is where all the Inputs & Outputs are specified for our AND gate
ENTITY AND_GATE IS
	PORT(
			A		: IN STD_LOGIC;
			B		: IN STD_LOGIC;

			C		: OUT STD_LOGIC
			);
			
		END AND_GATE;
 
-- Architecture Body
-- This is where we describe our logical expression for AND gate
ARCHITECTURE BEHAVIOURAL OF AND_GATE IS

	BEGIN
		C <= A AND B;
 
END BEHAVIOURAL;
