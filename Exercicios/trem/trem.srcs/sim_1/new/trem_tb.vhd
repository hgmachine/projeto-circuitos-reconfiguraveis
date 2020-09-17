library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity trem_tb is
end trem_tb;

architecture Behavioral of trem_tb is

    component trem is
    Port ( v0 : in STD_LOGIC;
           v1 : in STD_LOGIC;
           t0 : out STD_LOGIC;
           t1 : out STD_LOGIC;
            b : out STD_LOGIC);
    end component;
    
    signal s_v0, s_v1 : std_logic;
    signal s_t0, s_t1 : std_logic;
    signal s_b : std_logic; 

begin

    uut: trem port map (
        v0  =>  s_v0,
        v1  =>  s_v1,
        t0  =>  s_t0,
        t1  =>  s_t1,
        b   =>  s_b
    );   

    s_v0 <= '1', '0' after 50 ns, '1' after 100 ns, '1' after 150 ns, '0' after 200 ns, '1' after 250 ns; 
    s_v1 <= '1', '0' after 100 ns, '1' after 150 ns, '0' after 200 ns;
    
end Behavioral;