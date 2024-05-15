LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY and_xor IS
PORT (inputA   :IN  std_logic_vector(7 downto 0);
      inputB   :IN  std_logic_vector(7 downto 0);
      ANDoutput  :OUT  std_logic_vector(7 downto 0);
	  XORoutput  :OUT  std_logic_vector(7 downto 0));
END and_xor;
ARCHITECTURE structural OF and_xor IS
BEGIN
ANDXORLoop: For i IN 0 TO 7 Generate
		ANDoutput(i) <= inputA(i) AND inputB(i);
		XORoutput(i) <= inputA(i) XOR inputB(i);
	End Generate ANDXORLoop;
END structural;
