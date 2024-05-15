library ieee;
use ieee.std_logic_1164.all;
entity nand2 is
port(
    a, b: in std_logic_vector(63 downto 0);
    c: out std_logic_vector(63 downto 0));
end nand2;

architecture arch of nand2 is
begin
c <= (a nand b);
end arch;