----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:07 02/21/2023 
-- Design Name: 
-- Module Name:    ripplecarry_generic_201b299 - Behavioral 
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

entity ripplecarry_generic_201b299 is
generic (N:  integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           C : inout  STD_LOGIC_VECTOR (N downto 0);
           S : out  STD_LOGIC_VECTOR (N-1 downto 0));
end ripplecarry_generic_201b299;

architecture Behavioral of ripplecarry_generic_201b299 is
component exp3_FA 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Sum  : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end component;

begin
C(0) <= '0';
F: for i in 0 to N-1 generate            
FA: exp3_FA  port map (A(i), B(i), C(i), S(i), C(i+1));
end generate;

end Behavioral;

