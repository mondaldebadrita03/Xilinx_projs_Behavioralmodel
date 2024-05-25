library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity t_ff is
    Port ( T : in  STD_LOGIC;
          CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end t_ff;
architecture Behavioral of t_ff is
begin
process(CLK)
variable temp: STD_LOGIC :='0';
begin
        if rising_edge(CLK) then
               if T='1' then
                  temp:=not temp;
               else
                  temp:=temp;
                end if;
          end if;
                Q<=temp;
                Qbar<=not temp;
end process;
end Behavioral;
