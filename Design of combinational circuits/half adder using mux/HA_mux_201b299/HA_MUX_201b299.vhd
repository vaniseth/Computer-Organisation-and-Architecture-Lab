----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:57 02/21/2023 
-- Design Name: 
-- Module Name:    HA_MUX_201b299 - Behavioral 
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

entity HA_MUX_201b299 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end HA_MUX_201b299;

architecture structural of HA_MUX_201b299 is

begin

O <= (not Sel(1) and (not Sel(0)) and I(0)) 
		or (not Sel(1) and Sel(0) and I(1))
		or (Sel(1) and (not Sel(0)) and I(2))
		or (Sel(1) and Sel(0) and I(3));

end structural;

