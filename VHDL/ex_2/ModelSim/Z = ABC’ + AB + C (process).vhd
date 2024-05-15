LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY expression IS
PORT (inputA   :IN  std_logic;
      inputB   :IN  std_logic;
	  inputC   :IN  std_logic;
      outputZ  :OUT  std_logic);
END expression;
ARCHITECTURE arch_process OF expression IS
BEGIN
p_expression : process (inputA, inputB, inputC)
BEGIN
	outputZ <= (inputA AND inputB AND (NOT inputC)) OR (inputA AND inputB) OR inputC;
END PROCESS p_expression;
END arch_process;




