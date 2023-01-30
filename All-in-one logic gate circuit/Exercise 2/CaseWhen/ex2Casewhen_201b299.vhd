----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:38 01/24/2023 
-- Design Name: 
-- Module Name:    ex2Casewhen_201b299 - Behavioral 
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

entity ex2Casewhen_201b299 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC;
           X : in  STD_LOGIC;
           Y : in  STD_LOGIC);
end ex2Casewhen_201b299;

architecture Behavioral of ex2Casewhen_201b299 is

begin
	process(X,Y,A,B)
	variable SEL: std_logic_vector(1 downto 0);
	begin
		SEL := X & Y;
		case SEL is
			when "00" => C <= A and B;
			when "01" => C <= A or B;
			when "10" => C <= A nand B;
			when others => C <= A nor B;
		end case;
	end process;
end Behavioral;

