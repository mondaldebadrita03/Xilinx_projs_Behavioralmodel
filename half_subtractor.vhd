library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity half_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end half_subtractor;
architecture Behavioral of half_subtractor is
begin
process(a,b)
begin
       if(((a='1') and (b='1')) or ((a='0') and (b='0'))) then
              diff<='0';
        else
              diff<='1';
        end if;
       if(a='0' and b='1') then
             bout<='1';
        else
             bout<='0';
        end if;
end process;
end Behavioral;
