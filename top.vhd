-------------------------------------------------------------------------------
-- Dr. Kaputa
-- Lab1 top
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity top is
  port (
    clk             : in  std_logic; 
    reset           : in  std_logic;
    output          : out std_logic
  );
end top;

architecture beh of top is

component Lab1 is
  generic (
    max_count       : integer := 25000000
  );
  port (
    clk             : in  std_logic; 
    reset           : in  std_logic;
    output          : out std_logic
  );  
end component;  

begin

uut: Lab1  
  generic map (
    max_count => 50000000
  )
  port map(
    clk       => clk,
    reset     => reset,
    output    => output
  );
end beh;