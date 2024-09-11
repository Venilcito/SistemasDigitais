entity mux2x1_tb is

end entity;

architecture escolha of mux2x1_tb is
    component mux2x1 is
        port(
            C0  : in bit;
            C1  : in bit;
            sel : in bit;
            Z   : out bit
        );
    end component;

    signal sC0  : bit;
    signal sC1  : bit;
    signal ssel : bit;
    signal sZ   : bit;
begin

    u_mux2x1 : mux2x1 port map (sC0, sC1, ssel, sZ);
    u_tb : process

    begin
        sC0 <= '0';

        sC1 <= '1';

        ssel <= '0';
        wait for 10 ns;

        ssel <= '1';
        wait for 10 ns;

        wait;
    end process;
    

end architecture;