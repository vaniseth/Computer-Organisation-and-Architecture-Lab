----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:38 02/28/2023 
-- Design Name: 
-- Module Name:    MUX2x1_201b299 - Behavioral 
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

entity MUX2x1_201b299 is
    Port ( Inp : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC_VECTOR (0 downto 0);
           Output : out  STD_LOGIC);
end MUX2x1_201b299;

architecture Behavioral of MUX2x1_201b299 is

begin
Output <= (not S(0) and Inp(0))
				or (S(0) and Inp(1));

end Behavioral;

