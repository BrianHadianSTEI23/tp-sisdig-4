library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_bin_to_ascii is
end entity tb_bin_to_ascii;

architecture behavior of tb_bin_to_ascii is

    component bin_to_ascii is
        port (
            a : in  std_logic_vector(5 downto 0);
            b : out unsigned(5 downto 0)
        );
    end component;

    signal a : std_logic_vector(5 downto 0) := (others => '0');
    signal b : unsigned(5 downto 0);

    signal sim_finished : boolean := false;

begin

    uut: bin_to_ascii
        port map (
            a => a,
            b => b
        );

    stim_proc: process
    begin
        -- test in a loop
        for i in 30 to 50 loop
            a <= std_logic_vector(to_unsigned(i, 6));
            wait for 10 ns;
        end loop;

        sim_finished <= true;
        wait;
    end process;

end architecture behavior;