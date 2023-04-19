--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:05:07 02/21/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 3/adder subtractor/adderSub_201b299/adderSub_test.vhd
-- Project Name:  adderSub_201b299
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adderSub_201b299
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
 
ENTITY adderSub_test IS
END adderSub_test;
 
ARCHITECTURE behavior OF adderSub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adderSub_201b299
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : INOUT  std_logic_vector(4 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         Cin : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

	--BiDirs
   signal C : std_logic_vector(4 downto 0);

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adderSub_201b299 PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S,
          Cin => Cin
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
      Cin <= '0';
		A <= "1010";
		B <= "0111";
      wait for 100 ns;	

      Cin <= '1';
		A <= "1010";
		B <= "0111";
      wait for 100 ns;
      -- wait for <clock>_period*10;
      -- insert stimulus here 
      wait;
   end process;
END;
