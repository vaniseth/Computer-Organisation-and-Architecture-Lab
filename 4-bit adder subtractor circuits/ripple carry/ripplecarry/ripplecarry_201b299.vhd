----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:47 02/21/2023 
-- Design Name: 
-- Module Name:    ripplecarry_201b299 - Behavioral 
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

entity ripplecarry_201b299 is
    Port ( A0, A1, A2,A3 : in  STD_LOGIC;
           B0,B1,B2,B3 : in  STD_LOGIC;
           C0 : in  STD_LOGIC;
           S0, S1,S2,S3 : out  STD_LOGIC;
           C4 : out  STD_LOGIC);
end ripplecarry_201b299;

architecture structural of ripplecarry_201b299 is

component exp3_FA 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Sum  : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end component;
signal C1,C2,C3: STD_LOGIC;
begin
FA0: exp3_FA port map(A0,B0,C0,S0,C1);
FA1: exp3_FA port map(A1,B1,C1,S1,C2);
FA2: exp3_FA port map(A2,B2,C2,S2,C3);
FA3: exp3_FA port map(A3,B3,C3,S3,C4);

end structural;

