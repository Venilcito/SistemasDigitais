entity porta_or4_tb is
 
end porta_or4_tb;

architecture tb of porta_or4_tb is

    component porta_or4 is
	    port(
		    A : in  bit;
		    B : in  bit;
			C : in  bit;
			D : in  bit;
		    S : out bit
	    );
    end component;

    signal sA, sB, sC, sD : bit;
    signal sOR            : bit;

begin

	u2_pl_or_2 : porta_or4 port map(sA, sB, sC, sD, sOR);

	u3_tb : process
	begin
		sA <= '0';
		sB <= '0';
		sC <= '0';
		sD <= '0';
		wait for 10 ns;

		sA <= '0';
		sB <= '0';
		sC <= '0';
		sD <= '1';
		wait for 10 ns;

		sA <= '0';
		sB <= '0';
		sC <= '1';
		sD <= '0';
		wait for 10 ns;

		sA <= '0';
		sB <= '0';
		sC <= '1';
		sD <= '1';
		wait for 10 ns;

		sA <= '0';
		sB <= '1';
		sC <= '0';
		sD <= '0';
		wait for 10 ns;

		sA <= '0';
		sB <= '1';
		sC <= '0';
		sD <= '1';
		wait for 10 ns;

		sA <= '0';
		sB <= '1';
		sC <= '1';
		sD <= '0';
		wait for 10 ns;

		sA <= '0';
		sB <= '1';
		sC <= '1';
		sD <= '1';
		wait for 10 ns;

		sA <= '1';
		sB <= '0';
		sC <= '0';
		sD <= '0';
		wait for 10 ns;

		sA <= '1';
		sB <= '0';
		sC <= '0';
		sD <= '1';
		wait for 10 ns;

		sA <= '1';
		sB <= '0';
		sC <= '1';
		sD <= '0';
		wait for 10 ns;

		sA <= '1';
		sB <= '0';
		sC <= '1';
		sD <= '1';
		wait for 10 ns;

		sA <= '1';
		sB <= '1';
		sC <= '0';
		sD <= '0';
		wait for 10 ns;

		sA <= '1';
		sB <= '1';
		sC <= '0';
		sD <= '1';
		wait for 10 ns;

		sA <= '1';
		sB <= '1';
		sC <= '1';
		sD <= '0';
		wait for 10 ns;

		sA <= '1';
		sB <= '1';
		sC <= '1';
		sD <= '1';
		wait for 10 ns;
		
		wait;		
	end process u3_tb;

end tb;