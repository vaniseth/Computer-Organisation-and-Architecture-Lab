----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:55 02/21/2023 
-- Design Name: 
-- Module Name:    adderSub_201b299 - Behavioral 
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

entity adderSub_201b299 is
generic (N: integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           C : inout  STD_LOGIC_VECTOR (N downto 0);
           S : out  STD_LOGIC_VECTOR (N-1 downto 0);
			  Cin : in STD_LOGIC);
end adderSub_201b299;

architecture Behavioral of adderSub_201b299 is
component exp3_FA
Port ( A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 C : in STD_LOGIC;
		 Sum : out STD_LOGIC;
		 Carry : out STD_LOGIC);
end component;

signal Sig : STD_LOGIC_VECTOR (N-1 downto 0);

begin
C(0) <= Cin;
F: for i in 0 to N-1 generate
	Sig(i) <= B(i) xor C(0);
	FA: exp3_FA port map (A(i), Sig(i), C(i), S(i), C(i+1));
	end generate;

end Behavioral;

