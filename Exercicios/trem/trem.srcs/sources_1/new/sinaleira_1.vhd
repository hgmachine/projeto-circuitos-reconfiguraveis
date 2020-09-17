library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sinaleira_1 is
    Port ( x : in STD_LOGIC;
           z : out STD_LOGIC;
           s : out STD_LOGIC);
end sinaleira_1;

architecture Behavioral of sinaleira_1 is
begin

    process (x)
    begin
    
        z <= x;
        s <= x;
    
    end process;

end Behavioral;
