----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:47 01/31/2023 
-- Design Name: 
-- Module Name:    HalfSubtractor_201b299 - Behavioral 
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

entity HalfSubtractor_201b299 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Difference  : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end HalfSubtractor_201b299;

architecture Behavioral of HalfSubtractor_201b299 is

begin
	process(A,B)
	begin
		if(A = '0' and B = '0')then
			Difference <= '0';
			Borrow <= '0';
		elsif(A = '0' and B = '1')then
			Difference <= '1';
			Borrow <= '1';
		elsif(A = '1' and B = '0')then
			Difference <= '1';
			Borrow <= '0';
		else
			Difference <= '0';
			Borrow <= '0';
		end if;
	end process;	
end Behavioral;

