library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity trem is
    Port ( v0 : in STD_LOGIC;
           v1 : in STD_LOGIC;
           t0 : out STD_LOGIC;
           t1 : out STD_LOGIC;
           b : out STD_LOGIC);
end trem;

architecture Behavioral of trem is

    component sinaleira_1
    port (  x: in std_logic;
            z: out std_logic;
            s: out std_logic  );
    end component;
    
    component sinaleira_0
    port (  x: in std_logic;
            y: in std_logic;
            z: out std_logic;
            s: out std_logic  );
    end component;
    
    component barreira
    port (  x: in std_logic;
            y: in std_logic;
            z: out std_logic  );
    end component;
    
    signal s0, s1 : std_logic;

begin

    sinaleira_trem_inf: sinaleira_0 port map (
        x => v0,
        y => v1,
        z => t0,
        s => s0
    );
    
    sinaleira_trem_sup: sinaleira_1 port map (
        x => v0,
        z => t1,
        s => s1
    );   
     
    barreira_veiculos: barreira port map (
        x => s0,
        y => s1,
        z => b
    );

end Behavioral;