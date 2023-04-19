----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:30 03/21/2023 
-- Design Name: 
-- Module Name:    logicGates - Behavioral 
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

entity logicGates is
generic (n:  integer := 2);
    Port ( A,B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Selection : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end logicGates;

architecture Behavioral of logicGates is
component mux4to1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC); 
end component;

signal S1, S2, S3, S4 :STD_LOGIC_VECTOR (n-1 downto 0);
begin
F: for i in 0 to n-1 generate 
S1(i) <= A(i) and B(i); 
S2(i) <= A(i) or B(i);
S3(i) <= A(i) xor B(i);
S4(i) <= not(A(i)); 
          
M1: Mux4to1 port map (S1(i),S2(i),S3(i), S4(i), Selection, Output(i));
end generate; 
end Behavioral;

