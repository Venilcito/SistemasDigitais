entity porta_or is
	port(
		A : in  bit;
		B : in  bit;
		S : out bit
	);
end porta_or;

architecture comportamento of porta_or is
begin
	S <= A or B; 
end comportamento;


