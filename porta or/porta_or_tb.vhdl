entity porta_or_tb is
 
end porta_or_tb;

architecture tb of porta_or_tb is

    component porta_or is
	    port(
		    A : in  bit;
		    B : in  bit;
		    S : out bit
	    );
    end component;

    signal sA, sB : bit;
    signal sOR  : bit;

begin

	u2_pl_or_2 : porta_or port map(sA, sB, sOR);

	u3_tb : process
	begin
		sA <= '0';
		sB <= '0';
		wait for 10 ns;

		sA <= '0';
		sB <= '1';
		wait for 10 ns;

		sA <= '1';
		sB <= '0';
		wait for 10 ns;

		sA <= '1';
		sB <= '1';
		wait for 10 ns;
		
		wait;		
	end process u3_tb;

end tb;