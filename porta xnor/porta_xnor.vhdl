entity porta_xnor is
	port(
		A : in  bit;
		B : in  bit;
		S : out bit
	);
end porta_xnor;

architecture comportamento of porta_xnor is
begin
	S <= A xnor B;
end comportamento;