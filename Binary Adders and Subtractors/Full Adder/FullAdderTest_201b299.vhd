--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:44:25 01/31/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 2/exercise3_201b299/FullAdder/FullAdderTest_201b299.vhd
-- Project Name:  XOR_201b299
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder_201b299
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
 
ENTITY FullAdderTest_201b299 IS
END FullAdderTest_201b299;
 
ARCHITECTURE behavior OF FullAdderTest_201b299 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullAdder_201b299
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder_201b299 PORT MAP (
          A => A,
          B => B,
          C => C,
          Sum => Sum,
          Carry => Carry
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
      A <= '0'; B<= '0'; C<= '0';
		wait for 100 ns;
      A <= '0'; B<= '0'; C<= '1';
		wait for 100 ns;
      A <= '0'; B<= '1'; C<= '0';
		wait for 100 ns;
      A <= '0'; B<= '1'; C<= '1';
		wait for 100 ns;
      A <= '1'; B<= '0'; C<= '0';
		wait for 100 ns;
      A <= '1'; B<= '0'; C<= '1';
		wait for 100 ns;
      A <= '1'; B<= '1'; C<= '0';
		wait for 100 ns;
      A <= '1'; B<= '1'; C<= '1';
		wait for 100 ns;
		

      -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
