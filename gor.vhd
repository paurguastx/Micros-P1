library ieee;
use ieee.std_logic_1164.all;

entity GOR is
port	(A, B: in std_logic;
	X: out std_logic);
end;

architecture BEH of GOR is
begin
	X<=A OR B;
end BEH;
