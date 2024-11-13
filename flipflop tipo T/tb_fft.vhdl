library ieee;
use ieee.std_logic_1164.all;

entity tb_ffjk is

end tb_ffjk;

architecture tb_ff of tb_ffjk is

    constant CLK_PERIOD : time := 20 ns;

    component ffjk is
	    port(
		    t     : in  std_logic;
		    clock : in  std_logic;
		    pr    : in  std_logic;
		    cl    : in  std_logic;
		    q     : out std_logic;
		    nq    : out std_logic
	    );
    end component ffjk;

    signal st, spr, scl, sq, snq : std_logic;
    signal sclk : std_logic := '1';
begin

    u1 : ffjk 
    port map(st, sclk, spr, scl, sq, snq);

    tbp : process
    begin
        spr <= '1';
        scl <= '0';
        st  <= '0';

        wait for CLK_PERIOD;
        scl <= '1';
        st  <= '0';
        wait for CLK_PERIOD;
        st  <= '1';
        wait for CLK_PERIOD;
        st  <= '0';
        wait for CLK_PERIOD;
        st  <= '1';
        wait for CLK_PERIOD;

        wait;
    end process tbp;

    clock : process 
    begin
        sclk <= not(sclk);
        wait for CLK_PERIOD/2;
    end process clock;

end architecture tb_ff;
