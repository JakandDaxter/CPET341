library ieee;
use ieee.std_logic_1164.all;
 
entity OUT is
  port 
  (
  A   :in std_logic;
  B   :in std_logic;
  Cin :in std_logic;
  Cout :out std_logic
  ) ;
end OUT ; -- 

architecture COUT of OUT is



begin
  
  
  Cout <= (A AND B) OR (B AND Cin) OR (Cin AND A);


end COUT ; -- arch