library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package mult_3x3_pack is

   type in_1d_array is array (integer range 0 to 2) of std_logic_vector (4 downto 0);
   type in_2d_array is array (integer range 0 to 2) of in_1d_array;
   
   type out_1d_array is array (integer range 0 to 2) of std_logic_vector (9 downto 0);
   type out_2d_array is array (integer range 0 to 2) of out_1d_array;

end  mult_3x3_pack;