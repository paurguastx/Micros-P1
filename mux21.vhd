library ieee;
use ieee.std_logic_1164.all;

entity MUX21 is
	port (A, B: in std_logic;
		S: in std_logic;
		X: out std_logic);
end;

architecture BEH of MUX21 is
begin
	with S select
		X<= A when '0',
		B when '1',
		'0' when OTHERS;
end BEH;
