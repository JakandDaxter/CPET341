-------------------------------------------------------------------------------
-- Aliana Tejeda 
-- OR GATE for single bit full adder [Structural]
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all; 

entity ORStruct is
  port 
  (
    FirstAND,SecondAND :in std_logic;
    
    Product2 : out std_logic
  
  ) ;
  
end ORStruct ; -- ORStruct

architecture Structural of ORStruct is

begin
  
  
Product2 <= FirstAND OR SecondAND ;  


end Structural; -- Structural

