library ieee;
use ieee.std_logic_1164.all;

entity mux2x8b is
    port(
        b  : in  std_logic_vector(7 downto 0);
        op : in  std_logic;
        Z  : out std_logic_vector(7 downto 0)
    );
end entity;

architecture escolha of mux2x8b is
begin

    Z <= b when op = '0' else (not b) after 4 ns;
    
end architecture;