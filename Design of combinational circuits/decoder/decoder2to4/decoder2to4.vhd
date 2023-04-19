----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:53 03/14/2023 
-- Design Name: 
-- Module Name:    decoder2to4 - Structural 
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
entity decoder2to4 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           En : in  STD_LOGIC;
           I : out  STD_LOGIC_VECTOR (3 downto 0));
end decoder2to4;

architecture Structural of decoder2to4 is

begin
I(0) <= (not A(1) and (not A(0))) and En ;
I(1) <= (not A(1) and A(0)) and En;
I(2) <= (A(1) and (not A(0))) and En;
I(3) <= (A(1) and A(0)) and En;

end Structural;

