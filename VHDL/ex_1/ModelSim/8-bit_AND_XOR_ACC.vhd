LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY and_xor IS
PORT (clk: IN std_logic;
	  inputA   :IN  std_logic_vector(7 downto 0);
      inputB   :IN  std_logic_vector(7 downto 0);
      reg_ANDoutput  :OUT  std_logic_vector(7 downto 0);
	  reg_XORoutput  :OUT  std_logic_vector(7 downto 0));
END and_xor;
ARCHITECTURE structural OF and_xor IS
	SIGNAL ANDoutput: std_logic_vector(7 downto 0);
	SIGNAL XORoutput: std_logic_vector(7 downto 0);
BEGIN
ANDXORLoop: For i IN 0 TO 7 Generate
		ANDoutput(i) <= inputA(i) AND inputB(i);
		XORoutput(i) <= inputA(i) XOR inputB(i);
	PROCESS(clk)
	BEGIN
	IF (clk'EVENT AND clk='1') THEN
	reg_ANDoutput(i) <= ANDoutput(i);
	reg_XORoutput(i) <= XORoutput(i);
	END IF;
	END PROCESS;
	End Generate ANDXORLoop;

END structural;
