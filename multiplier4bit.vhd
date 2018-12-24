library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0));
end multiplier4bit;

architecture structural of multiplier4bit is
begin
	F <= std_logic_vector(unsigned(A) * unsigned(B));
end structural;