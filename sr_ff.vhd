library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity sr_ff is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end sr_ff;
architecture Behavioral of sr_ff is
begin
process(CLK)
variable temp: STD_LOGIC :='0';
begin
        if rising_edge(CLK) then
               if S='0' and R='0' then
                  temp:=temp;
               elsif S='0' and R='1' then
                  temp:='0';
               elsif S='1' and R='0' then
                  temp:='1';
--             else
--                temp:='Z';
                end if;
          end if;
--        if temp='Z' then
--             Q<=temp;
--             Qbar<=temp;
--       else
                Q<=temp;
                Qbar<=not temp;
          end if;
end process;
end Behavioral;
