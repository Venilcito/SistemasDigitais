entity porta_nor_tb is
 
end porta_nor_tb;

architecture tb of porta_nor_tb is

    component porta_nor is
	    port(
		    A : in  bit;
		    B : in  bit;
		    S : out bit
	    );
    end component;

    signal sA, sB : bit;
    signal sNOR   : bit;

begin

	u2_pl_or_2 : porta_nor port map(sA, sB, sNOR);

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