entity porta_or4 is
	port(
		A : in  bit;
		B : in  bit;
		C : in  bit;
		D : in  bit;
		S : out bit
	);
end porta_or4;

architecture comportamento of porta_or4 is
begin
	S <= A or B or C or D;
end comportamento;