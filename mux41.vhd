library ieee;
use ieee.std_logic_1164.all;

entity MUX41 is
	port (D, C, F, B: in std_logic;
		S: in std_logic_vector (1 downto 0);
		X: out std_logic);
end;

architecture BEH of MUX41 is
begin
	with S select
		X<= D when "00",
		C when "01",
		F when "10",
		B when "11",
		'0' when OTHERS;
end BEH;
