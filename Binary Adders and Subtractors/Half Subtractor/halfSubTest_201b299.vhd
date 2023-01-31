--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:49 01/31/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 2/exercise2_201b299/halfSubtractor_201b299/halfSubTest_201b299.vhd
-- Project Name:  halfSubtractor_201b299
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HalfSubtractor_201b299
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY halfSubTest_201b299 IS
END halfSubTest_201b299;
 
ARCHITECTURE behavior OF halfSubTest_201b299 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HalfSubtractor_201b299
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Difference : OUT  std_logic;
         Borrow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Difference : std_logic;
   signal Borrow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HalfSubtractor_201b299 PORT MAP (
          A => A,
          B => B,
          Difference => Difference,
          Borrow => Borrow
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A <= '0'; B<= '0';
		wait for 100 ns;
		A <= '0'; B<= '1';
		wait for 100 ns;		
		A <= '1'; B<= '0';
		wait for 100 ns;		
		A <= '1'; B<= '1';
		wait for 100 ns;


      -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
