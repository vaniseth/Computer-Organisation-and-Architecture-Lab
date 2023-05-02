----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:59 05/02/2023 
-- Design Name: 
-- Module Name:    MOD6_BinaryCounter - Behavioral 
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
entity MOD6_BinaryCounter is
    Port (Reset : inout  STD_LOGIC;
           clk : in  STD_LOGIC;
           Qa,Qb,Qc : inout  STD_LOGIC);
end MOD6_BinaryCounter;

architecture Behavioral of MOD6_BinaryCounter is
component D_FlipFlop
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component D_FlipFlop;
begin
Reset <= Qb and Qc;
DFF1: D_FlipFlop port map((not Qa), Reset, clk,Qa);
DFF2: D_FlipFlop port map((not Qb), Reset, (not Qa),Qb);
DFF3: D_FlipFlop port map((not Qc), Reset,(not Qb),Qc);
end Behavioral;

