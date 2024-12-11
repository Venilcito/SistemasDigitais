library ieee;
use ieee.std_logic_1164.all;

entity controle is
    port(
        q    : in std_logic_vector(2 downto 0);
        j, k : out std_logic_vector(2 downto 0)
    );
end controle;

architecture controlamento of controle is
begin
    j(0) <= 1;
    k(0) <= not(q(0)) and q(1);

    j(1) <= q(1);
    k(1) <= q(2) or not(q(0));

    j(2) <= q(1) and not(q(0));
    k(2) <= q(1) or not(q(0));
end architecture;