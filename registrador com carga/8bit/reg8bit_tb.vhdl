library ieee;
use ieee.std_logic_1164.all;

entity tb_reg is

end tb_reg;

architecture tb of tb_reg is

    constant CLK_PERIOD : time := 20 ns;

    component regCarga8bit is
	    port(
		    d     : in  std_logic_vector(7 downto 0);
		    clock : in  std_logic;
		    pr    : in  std_logic;
		    cl    : in  std_logic;
            nrw   : in  std_logic;
		    s     : out std_logic_vector(7 downto 0)
	    );
    end component regCarga8bit;

    signal sd : std_logic_vector(7 downto 0);
    signal sclk : std_logic := '1';
    signal spr, scl, snrw : std_logic;
    signal ss : std_logic_vector(7 downto 0);

begin

    u1 : regCarga8bit port map(sd, sclk, spr, scl, snrw, ss);

    tbp : process
    begin
        spr <=  '1';
        scl <=  '0';
        sd  <=  "00000000";
        snrw <= '0';

        wait for CLK_PERIOD;
        scl <=  '1';
        sd  <=  "10101010";
        snrw <= '1';

        wait for CLK_PERIOD;
        sd  <=  "11111111";
        snrw <= '0';
        wait for CLK_PERIOD;
        sd  <=  "00001000";
        wait for CLK_PERIOD;
        sd  <=  "00000001";
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