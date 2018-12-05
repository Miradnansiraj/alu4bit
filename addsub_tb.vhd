--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:23:03 12/05/2018
-- Design Name:   
-- Module Name:   C:/Users/MirAdnan/Documents/DSD/VHDL/ALU4bit/addsub_tb.vhd
-- Project Name:  ALU4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addsubtract
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
 
ENTITY addsub_tb IS
END addsub_tb;
 
ARCHITECTURE behavior OF addsub_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addsubtract
    PORT(
         S : IN  std_logic;
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         Sout : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic;
   signal X : std_logic_vector(3 downto 0);
   signal Y : std_logic_vector(3 downto 0);

 	--Outputs
   signal Sout : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addsubtract PORT MAP (
          S => S,
          X => X,
          Y => Y,
          Sout => Sout,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		X <= "1010";
		Y <= "0110";
		S <= '1';
		wait for 10 ns;
		S <= '0';
      wait;
   end process;

END;
