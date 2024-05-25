library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity full_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end full_subtractor;
architecture Behavioral of full_subtractor is
begin
process(a,b,bin)
begin
       if(((a='0') and (b='0') and (bin='0')) or ((a='0') and (b='1') and (bin='1')) or ((a='1') and (b='0') and (bin='1')) or ((a='1') and (b='1') and (bin='0')))  then
              diff<='0';
        else
              diff<='1';
        end if;
        if(((a='0') and (b='0') and (bin='0')) or ((a='1') and (b='0') and (bin='1')) or ((a='1') and (b='0') and (bin='1')) or ((a='1') and (b='1') and (bin='0'))) then
             bout<='0';
        else
             bout<='1';
        end if;
end process;
end Behavioral;
