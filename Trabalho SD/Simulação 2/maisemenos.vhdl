library ieee;
use ieee.std_logic_1164.all;

entity maismenos is
    port(
        a    : in std_logic_vector(7 downto 0);
        b    : in std_logic_vector(7 downto 0);
        op   : in std_logic;
        s    : out std_logic_vector(7 downto 0);
        cout : out std_logic;
        over : out std_logic
    );
end entity;

architecture comportamento of maismenos is

    signal Zb : std_logic_vector(7 downto 0);

    component mux2x8b is
        port(
            b  : in std_logic_vector(7 downto 0);
            op : in std_logic;
            Z  : out std_logic_vector(7 downto 0)
        );
    end component;

    component somador8bits is
        port(
            a    : in std_logic_vector(7 downto 0);
            Z    : in std_logic_vector(7 downto 0);
            cin  : in std_logic;
            cout : out std_logic;
            s    : out std_logic_vector(7 downto 0)
        );
    end component;

    signal cout2 : std_logic; 
    
begin
        u_mux2x8b: mux2x8b port map(b, op, Z => Zb);
        u_somador8bits: somador8bits port map (a => a, Z => Zb, cin => op, cout => cout2, s => s);

        cout <= cout2;
        over <= (op and b(7)) or ((not op) and cout2) after 4 ns;
end architecture;