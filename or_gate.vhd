library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity or_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end or_gate;
architecture Behavioral of or_gate is
begin
process(a,b)
begin
       if(a='0') and (b='0') then
              c<='0';
        else
              c<='1';
        end if;
end process;
end Behavioral;
