----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:41 01/17/2023 
-- Design Name: 
-- Module Name:    exp2_201b299 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp2_201b299 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC;
           X : in  STD_LOGIC;
           Y : in  STD_LOGIC);
end exp2_201b299;

architecture Behavioral of exp2_201b299 is

begin
	process (A,B,X,Y)
	begin
		if(X = '0' and Y = '0') then
			C <= A and B;
		elsif (X = '1' and Y = '0') then
			C <= A or B;
		elsif (X = '0' and Y = '1') then
			C <= A nor B;
		else 
			C <= A nand B;
		end if;
	end process;
end Behavioral;

