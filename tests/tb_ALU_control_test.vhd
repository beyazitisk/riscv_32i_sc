--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:55:08 04/22/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/ALU_control/tb_ALU_control_test.vhd
-- Project Name:  ALU_control
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_control
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
 
ENTITY tb_ALU_control_test IS
END tb_ALU_control_test;
 
ARCHITECTURE behavior OF tb_ALU_control_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_control
    PORT(
         i_ALU_op : IN  std_logic;
         i_func7 : IN  std_logic_vector(6 downto 0);
         i_func3 : IN  std_logic_vector(2 downto 0);
         o_op_sel : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_ALU_op : std_logic := '0';
   signal i_func7 : std_logic_vector(6 downto 0) := (others => '0');
   signal i_func3 : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal o_op_sel : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_control PORT MAP (
          i_ALU_op => i_ALU_op,
          i_func7 => i_func7,
          i_func3 => i_func3,
          o_op_sel => o_op_sel
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  i_ALU_op<='1';
	  i_func3<="000";
	  i_func7<="0000000";
      wait for 100 ns;	
	  i_ALU_op<='1';
	  i_func3<="100";
	  i_func7<="0000000";      
      wait for 100 ns;	
	  i_ALU_op<='1';
	  i_func3<="000";
	  i_func7<="0100000";
      wait for 100 ns;	
	  i_ALU_op<='0';
	  i_func3<="000";
	  i_func7<="0000000";
      -- insert stimulus here 

      wait;
   end process;

END;
