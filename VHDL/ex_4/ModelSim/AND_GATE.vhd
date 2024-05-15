LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY my_and IS
GENERIC (N : integer :=64 );
PORT (A   :IN  std_logic_vector(N-1 downto 0);
      B   :IN  std_logic_vector(N-1 downto 0);
      C   :OUT  std_logic_vector(N-1 downto 0));
END my_and;
ARCHITECTURE structural OF my_and IS
BEGIN
C <= A AND B;
END structural;
