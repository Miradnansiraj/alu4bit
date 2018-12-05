library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

ENTITY addsubtract IS
PORT ( S : IN STD_LOGIC;
X, Y : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
Sout : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
Cout : OUT STD_LOGIC);
END addsubtract;

ARCHITECTURE behavioral OF addsubtract IS
signal Sum : STD_LOGIC_VECTOR (4 downto 0);
BEGIN
	process(X, Y, S)
	begin
	if s = '0' then
		Sum <= ('0' & X) + ( '0' & Y);
	else
		sum <= ('0' & X) - ('0' & Y) ;--+ "10000";
	end if;
	end process;
	Cout <= Sum(4);
	Sout <= Sum(3 downto 0);
END behavioral;