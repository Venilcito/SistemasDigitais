entity porta_nand is
	port(
		A : in  bit;
		B : in  bit;
		S : out bit
	);
end porta_nand;

architecture comportamento of porta_nand is
begin
	S <= A nand B; 
end comportamento;