entity mux2x1 is
    port(
        C0  : in bit;
        C1  : in bit;
        sel : in bit;
        Z   : out bit
    );
end entity;

architecture escolha of mux2x1 is
begin

    z <= C0 when sel = '0' else C1;
    
end architecture;