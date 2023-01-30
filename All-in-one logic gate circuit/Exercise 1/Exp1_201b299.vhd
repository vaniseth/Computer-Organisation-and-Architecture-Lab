----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:19:33 01/17/2023 
-- Design Name: 
-- Module Name:    Exp1_201b299 - Dataflow 
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

entity Exp1_201b299 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC;
           D : out  STD_LOGIC;
           E : out  STD_LOGIC;
           F : out  STD_LOGIC;
           G : out  STD_LOGIC);
end Exp1_201b299;

architecture Dataflow of Exp1_201b299 is

begin

C <= not A;
D <= A and B;
E <= A or B;
F <= A nand B;
G <= A xor B;

end Dataflow;

