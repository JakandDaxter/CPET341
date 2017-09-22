-------------------------------------------------------------------------------
-- Aliana Tejeda 
-- Top Level for single bit full adder [Structural]
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;      

entity Lab1structural is

  port (
    A               : in  std_logic;
    B               : in  std_logic;
    Cin             : in  std_logic;
    Cout            : out std_logic;
    Sum             : out std_logic
  );  
end Lab1structural;  

architecture Struct of Lab1structural  is 
-------------------------------------------
Component ANDStruct is
  port(
  
  A          :in std_logic;
  B          :in std_logic;
  product1   :out std_logic   
  
  
  );

end component;
-------------------------------------------
Component ORStruct is
  port(
  
        FirstAND,SecondAND:in std_logic;
  
        Product2 : out std_logic  
  
  
  );

end component;
-------------------------------------------
Component XORStruct is
  port(
  
      FirstXOR,SecondXOR :in std_logic;
  
      Product3           :out std_logic
         
  );

end component;

-------------------------------------------------------------------

signal Product_sig  : std_logic; 
signal Product1_sig : std_logic; 
signal Product2_sig : std_logic;  
signal Product3_sig : std_logic;
signal Product4_sig : std_logic; 



begin

-------------------------------------------XOR GATE
  xor1_inst: XORStruct
    port map(
      FirstXOR      => A,
      SecondXOR       => B,
      product3     => Product_sig
    );
    
  xor2_inst: XORStruct 
    port map(
      FirstXOR      => Product_sig,
      SecondXOR       => Cin,
      product3     => Sum
    );
------------------------------------------- AND GATE
  and1_inst: ANDStruct 
    port map(
      A    	  => A,
      B       => B,
      product1     	  => Product1_sig
    );
    
  and2_inst: ANDStruct 
    port map(
      A      => B,
      B       => Cin,
      product1     => Product2_sig
    );
    
  and3_inst: ANDStruct
    port map(
      A      => Cin,
      B       => A,
      product1     => Product3_sig
    );
------------------------------------------- OR GATE
  or1_inst: ORStruct 
    port map(
      FirstAND      => Product1_sig,
      SecondAND       => Product2_sig,
      product2     => Product4_sig
    );
    
  or2_inst: ORStruct 
    port map(
      FirstAND      => Product4_sig,
      SecondAND       => Product3_sig,
      product2     => Cout
    );  

end Struct;