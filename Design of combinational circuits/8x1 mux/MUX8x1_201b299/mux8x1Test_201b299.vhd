--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:48:09 02/28/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 4/8x1 mux/MUX8x1_201b299/mux8x1Test_201b299.vhd
-- Project Name:  MUX8x1_201b299
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX8x1_201b299
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
 
ENTITY mux8x1Test_201b299 IS
END mux8x1Test_201b299;
 
ARCHITECTURE behavior OF mux8x1Test_201b299 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX8x1_201b299
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         Selection : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal Selection : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX8x1_201b299 PORT MAP (
          A => A,
          Selection => Selection,
          Y => Y
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
      A <= "01100011";
		Selection  <= "000";
      wait for 100 ns;	
		Selection  <= "001";
      wait for 100 ns;	
		Selection  <= "010";
      wait for 100 ns;	
		Selection  <= "011";
      wait for 100 ns;	
		Selection  <= "100";
      wait for 100 ns;	
		Selection  <= "101";
      wait for 100 ns;	
		Selection  <= "110";
      wait for 100 ns;	
		Selection  <= "111";
      wait for 100 ns;	

      -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
