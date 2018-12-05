--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:29:19 11/27/2018
-- Design Name:   
-- Module Name:   C:/Users/MirAdnan/Documents/DSD/VHDL/ALU4bit/tb.vhd
-- Project Name:  ALU4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu4bit
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
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic_vector(1 downto 0);
         F : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal F : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu4bit PORT MAP (
          A => A,
          B => B,
          C => C,
          F => F
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		A <= "1010";
		B <= "0110";
		C <= "00";
		WAIT FOR 50 NS;
		C <= "01";
		WAIT FOR 50 NS;
		C <= "10";
		WAIT FOR 50 NS;
		C <= "11";
		WAIT;
   end process;
END;
