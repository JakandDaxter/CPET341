library ieee;
use ieee.std_logic_1164.all;
 
entity Sum is
  port 
  (
  A   :in std_logic;
  B   :in std_logic;
  Cin :in std_logic;
  Sum :out std_logic
  ) ;
end Sum ; -- 

architecture XOR of Sum is



begin
  
  
  Sum <= (A XOR B) XOR Cin;


end XOR ; -- arch