library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity xnor_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end xnor_gate;
architecture Behavioral of xnor_gate is
begin
process(a,b)
begin
       if((a='1') and (b='1')) or ((a='0') and (b='0')) then
              c<='1';
        else
              c<='0';
        end if;
end process;
end Behavioral;
