library ieee;
use ieee.std_logic_1164.all;
 
entity somador1bit is
    port(
        a     : in std_logic;
        Z     : in std_logic;
        cin   : in std_logic;
        cout  : out std_logic;
        s     : out std_logic
    );
end entity;
 
architecture comportamento of somador1bit is
begin
 
    s    <= (a xor Z) xor cin after 4 ns;
    cout <= (a and Z) or (a and cin) or (Z and cin) after 4 ns;
 
end architecture;