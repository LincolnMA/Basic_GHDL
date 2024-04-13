library ieee;
use ieee.std_logic_1164.all;

entity adder_tb is
end adder_tb;

architecture test of adder_tb is
    component adder is
        generic(N: integer := 8);
        port (
                a,b: in std_logic_vector(N-1 downto 0);
                s: out std_logic_vector(N-1 downto 0)
        ) ;
    end component;
    signal a,b,s: std_logic_vector(7 downto 0);

begin

DUT: adder port map(a,b,s);

a <= "00000010",
     "00001000" after 10 ns,
     "00000110" after 20 ns,
     "00000011" after 30 ns,
     "00011000" after 40 ns,
     "00010100" after 50 ns,
     "00000000" after 60 ns;
b <= "00001110",
     "00001010" after 10 ns,
     "00000111" after 20 ns,
     "00000111" after 30 ns,
     "00011100" after 40 ns,
     "00011100" after 50 ns,
     "00000000" after 60 ns;

end test ; -- test