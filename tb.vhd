LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS  
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
BEGIN
   uut: alu4bit PORT MAP (
          A => A,
          B => B,
          C => C,
          F => F
        );
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
