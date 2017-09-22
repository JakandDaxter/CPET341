-------------------------------------------------------------------------------
-- Aliana Tejeda
-- Lab1structural test bench
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity Lab1structural_tb is
end Lab1structural_tb;

architecture arch of Lab1structural_tb is

component Lab1structural is
  port (
    A               : in  std_logic;
    B               : in  std_logic;
    Cin             : in  std_logic;
    Cout            : out std_logic;
    Sum             : out std_logic
  );  
end component;  

signal a :std_logic := '0';
signal b :std_logic := '0';
signal cin :std_logic :='0';
signal cout :std_logic;
signal sum :std_logic;
begin


uut: Lab1structural  

  port map(
    A       => A,
    B       => B,
    Cin     => Cin,
    Cout    => Cout,
    Sum     => Sum
    
      );
      
A <= not  A after 10 ns;
B <= not B after 20 ns;
Cin <= not Cin after 40 ns; 
end arch;