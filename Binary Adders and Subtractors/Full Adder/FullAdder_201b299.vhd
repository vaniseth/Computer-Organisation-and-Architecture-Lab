----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:03 01/31/2023 
-- Design Name: 
-- Module Name:    FullAdder_201b299 - Structural 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder_201b299 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end FullAdder_201b299;

architecture Structural of FullAdder_201b299 is

component XOR_201b299 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

component Or_201b299 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

component And_201b299 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

signal s1, s2, s3 : std_logic;

begin
	X1 : XOR_201b299 port map(A,B,s1);
	X2 : XOR_201b299 port map(s1,C,Sum);
	A1 : And_201b299 port map(s1,C,s2);
	A2 : And_201b299 port map (A,B,s3);
	O1 : Or_201b299 port map (s2,s3,carry);
end Structural;

