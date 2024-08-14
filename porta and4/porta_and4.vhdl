entity porta_and4 is
	port(
		A : in  bit;
		B : in  bit;
		C : in  bit;
		D : in  bit;
		S : out bit
	);
end porta_and4;

architecture comportamento of porta_and4 is
begin
	S <= A and B and C and D;
end comportamento;