library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity and_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end and_gate;
architecture Behavioral of and_gate is
begin
process(a,b)
begin
       if(a='1') and (b='1') then
              c<='1';
        else
              c<='0';
        end if;
end process;
end Behavioral;
