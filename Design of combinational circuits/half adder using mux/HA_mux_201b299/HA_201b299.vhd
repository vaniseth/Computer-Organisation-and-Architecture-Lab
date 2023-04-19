----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:38:38 02/28/2023 
-- Design Name: 
-- Module Name:    HA_201b299 - Behavioral 
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

entity HA_201b299 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           Sum  : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end HA_201b299;

architecture Structural of HA_201b299 is

component HA_MUX_201b299 
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end component HA_MUX_201b299;

begin
-- porting
M1: HA_MUX_201b299 port map ("0110", A, Sum ); 
-- sum is 0110 thus input is connected to Sum, then Sel is connected to input in the figure and finally Sum is the output.
M2 : HA_MUX_201b299 port map("1000", A, Carry);

end Structural;

