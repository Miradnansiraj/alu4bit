----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:30 11/21/2018 
-- Design Name: 
-- Module Name:    multiplier4bit - dataflow 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0));
end multiplier4bit;

architecture structural of multiplier4bit is
--Adder
COMPONENT adder4bit is
	Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			  Cout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
--SIGNAL A0B0, A0B1, A0B2, A0B3, A1B0, A1B1, A1B2, A1B3, A2B0, A2B1, A2B2, A2B3, A3B0, A3B1, A3B2, A3B3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL Cout1, Cout2, Cout3, Cout4, Cout5, Cout6, Cout7, Cout8, Cout9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL Temp1, Temp2, Temp3, Temp4 : STD_LOGIC_VECTOR(3 downto 0);
begin
	F <= std_logic_vector(unsigned(A) * unsigned(B));
--	F(7) <= A(3) and B(3);
--	FA1 : adder4bit port map(("000" & (A(2) and B(3))), "000" & (A(3) and B(2)), "0000", Cout1, F(6)); -- for F[6]
--	FA2 : adder4bit port map((A(1) and B(3)), (A(2) and B(2)), Cout1, Cout2, Temp1); -- for F[5]
--	FA3 : adder4bit port map(Temp1, (A(3) and B(1)), Cout2, Cout3, F(5)); -- for F[5]
--	FA4 : adder4bit port map((A(0) and B(3)), (A(1) and B(2)), Cout3, Cout4, Temp2); -- for F[4]
--	FA5 : adder4bit port map(Temp2, (A(2) and B(1)), Cout4, Cout5, Temp3); -- for F[4]
--	FA6 : adder4bit port map(Temp3, (A(3) and B(0)), Cout5, Cout6, F(4)); -- for F[4]
--	FA7 : adder4bit port map((A(0) and B(2)), (A(1) and B(1)), Cout6, Cout7, Temp4); -- for F[3]
--	FA8 : adder4bit port map(Temp4, (A(2) and B(0)), Cout7, Cout8, F(3)); -- for F[3]
--	FA9 : adder4bit port map((A(0) and B(1)), (A(1) and B(0)), Cout8, Cout9, F(2)); -- for F[2]
--	FA10 : adder4bit port map(Cout9, (A(0) and B(0)), "0000", F(0), F(1)); -- for F[1] & F[0]
end structural;

