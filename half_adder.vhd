library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity half_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end half_adder;
architecture Behavioral of half_adder is
begin
process(a,b)
begin
       if(((a='1') and (b='1')) or ((a='0') and (b='0'))) then
              s<='0';
        else
              s<='1';
        end if;
       if(a='1' and b='1') then
             cout<='1';
        else
             cout<='0';
        end if;
end process;
end Behavioral;
