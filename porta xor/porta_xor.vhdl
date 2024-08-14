entity porta_xor is
	port(
		A : in  bit;
		B : in  bit;
		S : out bit
	);
end porta_xor;

architecture comportamento of porta_xor is
begin
	S <= A xor B;
end comportamento;