library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity clock is 

Port(

reset : in std_logic ;
clk_in  : in std_logic ;  
clk_out_1 : out std_logic 
);
end entity clock ; 

architecture Behavioral of clock is 

signal con : constant :=20000000 ;  
signal clk_out : std_logic ; 

 

begin  

clk_out <= not clk_out after con;


 
end architecture Behavioral ; 






