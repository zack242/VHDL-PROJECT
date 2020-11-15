---12/03/2020 10:56 auteurs: DE OLIVEIRA BAPTISTA DEBEAUVAIS TOZY td5
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;  

entity project is 
---declaration des signaux externes--
Port ( 

  clk,clr : in std_logic;
  reset : in std_logic ; 
  mode1,mode2,mode3 : in std_logic ; 
  led_out : out std_logic_vector(7 downto 0) ; 
  cmp_out : out std_logic_vector( 4 downto 0) ;
  cmp_map : in std_logic_vector(4 downto 0 ) ;
  lettre_1 : out std_logic_vector( 6 downto 0 ) ; 
  lettre_2 : out std_logic_vector( 6 downto 0 ) ; 
  lettre_3 : out std_logic_vector( 6 downto 0 ) ; 
  lettre_4 : out std_logic_vector( 6 downto 0 ) ; 
  lettre_5 : out std_logic_vector( 6 downto 0 ) ; 
  lettre_6 : out std_logic_vector( 6 downto 0 )  
 
 );

 end project ;  
 ---declaration des signaux internes---
 architecture structural of project is 
 
  

component compteur is 
 Port ( 
         clk,clr : in std_logic ;
		   reset : in std_logic ; 
		   mode1,mode2,mode3 : in std_logic ; 
			led_out : out std_logic_vector(7 downto 0); 
		   cmp_out : out std_logic_vector(4 downto 0)	  
		 );
 
end component ; 

component map_lettre_1 is 
Port ( 
       
    	  cmp_map : in std_logic_vector(4 downto 0) ; 
		  lettre_1 : out std_logic_vector(6 downto 0) 
		  
	  ) ;
	  
end component ;

component map_lettre_2 is 
Port ( 
        
		  cmp_map : in std_logic_vector(4 downto 0) ; 
		  lettre_2 : out std_logic_vector(6 downto 0) 
		  
	  ) ;
	  
end component ;

component map_lettre_3 is 
Port ( 
        
		  cmp_map : in std_logic_vector(4 downto 0) ; 
		  lettre_3 : out std_logic_vector(6 downto 0) 
		  
	  ) ;
	  
end component ;

component map_lettre_4 is 
Port ( 
        
		  cmp_map : in std_logic_vector(4 downto 0) ; 
		  lettre_4 : out std_logic_vector(6 downto 0) 
		  
	  ) ;
	  
end component ;

component map_lettre_5 is 
Port ( 
        
		  cmp_map : in std_logic_vector(4 downto 0) ; 
		  lettre_5 : out std_logic_vector(6 downto 0) 
		  
	  ) ;
	  
end component ;

component map_lettre_6 is 
Port ( 
        
		  cmp_map : in std_logic_vector(4 downto 0) ; 
		  lettre_6 : out std_logic_vector(6 downto 0) 
		  
	  ) ;
	  
end component ; 


signal w : std_logic_vector(4 downto 0);
signal k : std_logic ; 

begin
---instantiation des composants---
U2: compteur port map (clk,clr,reset,mode1,mode2,mode3,led_out,w);
U3: map_lettre_1 port map (w,lettre_1);
U4: map_lettre_2 port map (w,lettre_2);
U5: map_lettre_3 port map (w,lettre_3);
U7: map_lettre_4 port map (w,lettre_4);
U8: map_lettre_5 port map (w,lettre_5);
U9: map_lettre_6 port map (w,lettre_6);
 
end structural ;
 