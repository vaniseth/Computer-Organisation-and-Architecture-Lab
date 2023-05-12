----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:13 05/02/2023 
-- Design Name: 
-- Module Name:    Serial_in_serial_out - Behavioral 
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

entity Serial_in_serial_out is
    Port ( D : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           O : out  STD_LOGIC);
end Serial_in_serial_out;

architecture Behavioral of Serial_in_serial_out is

component D_FlipFlop
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component D_FlipFlop;
signal S1, S2, S3 :STD_LOGIC;
begin
DFF1: D_FlipFlop port map(D, Reset, clk, S1);
DFF2: D_FlipFlop port map(S1, Reset, clk, S2);
DFF3: D_FlipFlop port map(S2, Reset, clk, S3);
DFF4: D_FlipFlop port map(S3, Reset, clk, O);
end Behavioral;

