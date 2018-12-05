----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:31 11/16/2018 
-- Design Name: 
-- Module Name:    adder4bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in std_logic;
			  Cout : out std_logic;
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end adder4bit;

architecture Behavioral of adder4bit is
begin
	PROCESS(A, B, Cin)
	begin
		F <= A XOR B XOR Cin;
		Cout <= (A AND B) OR ((A XOR B) AND Cin);
	end process;
end Behavioral;

