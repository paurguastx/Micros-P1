library ieee;
use ieee.std_logic_1164.all;

entity PROY is
port(	A, B: in std_logic_vector (2 downto 0);
	S: in std_logic_vector (1 downto 0);
	Cin: in std_logic;
	R: out std_logic_vector (2 downto 0);
	Cout: out std_logic);
end PROY;

architecture STRL of PROY is

component GOR
port (A, B: in std_logic;
	X: out std_logic);
end component;

component GAND
port (A, B: in std_logic;
	X: out std_logic);
end component;

component MUX41
port (D, C, F, B: in std_logic;
	S: in std_logic_vector (1 downto 0);
	X: out std_logic);
end component;

component MUX21
port (A, B: in std_logic;
	S: in std_logic;
	X: out std_logic);
end component;

component FA3
port(	A, B: in std_logic_vector(2 downto 0);
	Cin: in std_logic;
	S: out std_logic_vector(2 downto 0);
	Cout: out std_logic);
end component;

signal O, M, N, Z: std_logic_vector(2 downto 0);
signal W, V: std_logic;
begin

	U1: GAND PORT MAP (A(0), B(0), O(0));
	U2: GAND PORT MAP (A(1), B(1), O(1));
	U3: GAND PORT MAP (A(2), B(2), O(2));
	U4: GOR PORT MAP (A(0), B(0), M(0));
	U5: GOR PORT MAP (A(1), B(1), M(1));
	U6: GOR PORT MAP (A(2), B(2), M(2));
	U7: FA3 PORT MAP (A, B, Cin, N, W);
	U8: FA3 PORT MAP (A, not B, Cin, Z, V);
	U9: MUX21 PORT MAP (W, V, S(1), Cout);
	U10: MUX41 PORT MAP (N(0), Z(0), O(0), M(0), S, R(0)); 
	U11: MUX41 PORT MAP (N(1), Z(1), O(1), M(1), S, R(1));
	U12: MUX41 PORT MAP (N(2), Z(2), O(2), M(2), S, R(2));


end STRL;
