library ieee;
use ieee.std_logic_1164.all;

entity somador8bits is
    port(
        a    : in std_logic_vector(7 downto 0);
        Z    : in std_logic_vector(7 downto 0);
        cin  : in std_logic;
        cout : out std_logic;
        s    : out std_logic_vector(7 downto 0)
    );
end entity;

architecture comportamento of somador8bits is

component somador1bit is
    port(
        a    : in std_logic;
        Z    : in std_logic;
        cin  : in std_logic;
        cout : out std_logic;
        s    : out std_logic
    );
end component;

signal carry : std_logic_vector(6 downto 0);

begin
        u_somador0 : somador1bit port map(a(0), Z(0), cin, carry(0), s(0));
        u_somador1 : somador1bit port map(a(1), Z(1), carry(0), carry(1), s(1));
        u_somador2 : somador1bit port map(a(2), Z(2), carry(1), carry(2), s(2));
        u_somador3 : somador1bit port map(a(3), Z(3), carry(2), carry(3), s(3));
        u_somador4 : somador1bit port map(a(4), Z(4), carry(3), carry(4), s(4));
        u_somador5 : somador1bit port map(a(5), Z(5), carry(4), carry(5), s(5));
        u_somador6 : somador1bit port map(a(6), Z(6), carry(5), carry(6), s(6));
        u_somador7 : somador1bit port map(a(7), Z(7), carry(6), cout, s(7));
end architecture;