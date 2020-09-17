library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sinaleira_0 is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC;
           s : out STD_LOGIC);
end sinaleira_0;

architecture Behavioral of sinaleira_0 is
begin

    process (x,y)
    begin
        
        z <= not(x) or y;
        s <= not(x) or y;
            
    end process;

end Behavioral;