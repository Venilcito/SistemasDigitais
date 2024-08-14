entity porta_nor is
	port(
		A : in  bit;
		B : in  bit;
		S : out bit
	);
end porta_nor;

architecture comportamento of porta_nor is
begin
	S <= A nor B;
end comportamento;