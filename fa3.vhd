library ieee;
use ieee.std_logic_1164.all;

entity FA3 is
port( 	A, B: in std_logic_vector(2 downto 0);
	Cin: in std_logic;
	S: out std_logic_vector(2 downto 0);
	Cout: out std_logic);
end;

architecture STRL of FA3 is
component FA
port( A, B, Cin: in std_logic;
	S, Cout: out std_logic);
end component;

signal H, I: std_logic;
begin

	U1: FA PORT MAP (A(0), B(0), Cin, S(0), H);
	U2: FA PORT MAP (A(1), B(1), H, S(1), I);
	U3: FA PORT MAP (A(2), B(2), I, S(2), Cout);

end STRL;
