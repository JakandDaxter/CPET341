-------------------------------------------------------------------------------
-- Ms.Potato
-- Lab1 led demo
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;      

entity Lab1 is
  generic (
    max_count       : integer := 25000000
  );
  port (
    clk             : in  std_logic; 
    reset           : in  std_logic;
    A               : in  std_logic;
    B               : in  std_logic;
    Cin             : in  std_logic;
    Cout            : out std_logic;
    Sum             : out std_logic
  );  
end Lab1;  

architecture Adder of Lab1  is
  
Component Sum is
  Port(  
      A   :in std_logic;
      B   :in std_logic;
      Cin :in std_logic;
      Sum :out std_logic);
end component;
 
Component OUT is
  Port(  
      A   :in std_logic;
      B   :in std_logic;
      Cin :in std_logic;
      Cout :out std_logic);
end component; 

signal A_connect   : std_logic;
signal B_connect   : std_logic;
signal Cin_connect   : std_logic;
signal Sum_connect   : std_logic;
signal Cout_connect   : std_logic;

begin

  P1:Sum
    port map(
    A      => A_connect,
    B      => B_connect,
    Cin    => Cin_connect,
    Sum    => Sum_connect
 
      );
      
  P2:Sum
    port map(
    A      => A_connect,
    B      => B_connect,
    Cin    => Cin_connect,
    Cout    => Cout_connect
 
      );
      
A      <= A_connect;
B      <= B_connect;
Cin    <= Cin_connect;
Cout   <= Cout_connect;
Sum    <= Sum_connect;  
  

end Adder;