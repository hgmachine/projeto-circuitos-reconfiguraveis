library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity topmodule is
    Port (    clk : in STD_LOGIC;
              led : out std_logic_vector(2 downto 0));
end topmodule;

architecture Behavioral of topmodule is

    component trem is
    Port ( v0 : in STD_LOGIC;
           v1 : in STD_LOGIC;
           t0 : out STD_LOGIC;
           t1 : out STD_LOGIC;
            b : out STD_LOGIC);
    end component;

    COMPONENT vio_0 is
    PORT (  clk : IN STD_LOGIC;
            probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe_in1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe_in2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0));
    END COMPONENT;
    
    signal s_v0, s_v1 : std_logic;
    signal s_t0, s_t1, s_b : std_logic;
    
begin

    led(0) <= s_t0;
    led(1) <= s_t1;
    led(2) <=  s_b;
 
    uut: trem port map (
        v0 => s_v0, 
        v1 => s_v1,        
        t0 => s_t0,
        t1 => s_t1,
        b  => s_b
    );
    
    my_vio: vio_0 port map (
        clk => clk,
        probe_in0(0) => s_t0,
        probe_in1(0)  => s_t1,
        probe_in2(0)  => s_b,
        probe_out0(0) => s_v0,
        probe_out1(0) => s_v1
    );
   
end Behavioral;