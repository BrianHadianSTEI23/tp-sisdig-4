library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ascii_to_bin is
end entity tb_ascii_to_bin;

architecture behavior of tb_ascii_to_bin is

    component ascii_to_bin is
        port (
            a : in  unsigned(7 downto 0);
            b : out std_logic_vector(4 downto 0)
        );
    end component;

    signal a : unsigned(7 downto 0) := (others => '0');
    signal b : std_logic_vector(4 downto 0);

begin

    uut: ascii_to_bin
        port map (
            a => a,
            b => b
        );

    stim_proc: process
    begin
        for i in 30 to 50 loop
            a <= to_unsigned(i, 8);
            wait for 10 ns;
        end loop;

        wait;
    end process;

end architecture behavior;