entity porta_or3 is
	port(
		A : in  bit;
		B : in  bit;
		C : in  bit;
		S : out bit
	);
end porta_or3;

architecture comportamento of porta_or3 is
begin
	S <= A or B or C;
end comportamento;