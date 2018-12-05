----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:18 11/16/2018 
-- Design Name: 
-- Module Name:    subtractor4bit - Behavioral 
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

entity subtractor4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
			  F : out STD_LOGIC_VECTOR(3 DOWNTO 0));
end subtractor4bit;

architecture Behavioral of subtractor4bit is
begin
	process(A, B, Cin)
	begin
		F <= A xor B xor Cin;
		--Cout <= (not(A xor B) and Cin) or ((not A) and  B);
		Cout <= (((not A) and B) or (B and Cin) or (Cin and (not A)));
	end process;
end Behavioral;

