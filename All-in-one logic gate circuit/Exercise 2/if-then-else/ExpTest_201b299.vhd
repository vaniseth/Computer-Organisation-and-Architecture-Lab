--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:24:52 01/24/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab2/ExpTest_201b299.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: exp2_201b299
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
 
ENTITY ExpTest_201b299 IS
END ExpTest_201b299;
 
ARCHITECTURE behavior OF ExpTest_201b299 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT exp2_201b299
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : OUT  std_logic;
         X : IN  std_logic;
         Y : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal X : std_logic := '0';
   signal Y : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: exp2_201b299 PORT MAP (
          A => A,
          B => B,
          C => C,
          X => X,
          Y => Y
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--	<clock> <= '0';
--		ait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= '0'; B<= '1';
		X <= '0'; Y<= '0';
		wait for 100 ns;
      A <= '0'; B<= '1';
		X <= '0'; Y<= '1';
		wait for 100 ns;
      A <= '0'; B<= '1';
		X <= '1'; Y<= '0';
		wait for 100 ns;
      A <= '0'; B<= '1';
		X <= '1'; Y<= '1';
		wait for 100 ns;

      -- wait for <clock>_period*10;
      -- insert stimulus here 
      wait;
   end process;

END;
