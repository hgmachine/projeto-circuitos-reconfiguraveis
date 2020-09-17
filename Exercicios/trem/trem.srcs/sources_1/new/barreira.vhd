library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity barreira is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC);
end barreira;

architecture Behavioral of barreira is
begin

    process (x,y)
    begin
    
        z <= x and y;
    
    end process;

end Behavioral;
