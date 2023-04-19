--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:02:05 02/28/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 4/half adder using mux/HA_mux_201b299/HATest_201b299.vhd
-- Project Name:  HA_mux_201b299
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HA_201b299
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
 
ENTITY HATest_201b299 IS
END HATest_201b299;
 
ARCHITECTURE behavior OF HATest_201b299 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HA_201b299
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HA_201b299 PORT MAP (
          A => A,
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
      A <= "00";
      wait for 100 ns;	
      A <= "01";
      wait for 100 ns;	
      A <= "10";
      wait for 100 ns;	
      A <= "11";
      wait for 100 ns;	


      -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
