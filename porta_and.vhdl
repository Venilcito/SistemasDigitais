entity porta_and is
	port(
		A : in  bit;
		B : in  bit;
		S : out bit
	);
end porta_and;

architecture comportamento of porta_and is
begin
	S <= A and B;
end comportamento;


