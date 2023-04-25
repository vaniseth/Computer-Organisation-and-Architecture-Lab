----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:26 04/18/2023 
-- Design Name: 
-- Module Name:    ALU_design - Behavioral 
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

entity ALU_design is
   generic (n:  integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in   STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end ALU_design;

architecture Structural of ALU_design is
component Arithmetic_component is
generic (n:  integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component logic_unit is
generic (n:  integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component shift_unit is
generic (n:  integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component MUX_2x1 is
generic (n:  integer := 4);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
signal S1, S2, S3, S4 :STD_LOGIC_VECTOR (n-1 downto 0);
begin
AU:Arithmetic_component port map (A,B, sel(1 downto 0), S1);
LU: logic_unit port map(A, B, Sel(0), S2);
SU: shift_unit port map(A, B, Sel(0), S3);         
M1: MUX_2x1 port map (S2, S3, Sel (1), S4);
M2: MUX_2x1 port map (S1, S4, Sel (2), Y);

end Structural;

