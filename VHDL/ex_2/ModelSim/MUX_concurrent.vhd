LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY mux_concurrent IS
PORT (inputA   :IN  std_logic_vector(7 DOWNTO 0);
      inputB   :IN  std_logic_vector(7 DOWNTO 0);
	  inputSEL :IN  std_logic_vector(1 DOWNTO 0);
      outputX  :OUT  std_logic_vector(7 DOWNTO 0));
END mux_concurrent;
ARCHITECTURE arch OF mux_concurrent IS
BEGIN
WITH inputSEL SELECT
	outputX <= "00000000" WHEN "00",
			   inputA 	  WHEN "01",
			   inputB	  WHEN "10",
			   "ZZZZZZZZ" WHEN "11",
			   "11111111" WHEN OTHERS;
END arch;
