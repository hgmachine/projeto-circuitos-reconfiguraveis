library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project_1_voto_ABC is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end project_1_voto_ABC;

architecture Behavioral of project_1_voto_ABC is

    signal s1, s2, s3 : std_logic;
    
begin

    s1 <= a and b;
    s2 <= a and c;
    s3 <= b and c;
    f <= s1 or s2 or s3;

end Behavioral;