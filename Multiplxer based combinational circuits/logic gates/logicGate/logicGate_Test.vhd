--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:40:52 03/21/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 5/logic gates/logicGate/logicGate_Test.vhd
-- Project Name:  logicGate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: logicGates
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
 
ENTITY logicGate_Test IS
END logicGate_Test;
 
ARCHITECTURE behavior OF logicGate_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logicGates
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         Selection : IN  std_logic_vector(1 downto 0);
         Output : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');
   signal Selection : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logicGates PORT MAP (
          A => A,
          B => B,
          Selection => Selection,
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
A <= "00";
B <= "10";
		
Selection <= "00";
wait for 100 ns;		
Selection <= "01";
wait for 100 ns;
Selection <= "10";
wait for 100 ns;
Selection <= "11";
wait for 100 ns;	



      -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
