---12/03/2020 10:56 auteurs: DE OLIVEIRA BAPTISTA DEBEAUVAIS TOZY td5
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity map_lettre_1 is

Port
(
	 cmp_map : in std_logic_vector(4 downto 0 ) ;
    lettre_1 : out std_logic_vector( 6 downto 0 ) );

end entity ;



architecture Behavioral of map_lettre_1 is

begin

cmp_process : process(cmp_map)

begin

---On affilie une lettre a chaque nombre du compteur/decompteur pour chaque afficheur---

case cmp_map is
 
when "00000" => lettre_1 <="0010110" ;-- Z
when "00001" => lettre_1 <="0001000" ; -- A
when "00010" => lettre_1 <="0101000" ; -- K
when "00011" => lettre_1 <="0001000"; -- A
when "00100" => lettre_1 <="0011001"; -- R
when "00101" => lettre_1 <="1111001"; --I
when "00110" => lettre_1 <="0001000"; --A
when "01000" => lettre_1 <="0001000"; --A 
when "01001" => lettre_1 <="1110001";-- L 
when "01010" => lettre_1 <="0110000";--E
when "01011" => lettre_1 <="1001000"; --X 
when "01100" => lettre_1 <="0001000";--A
when "01101" => lettre_1 <="0001001";--N
when "01110" => lettre_1 <="1000010";--D
when "01111" => lettre_1 <="0011001";--R
when "10000" => lettre_1 <="0110000";--E
when "10010" => lettre_1 <="0100001";--G
when "10011" => lettre_1 <="1000001";--U
when "10100" =>lettre_1 <="1111001";--I
when "10101" =>lettre_1 <="1110001";--L
when "10110" =>lettre_1 <="1110001";--L
when "10111" =>lettre_1 <="0001000";--A
when "11000" =>lettre_1 <= "1000001";--U
when "11001" =>lettre_1 <= "0101011";--M
when "11010" =>lettre_1 <= "0110000";--E

---gestion des autres cas---
when others => lettre_1 <="1111111" ;
end case ;


end process;

end architecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity map_lettre_2 is

Port
(
    cmp_map : in std_logic_vector(4 downto 0 ) ;
    lettre_2 : out std_logic_vector( 6 downto 0 ) );

end entity ;



architecture Behavioral of map_lettre_2 is

begin

cmp_process : process(cmp_map)

begin

case cmp_map is
 
when "00000" => lettre_2 <="0001000" ; 
when "00001" => lettre_2 <="0101000" ; 
when "00010" => lettre_2 <="0001000" ; 
when "00011" => lettre_2 <="0011001"; 
when "00100" => lettre_2 <="1111001";
when "00101" => lettre_2 <="0001000"; 
when "00111" => lettre_2 <="0001000";
when "01000" => lettre_2 <="1110001";
when "01001" => lettre_2 <="0110000";
when "01010" => lettre_2 <="1001000";
when "01011" => lettre_2 <="0001000"; 
when "01100" => lettre_2 <="0001001";
when "01101" => lettre_2 <="1000010";
when "01110" => lettre_2 <="0011001";
when "01111" => lettre_2 <="0110000";
when "10001" => lettre_2 <="0100001";
when "10010" => lettre_2 <="1000001";
when "10011" => lettre_2 <="1111001";
when "10100" => lettre_2 <="1110001";
when "10101" => lettre_2 <="1110001";
when "10110" => lettre_2 <="0001000";
when "10111" => lettre_2 <="1000001";
when "11000" => lettre_2 <="0101011";
when "11001" => lettre_2 <="0110000";


when others => lettre_2 <="1111111" ;
end case ;


end process;

end architecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity map_lettre_3 is

Port
(
    cmp_map : in std_logic_vector(4 downto 0 ) ;
    lettre_3 : out std_logic_vector( 6 downto 0 ) );

end entity ;



architecture Behavioral of map_lettre_3 is

begin

cmp_process : process(cmp_map)

begin

case cmp_map is
 
when "00000" => lettre_3 <="0101000" ; -- Z
when "00001" => lettre_3 <="0001000" ; -- A
when "00010" => lettre_3 <="0011001" ; -- G
when "00011" => lettre_3 <="1111001"; -- K 
when "00100" => lettre_3 <="0001000"; -- R
when "00110" => lettre_3 <="0001000"; --L
when "00111" => lettre_3 <="1110001";-- E 
when "01000" => lettre_3 <="0110000"; -- N 
when "01001" => lettre_3 <="1001000";-- D 
when "01010" => lettre_3 <="0001000";--M
when "01011" => lettre_3 <="0001001"; --U 
when "01100" => lettre_3 <="1000010";--X
when "01101" => lettre_3 <="0011001";--X
when "01110" => lettre_3 <="0110000";--y
when "10000" => lettre_3 <="0100001";--X
when "10001" => lettre_3 <="1000001";--X
when "10010" => lettre_3 <="1111001";--X
when "10011" => lettre_3 <="1110001";--X
when "10100" => lettre_3 <="1110001";--X
when "10101" => lettre_3 <="0001000";
when "10110" => lettre_3 <="1000001";
when "10111" => lettre_3 <="0101011";
when "11000" => lettre_3 <="0110000";


when others => lettre_3 <="1111111" ;
end case ;


end process;

end architecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity map_lettre_4 is

Port
(
    cmp_map : in std_logic_vector(4 downto 0 ) ;
    lettre_4 : out std_logic_vector( 6 downto 0 ) );

end entity ;



architecture Behavioral of map_lettre_4 is

begin

cmp_process : process(cmp_map)

begin

case cmp_map is
 
when "00000" => lettre_4 <="0001000" ; -- Z
when "00001" => lettre_4 <="0011001" ; -- A
when "00010" => lettre_4 <="1111001" ; -- G
when "00011" => lettre_4 <="0001000"; -- K 
when "00101" => lettre_4 <="0001000"; --I
when "00110" => lettre_4 <="1110001"; --L
when "00111" => lettre_4 <="0110000";-- E 
when "01000" => lettre_4 <="1001000"; -- N 
when "01001" => lettre_4 <="0001000";-- D 
when "01010" => lettre_4 <="0001001";--M
when "01011" => lettre_4 <="1000010"; --U 
when "01100" => lettre_4 <="0011001";--X
when "01101" => lettre_4 <="0110000";--X
when "01111" => lettre_4 <="0100001";--X
when "10000" => lettre_4 <="1000001";--X
when "10001" => lettre_4 <="1111001";--X
when "10010" => lettre_4 <="1110001";--X
when "10011" => lettre_4 <="1110001";--X
when "10100" => lettre_4 <="0001000";--m
when "10101" => lettre_4 <="1000001";--m
when "10110" => lettre_4 <="0101011";--m
when "10111" => lettre_4 <="0110000";--m


when others => lettre_4 <="1111111" ;
end case ;

end process;

end architecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity map_lettre_5 is

Port
(
    cmp_map : in std_logic_vector(4 downto 0 ) ;
    lettre_5 : out std_logic_vector( 6 downto 0 ) );

end entity ;



architecture Behavioral of map_lettre_5 is

begin

cmp_process : process(cmp_map)

begin

case cmp_map is
 
when "00000" => lettre_5 <="0011001" ; -- Z
when "00001" => lettre_5 <="1111001" ; -- A
when "00010" => lettre_5 <="0001000" ; -- G
when "00100" => lettre_5 <="0001000"; -- R
when "00101" => lettre_5 <="1110001"; --I
when "00110" => lettre_5 <="0110000"; --L
when "00111" => lettre_5 <="1001000";-- E 
when "01000" => lettre_5 <="0001000"; -- N 
when "01001" => lettre_5 <="0001001";-- D 
when "01010" => lettre_5 <="1000010";--M
when "01011" => lettre_5<= "0011001"; --U 
when "01100" => lettre_5 <="0110000";--X
when "01110" => lettre_5 <="0100001";--X
when "01111" => lettre_5 <="1000001";--X
when "10000" => lettre_5 <="1111001";--X
when "10001" => lettre_5 <="1110001";--X
when "10010" => lettre_5 <="1110001";--X
when "10011" => lettre_5 <="0001000";--X
when "10100" => lettre_5 <="1000001";--m
when "10101" => lettre_5 <="0101011";--m
when "10110" => lettre_5 <="0110000";--m

when others => lettre_5 <="1111111" ;
end case ;


end process;

end architecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity map_lettre_6 is

Port
(
    cmp_map : in std_logic_vector(4 downto 0 ) ;
    lettre_6 : out std_logic_vector( 6 downto 0 ) );

end entity ;



architecture Behavioral of map_lettre_6 is

begin

cmp_process : process(cmp_map)

begin

case cmp_map is
 
when "00000" => lettre_6 <="1111001" ; -- Z
when "00001" => lettre_6 <="0001000" ; -- A
when "00011" => lettre_6 <="0001000"; -- K 
when "00100" => lettre_6 <="1110001"; -- R
when "00101" => lettre_6 <="0110000"; --I
when "00110" => lettre_6<="1001000"; --L
when "00111" => lettre_6 <="0001000";-- E 
when "01000" => lettre_6 <="0001001"; -- N 
when "01001" => lettre_6 <="1000010";-- D 
when "01010" => lettre_6 <="0011001";--M
when "01011" => lettre_6 <="0110000"; --U 
when "01101" => lettre_6 <="0100001";--X
when "01110" => lettre_6 <="1000001";--X
when "01111" => lettre_6 <="1111001";--X
when "10000" => lettre_6 <="1110001";--X
when "10001" => lettre_6 <="1110001";--X
when "10010" => lettre_6 <="0001000";--X
when "10011" => lettre_6 <="1000001";--X
when "10100" => lettre_6 <="0101011";--m
when "10101" => lettre_6 <="0110000";--m


when others => lettre_6 <="1111111" ;
end case ;


end process;

end architecture ;


