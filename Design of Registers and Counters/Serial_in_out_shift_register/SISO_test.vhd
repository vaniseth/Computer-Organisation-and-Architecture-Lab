--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:48:04 05/02/2023
-- Design Name:   
-- Module Name:   N:/Coa/lab 7/Serial_in_out_shift_register/SISO_test.vhd
-- Project Name:  Serial_in_out_shift_register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Serial_in_serial_out
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
 
ENTITY SISO_test IS
END SISO_test;
 
ARCHITECTURE behavior OF SISO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Serial_in_serial_out
    PORT(
         D : IN  std_logic;
         Reset : IN  std_logic;
         clk : IN  std_logic;
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal Reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal O : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Serial_in_serial_out PORT MAP (
          D => D,
          Reset => Reset,
          clk => clk,
          O => O
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
		D <= '0';
		Reset <= '1';
      wait for 100 ns;	
		D <= '1';
		Reset <= '0';
      wait for 100 ns;	
		D <= '1';
		Reset <= '0';
      wait for 100 ns;	
		D <= '0';
		Reset <= '0';
      wait for 100 ns;	
		D <= '1';
		Reset <= '0';
      wait for 100 ns;	
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
