entity porta_and_tb is
 
end porta_and_tb;

architecture tb of porta_and_tb is

    component porta_and is
	    port(
		    A : in  bit;
		    B : in  bit;
		    S : out bit
	    );
    end component;

    signal sA, sB : bit;
    signal sAND   : bit;

begin

	u2_pl_or_2 : porta_and port map(sA, sB, sAND);

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