----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:18 03/14/2023 
-- Design Name: 
-- Module Name:    decoder3to8 - Structural 
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

entity decoder3to8 is
    Port ( Inp : in  STD_LOGIC_VECTOR (2 downto 0);
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end decoder3to8;

architecture Structural of decoder3to8 is

component decoder2to4 
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           En : in  STD_LOGIC;
           I : out  STD_LOGIC_VECTOR (3 downto 0));
end component decoder2to4;

begin

D1: decoder2to4 port map(Inp(1 downto 0),not Inp(2), Output(3 downto 0));
D2: decoder2to4 port map(Inp(1 downto 0),Inp(2), Output(7 downto 4));

end Structural;

