library ieee;
use ieee.std_logic_1164.all;

entity tb_reg is

end tb_reg;

architecture tb of tb_reg is

    constant CLK_PERIOD : time := 20 ns;

    component regCarga1bit is
	    port(
		    d     : in  std_logic;
		    clock : in  std_logic;
		    pr    : in  std_logic;
		    cl    : in  std_logic;
            nrw   : in  std_logic;
		    s     : out std_logic
	    );
    end component regCarga1bit;

    signal sd, spr, scl, ss, snrw : std_logic;
    signal sclk : std_logic := '1';
begin

    u1 : regCarga1bit port map(sd, sclk, spr, scl, snrw, ss);

    tbp : process
    begin
        spr <= '1';
        scl <= '0';
        sd  <= '0';
        snrw <= '0';

        wait for CLK_PERIOD;
        scl <= '1';
        sd  <= '0';
        snrw <= '1';

        wait for CLK_PERIOD;
        sd  <= '1';
        snrw <= '0';
        wait for CLK_PERIOD;
        sd  <= '0';
        wait for CLK_PERIOD;
        sd  <= '1';
        snrw <= '1';
        wait for CLK_PERIOD;

        wait;
    end process tbp;

    clock : process 
    begin
        sclk <= not(sclk);
        wait for CLK_PERIOD/2;
    end process clock;

end architecture tb;