entity mux2x8 is
    port(
        C0  : in  bit_vector(7 downto 0);
        C1  : in  bit_vector(7 downto 0);
        sel : in  bit;
        Z   : out bit_vector(7 downto 0)
    );
end entity;

architecture escolha of mux2x8 is
begin

    Z <= C0 when sel = '0' else C1;
    
end architecture;