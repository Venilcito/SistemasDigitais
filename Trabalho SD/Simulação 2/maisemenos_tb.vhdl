library ieee;
use ieee.std_logic_1164.all;

entity maismenos_tb is
end entity maismenos_tb;

architecture test of maismenos_tb is
    component maismenos
        port(
            a    : in std_logic_vector(7 downto 0);
            b    : in std_logic_vector(7 downto 0);
            op   : in std_logic;
            s    : out std_logic_vector(7 downto 0);
            cout : out std_logic;
            over : out std_logic
        );
    end component;

    signal a    : std_logic_vector(7 downto 0);
    signal b    : std_logic_vector(7 downto 0);
    signal op   : std_logic;
    signal s    : std_logic_vector(7 downto 0);
    signal cout : std_logic;
    signal over : std_logic;

begin
    u_maismenos: maismenos port map(a, b, op, s, cout, over);

    tbp: process
    begin
        a <= "00000000"; -- 0 + 255 = 255
        b <= "11111111";
        op <= '0';
        wait for 40 ns;

        a <= "00000000"; -- 0 - 255 = -255 (overflow)
        b <= "11111111";
        op <= '1';
        wait for 40 ns;

        a <= "11111111"; -- 255 + 1 = 256 (overflow)
        b <= "00000001";
        op <= '0';
        wait for 40 ns;

        a <= "11111111"; -- 255 - 1 = 254
        b <= "00000001";
        op <= '1';
        wait for 40 ns;

        a <= "11111110"; -- 254 + 254 = 508 (overflow)
        b <= "11111110";
        op <= '0';
        wait for 40 ns;

        a <= "11111111"; -- 255 + 255 = 510 (overflow)
        b <= "11111111";
        op <= '0';
        wait for 40 ns;

        a <= "00011010"; -- 26 + 41 = 67
        b <= "00101001";
        op <= '0';
        wait for 40 ns;

        wait;
    end process;

end architecture test;