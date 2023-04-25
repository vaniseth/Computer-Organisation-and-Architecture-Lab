----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:54 04/18/2023 
-- Design Name: 
-- Module Name:    shift_unit - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_unit is
generic (n:  integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end shift_unit;

architecture Behavioral of shift_unit is

begin
process (A,B,Sel)
	begin 
	if (Sel ='0') then
	Y <= A(0) & A(n-1 downto 1);
	else
	Y <= B(n-2 downto 0)& '0';
	end if;
end process;
end Behavioral;

