library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity topmodule is
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC);
end topmodule;

architecture Behavioral of topmodule is

    component project_1_voto_ABC is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
    end component;

    component vio_0 is
    Port (
        clk : IN STD_LOGIC;
        probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe_out2 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0));
    end component;

    signal  s_a, s_b, s_c : std_logic;
    signal  s_f : std_logic;

begin

    uut: project_1_voto_ABC port map(
        a   =>  s_a,
        b   =>  s_b,
        c   =>  s_c,
        f   =>  s_f);
        
    led <= s_f;

    my_vio: vio_0 port map (
        clk => clk,
        probe_in0(0) => s_f,
        probe_out0(0) => s_a,
        probe_out1(0) => s_b,
        probe_out2(0) => s_c);

end Behavioral;
