LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE work.ALL;

ENTITY expression IS
PORT (inputA   :IN  std_logic;
      inputB   :IN  std_logic;
	  inputC   :IN  std_logic;
      outputZ  :OUT  std_logic);
END expression;

ARCHITECTURE arch_struct OF expression IS

	COMPONENT AND_GATE IS
	PORT(	A: IN std_logic;
			B: IN std_logic;
			O1: OUT std_logic);
	END COMPONENT;	

	COMPONENT OR_GATE IS
	PORT(	A: IN std_logic;
			B: IN std_logic;
			O2: OUT std_logic);
	END COMPONENT;	
	
	COMPONENT NOT_GATE IS
	PORT(	A: IN std_logic;
			O3: OUT std_logic);
	END COMPONENT;
	
	
	SIGNAL wireAND_1: std_logic; 
	SIGNAL wireAND_2: std_logic;
	SIGNAL wireOR_1: std_logic; 
	SIGNAL wireNOT: std_logic;
		
	
BEGIN

Gate1: AND_GATE PORT MAP (A=>inputA, B=>inputB, O1=>wireAND_1);
Gate2: NOT_GATE PORT MAP (A=>inputC, O3=>wireNOT);
Gate3: AND_GATE PORT MAP (A=>wireAND_1, B=>wireNOT, O1=>wireAND_2);
Gate4: OR_GATE PORT MAP (A=>wireAND_2, B=>wireAND_1, O2=>wireOR_1);
Gate5: OR_GATE PORT MAP (A=>wireOR_1, B=>inputC, O2=>outputZ);


END arch_struct;

