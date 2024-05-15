library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.mult_3x3_pack.all;

entity mult_3x3 is

    port (
    in_matrix1 : in  in_2d_array;
    in_matrix2 : in  in_2d_array;
    out_matrix : out out_2d_array
    );
end mult_3x3;


architecture arch of mult_3x3 is




begin

   process (in_matrix1, in_matrix2)
   begin
       for i in 0 to 2 loop
           for j in 0 to 2 loop
               out_matrix(i)(j) <= std_logic_vector(
                                                   signed(in_matrix1(i)(j)) * signed(in_matrix2(j)(i)));
           end loop;
       end loop;
   end process;

end arch;