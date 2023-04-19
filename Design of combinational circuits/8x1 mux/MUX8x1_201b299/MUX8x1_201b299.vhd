----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:56 02/28/2023 
-- Design Name: 
-- Module Name:    MUX8x1_201b299 - Structural 
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

entity MUX8x1_201b299 is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           Selection : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end MUX8x1_201b299;

architecture Structural of MUX8x1_201b299 is

component mux4to1_201b299 
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end component mux4to1_201b299;

component MUX2x1_201b299 
    Port ( Inp : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC_VECTOR (0 downto 0);
           Output : out  STD_LOGIC);
end component MUX2x1_201b299;

signal Sig: STD_LOGIC_VECTOR (1 downto 0);

begin
-- porting
M1 : mux4to1_201b299 port map(A(3 downto 0), Selection(1 downto 0), Sig(0));
M2 : mux4to1_201b299 port map(A(7 downto 4), Selection(1 downto 0), Sig(1));
M3 : MUX2x1_201b299 port map(Sig(1 downto 0), Selection(2 downto 2), Y);

end Structural;

