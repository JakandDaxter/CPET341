-------------------------------------------------------------------------------
-- Aliana Tejeda 
-- XOR GATE for single bit full adder [Structural]
-------------------------------------------------------------------------------
library IEEE;
 
use IEEE.STD_LOGIC_1164.ALL;

entity XORstruct is
  port 
    (
      FirstXOR,SecondXOR :in STD_LOGIC;
      
      Product3           :out STD_LOGIC
    ) ;
    
    
end XORstruct; -- XORstruct

architecture Structural of XORstruct is

begin

  Product3 <= FirstXOR XOR SecondXOR;

end Structural ; -- arch