--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:09:20 03/14/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 4/decoder/decoder2to4/decoderTest.vhd
-- Project Name:  decoder2to4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder3to8
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
 
ENTITY decoderTest IS
END decoderTest;
 
ARCHITECTURE behavior OF decoderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder3to8
    PORT(
         Inp : IN  std_logic_vector(2 downto 0);
         Output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Inp : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder3to8 PORT MAP (
          Inp => Inp,
          Output => Output
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
      Inp <= "000";
		wait for 100 ns;	
      Inp <= "001";
		wait for 100 ns;	
      Inp <= "010";
		wait for 100 ns;	
      Inp <= "011";
		wait for 100 ns;	
      Inp <= "100";
		wait for 100 ns;	
      Inp <= "101";
		wait for 100 ns;	
      Inp <= "110";
		wait for 100 ns;	
      Inp <= "111";
		wait for 100 ns;	


      -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
