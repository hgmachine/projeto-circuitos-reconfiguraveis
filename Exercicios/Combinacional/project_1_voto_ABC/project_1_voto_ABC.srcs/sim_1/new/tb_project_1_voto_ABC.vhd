library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_project_1_voto_ABC is

end tb_project_1_voto_ABC;

architecture Behavioral of tb_project_1_voto_ABC is

    component project_1_voto_ABC is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c : in STD_LOGIC;
               f : out STD_LOGIC);
    end component;

    signal s_a, s_b, s_c : std_logic := '0';
    signal s_f : std_logic := '0'; 

begin

     uut : project_1_voto_ABC port map (
         a => s_a,
         b => s_b,
         c => s_c,
         f => s_f
     );

     s_a <= '0', '1' after 20 ns, '0' after 40 ns, '0' after 60 ns, '1' after 80 ns, '0' after 100 ns;
     s_b <= '0', '1' after 20 ns, '1' after 40 ns, '1' after 60 ns, '1' after 80 ns, '0' after 100 ns;
     s_c <= '0', '0' after 20 ns, '0' after 40 ns, '1' after 60 ns, '1' after 80 ns, '1' after 100 ns;
       
end Behavioral;
