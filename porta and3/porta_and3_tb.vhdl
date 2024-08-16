entity porta_and3_tb is
 
end porta_and3_tb;

architecture tb of porta_and3_tb is

    component porta_and3 is
	    port(
		    A : in  bit;
		    B : in  bit;
			C : in  bit;
		    S : out bit
	    );
    end component;

    signal sA, sB, sC : bit;
    signal sAND       : bit;

begin

	u2_pl_or_2 : porta_and3 port map(sA, sB, sC, sAND);

	u3_tb : process
	begin
		sA <= '0';
		sB <= '0';
		sC <= '0';
		wait for 10 ns;

		sA <= '0';
		sB <= '0';
		sC <= '1';
		wait for 10 ns;

		sA <= '0';
		sB <= '1';
		sC <= '0';
		wait for 10 ns;

		sA <= '0';
		sB <= '1';
		sC <= '1';
		wait for 10 ns;

		sA <= '1';
		sB <= '0';
		sC <= '0';
		wait for 10 ns;

		sA <= '1';
		sB <= '0';
		sC <= '1';
		wait for 10 ns;

		sA <= '1';
		sB <= '1';
		sC <= '0';
		wait for 10 ns;

		sA <= '1';
		sB <= '1';
		sC <= '1';
		wait for 10 ns;
		
		wait;		
	end process u3_tb;

end tb;