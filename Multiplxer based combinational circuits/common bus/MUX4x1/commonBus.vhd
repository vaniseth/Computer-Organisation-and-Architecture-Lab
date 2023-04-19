----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:16 03/21/2023 
-- Design Name: 
-- Module Name:    commonBus - Behavioral 
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

entity commonBus is
generic (n:  integer := 4);
    Port ( A,B,C,D : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Selection : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end commonBus;

architecture Behavioral of commonBus is
component mux4x1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
			  
end component;

begin
F: for i in 0 to n-1 generate            
M1: Mux4x1 port map (A(i),B(i), C(i), D(i), Selection, Output(i));
end generate; 
end Behavioral;

