library ieee;
use ieee.std_logic_1164.all;

entity GAND is
port	(A,B: in std_logic;
	X: out std_logic);
end;

architecture BEH of GAND is
begin
	X<=A AND B;

end BEH;
