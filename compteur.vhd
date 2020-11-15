---12/03/2020 10:56 auteurs: DE OLIVEIRA BAPTISTA DEBEAUVAIS TOZY td5
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

---declaration des signaux externes--
entity compteur is

Port ( 

       clk : in std_logic;
       clr : in std_logic;
		 reset : in std_logic ;
		 mode1,mode2,mode3 : in std_logic ; 
		 Led_out : out std_logic_vector( 7 downto 0) ; 
       cmp_out : out std_logic_vector( 4 downto 0)
		 
		);

end compteur ;

---declaration des signaux internes---
architecture projetMax of compteur is
	
signal cmp : std_logic_vector(4 downto 0 )  := "00000" ;
signal clk_out : integer:= 0 ; 
signal periode : integer :=9990001 ;---frequence 10Mhz
signal buff : integer ; 



begin
---diviseur de clock plus compteur---
process(clk)

begin 


if clr='1' then 

if rising_edge(clk) then 


if clk_out = buff  then 

clk_out <= 0 ; 

else 

clk_out <= clk_out + 1 ; 
 


if clk_out = buff-1 then  


---compteur---
if mode3='0' then 

cmp<="00000" ; 

if cmp = 26  then 

   cmp <="00000"  ;
	cmp_out <=cmp  ;
		
else   
	
  cmp<=cmp +'1'  ;
     
end if ;


---decompteur---
elsif mode3='1' then 
  
cmp<="11011";

if cmp = 0   then 

   cmp <="11011"  ;
	cmp_out <=cmp  ;
		
else   
	
  cmp<=cmp - '1'  ;
       
end if ;



end if ; 




end if ;

end if ; 

end if ; 

end if ; 


cmp_out <=cmp  ;





---mode reset---

if reset='0' then 

cmp <="00000"  ;

clk_out <= 0 ;

end if ; 







---differents modes de defilement---


---vitesse lente---
if mode1='1'  then 

buff <= periode*4 ;
led_out <= "11100001";
clk_out <= 0 ;
 
---vitesse rapide---
elsif mode2='1' then 

buff <= periode  ; 
led_out <= "11111001";
clk_out <= 0 ;

 
---defilement inverse---
elsif mode3='1' then 

led_out <= "11111111"; 

end if ; 


end process;


end projetMax;
