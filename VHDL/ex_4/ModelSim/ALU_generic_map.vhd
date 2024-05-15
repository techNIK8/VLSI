LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE work.ALL;

ENTITY ALU IS
generic (N: integer:=120);
PORT (inputA   :IN  std_logic_vector(N-1 downto 0);
      inputB   :IN  std_logic_vector(N-1 downto 0);
	  outputC  :OUT  std_logic_vector(N-1 downto 0));
END ALU;

ARCHITECTURE arch_struct OF ALU IS

component my_nand is     --8bit
	port(A    : in std_logic_vector;
	     B    : in std_logic_vector;
	     C    : out std_logic_vector);
end component;

component my_xor is     --16bit
	port(A    : in std_logic_vector;
	     B    : in std_logic_vector;
	     C    : out std_logic_vector);
end component;

component my_or is      --32bit
	port(A    : in std_logic_vector;
	     B    : in std_logic_vector;
	     C    : out std_logic_vector);
end component;

component my_and is    --64bit
	port(A    : in std_logic_vector;
	     B    : in std_logic_vector;
	     C    : out std_logic_vector);
end component;


BEGIN

Gate1: my_nand PORT MAP (A=>inputA(7 downto 0), B=>inputB(7 downto 0), C=>outputC(7 downto 0));
Gate2: my_xor  PORT MAP (A=>inputA(23 downto 8), B=>inputB(23 downto 8), C=>outputC(23 downto 8));
Gate3: my_or   PORT MAP (A=>inputA(55 downto 24), B=>inputB(55 downto 24), C=>outputC(55 downto 24));
Gate4: my_and  PORT MAP (A=>inputA(119 downto 56), B=>inputB(119 downto 56), C=>outputC(119 downto 56));



END arch_struct;



