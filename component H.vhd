
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;  

entity final is 

Port ( 

 clr,clk : in std_logic;
 cmp_out : out std_logic_vector( 4 downto 0) ;
 cmp_map : in std_logic_vector(4 downto 0 ) ;
 lettre_1 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_2 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_3 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_4 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_5 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_6 : out std_logic_vector( 6 downto 0 ) ;
 clk_out : out std_logic  
 
 );

 end final ;  
 
 architecture structural of final is 
 

 
component projet is 
Port 
(
 clr,clk : in std_logic ;
 cmp_out : out std_logic_vector( 4 downto 0) ;
 cmp_map : in std_logic_vector(4 downto 0 ) ;
 lettre_1 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_2 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_3 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_4 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_5 : out std_logic_vector( 6 downto 0 ) ; 
 lettre_6 : out std_logic_vector( 6 downto 0 )   
) ;
 end component  ;

 
 component clock is 
 Port (
 clr : in std_logic ; 
 clk_out : out std_logic 
 );
 
end component ;

 signal w :  std_logic ;
 begin 
  K2 : projet port map (clk=>w ,clr);  
  K1 : clock port map (clr, w);
  
  
 
end structural ;
 