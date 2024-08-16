entity porta_and3 is
	port(
		A : in  bit;
		B : in  bit;
		C : in  bit;
		S : out bit
	);
end porta_and3;

architecture comportamento of porta_and3 is
begin
	S <= A and B and C;
end comportamento;