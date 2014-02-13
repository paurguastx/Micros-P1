library ieee;
use ieee.std_logic_1164.all;

entity FA is
PORT(	A, B, Cin: IN STD_LOGIC;

	  S, Cout: OUT STD_LOGIC);


end;

architecture DF of FA is
begin
S <= A XOR B XOR Cin;
 
Cout <= (A AND B) OR (Cin AND (A AND B));

end DF;
