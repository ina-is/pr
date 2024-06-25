-- PR : Pipeline Register --

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity PR is
    generic (N: integer := 128);
    port(
        CLK, RESET : in std_logic;
        PRin : in std_logic_vector(N-1 downto 0);
        PROut : out std_logic_vector(N-1 downto 0)
    );
end PR;

architecture RTL of PR is
signal PReg : std_logic_vector(N-1 downto 0);

begin

PRi : process(CLK, RESET)
    begin
    if (RESET = '0') then
        PReg <= (others => 0);
    elsif (CLK'event and CLK = '1') then
        PReg <= PRin;
    end if;

    end process;
    
    PRout <= PReg;

end RTL;