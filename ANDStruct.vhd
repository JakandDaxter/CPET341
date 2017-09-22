-------------------------------------------------------------------------------
-- Aliana Tejeda 
-- AND GATE for single bit full adder [Structural]
-------------------------------------------------------------------------------
library IEEE;
 
use IEEE.STD_LOGIC_1164.ALL;
  
use IEEE.NUMERIC_STD.ALL; 
  

entity ANDStruct is
  port (
  
  A          :in std_logic;
  B          :in std_logic;
  product1   :out std_logic
  
  ) ;
end ANDStruct ; -- ANDStruct

architecture arch of ANDStruct is

begin

  product1 <= A AND B;


end architecture ; -- arch