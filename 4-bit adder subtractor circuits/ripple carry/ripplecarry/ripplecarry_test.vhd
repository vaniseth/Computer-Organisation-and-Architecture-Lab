--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:27:38 02/21/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 3/ripple carry/ripplecarry/ripplecarry_test.vhd
-- Project Name:  ripplecarry
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ripplecarry_201b299
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
 
ENTITY ripplecarry_test IS
END ripplecarry_test;
 
ARCHITECTURE behavior OF ripplecarry_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ripplecarry_201b299
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         A3 : IN  std_logic;
         B0 : IN  std_logic;
         B1 : IN  std_logic;
         B2 : IN  std_logic;
         B3 : IN  std_logic;
         C0 : IN  std_logic;
         S0 : OUT  std_logic;
         S1 : OUT  std_logic;
         S2 : OUT  std_logic;
         S3 : OUT  std_logic;
         C4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal B0 : std_logic := '0';
   signal B1 : std_logic := '0';
   signal B2 : std_logic := '0';
   signal B3 : std_logic := '0';
   signal C0 : std_logic := '0';

 	--Outputs
   signal S0 : std_logic;
   signal S1 : std_logic;
   signal S2 : std_logic;
   signal S3 : std_logic;
   signal C4 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripplecarry_201b299 PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          B0 => B0,
          B1 => B1,
          B2 => B2,
          B3 => B3,
          C0 => C0,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          C4 => C4
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
		C0 <= '0';
		A3<= '1';A2<='1';A1<='0';A0<='0';
		B3<= '0';B2<='1';B1<='1';B0<='0';
      wait for 100 ns;	

      -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
