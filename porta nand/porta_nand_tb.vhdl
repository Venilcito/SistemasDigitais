entity porta_nand_tb is
 
end porta_nand_tb;

architecture tb of porta_nand_tb is

    component porta_nand is
	    port(
		    A : in  bit;
		    B : in  bit;
		    S : out bit
	    );
    end component;

    signal sA, sB : bit;
    signal sNAND  : bit;

begin

	u2_pl_or_2 : porta_nand port map(sA, sB, sNAND);

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