LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY my_nand IS
GENERIC (N : integer :=8 );
PORT (A   :IN  std_logic_vector(N-1 downto 0);
      B   :IN  std_logic_vector(N-1 downto 0);
      C   :OUT  std_logic_vector(N-1 downto 0));
END my_nand;
ARCHITECTURE structural OF my_nand IS
BEGIN
C <= A NAND B;
END structural;
