--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:46:41 05/02/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 7/MOD6_BinaryCounter/MOD6_Test.vhd
-- Project Name:  MOD6_BinaryCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MOD6_BinaryCounter
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
 
ENTITY MOD6_Test IS
END MOD6_Test;
 
ARCHITECTURE behavior OF MOD6_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MOD6_BinaryCounter
    PORT(
         Reset : INOUT  std_logic;
         clk : IN  std_logic;
         Qa : INOUT  std_logic;
         Qb : INOUT  std_logic;
         Qc : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

	--BiDirs
   signal Reset : std_logic;
   signal Qa : std_logic;
   signal Qb : std_logic;
   signal Qc : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MOD6_BinaryCounter PORT MAP (
          Reset => Reset,
          clk => clk,
          Qa => Qa,
          Qb => Qb,
          Qc => Qc
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Qa<='1';
		Qb<='0';
		Qc<='0';
		Reset <='0';
      wait for 100 ns;	
		Qa<='0';
		Qb<='1';
		Qc<='0';
		Reset <='1';
      wait for 100 ns;	
		Qa<='1';
		Qb<='1';
		Qc<='0';
		Reset <='0';
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
