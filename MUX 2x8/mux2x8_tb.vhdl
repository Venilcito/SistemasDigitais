entity mux2x8_tb is

end entity;

architecture escolha of mux2x8_tb is
    component mux2x8 is
        port(
            C0  : in  bit_vector(7 downto 0);
            C1  : in  bit_vector(7 downto 0);
            sel : in  bit;
            Z   : out bit_vector(7 downto 0)
        );
    end component;

    signal sC0  : bit_vector(7 downto 0);
    signal sC1  : bit_vector(7 downto 0);
    signal ssel : bit;
    signal sZ   : bit_vector(7 downto 0);
begin

    u_mux2x8 : mux2x8 port map (sC0, sC1, ssel, sZ);
    u_tb : process
    
    begin
        sC0 <= "00000001";

        sC1 <= "10000000";

        ssel <= '0';
        wait for 10 ns;

        ssel <= '1';
        wait for 10 ns;

        wait;
    end process;
    

end architecture;