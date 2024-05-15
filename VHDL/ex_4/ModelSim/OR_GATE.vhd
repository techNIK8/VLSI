LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY my_or IS
GENERIC (N : integer :=32 );
PORT (A   :IN  std_logic_vector(N-1 downto 0);
      B   :IN  std_logic_vector(N-1 downto 0);
      C   :OUT  std_logic_vector(N-1 downto 0));
END my_or;
ARCHITECTURE structural OF my_or IS
BEGIN
C <= A OR B;
END structural;
