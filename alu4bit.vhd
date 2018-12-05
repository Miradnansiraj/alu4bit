----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:26 11/16/2018 
-- Design Name: 
-- Module Name:    alu4bit - Behavioral 
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
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (1 downto 0);
			  Cout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0));
end alu4bit;

architecture behv of alu4bit is
component addsubtract is
PORT ( S : IN STD_LOGIC;
X, Y : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
Sout : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
Cout : OUT STD_LOGIC);
END component;
component multiplier4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
signal addout, subout : std_logic_vector(3 downto 0);
signal mulout : std_logic_vector(7 downto 0);
signal cout1, cout2 : std_logic;
begin
	add : addsubtract port map ('0', A, B, addout, cout1);
	sub : addsubtract port map ('1', A, B, subout, cout2);
	MUL : multiplier4bit port map (A, B, MULOUT);
	decode: process(A, B, C, cout1, cout2, addout, subout, mulout)
	begin
		if (c = "00") then
			F <= "000" & cout1 & addout;
		elsif (c = "01") then
			F <= "000" & cout2 & subout;
		elsif (c = "10") then
			F <= MULOUT;
		elsif (c = "11") then
			F <= STD_LOGIC_VECTOR(("0000" & UNSIGNED(A)) / ("0000" & UNSIGNED(B)));
		else
			F <= "ZZZZZZZZ";
		end if;
	end process;
end behv;

