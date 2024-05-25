library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity d_ff is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end d_ff;
architecture Behavioral of d_ff is
begin
process(CLK)
begin
        if rising_edge(CLK) then
               if D<='0' then
                  Q<='0';
                  Qbar<='1';
               else
                  Q<='1';
                  Qbar<='0';
                end if;
          end if;
end process;
end Behavioral;
