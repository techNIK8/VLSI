LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY mux_sequential IS
PORT (inputA   :IN  std_logic_vector(7 DOWNTO 0);
      inputB   :IN  std_logic_vector(7 DOWNTO 0);
	  inputSEL :IN  std_logic_vector(1 DOWNTO 0);
      outputX  :OUT  std_logic_vector(7 DOWNTO 0));
END mux_sequential;
ARCHITECTURE arch OF mux_sequential IS
BEGIN
p_mux : process (inputA, inputB, inputSEL)
BEGIN
	CASE inputSEL IS
		WHEN "00" => outputX <= "00000000";
		WHEN "01" => outputX <= inputA;
		WHEN "10" => outputX <= inputB;
		WHEN "11" => outputX <= "ZZZZZZZZ";
		WHEN OTHERS => outputX <= "11111111";
	END CASE;
END PROCESS p_mux;
END arch;









