LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY my_xor IS
GENERIC (N : integer :=16 );
PORT (A   :IN  std_logic_vector(N-1 downto 0);
      B   :IN  std_logic_vector(N-1 downto 0);
      C   :OUT  std_logic_vector(N-1 downto 0));
END my_xor;
ARCHITECTURE structural OF my_xor IS
BEGIN
C <= A XOR B;
END structural;
