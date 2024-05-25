library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end full_adder;
architecture Behavioral of full_adder is
begin
process(a,b,cin)
begin
       if(((a='0') and (b='0') and (cin='0')) or ((a='0') and (b='1') and (cin='1')) or ((a='1') and (b='0') and (cin='1')) or ((a='1') and (b='1') and (cin='0')))  then
              s<='0';
        else
              s<='1';
        end if;
        if(((a='0') and (b='0') and (cin='0')) or ((a='0') and (b='0') and (cin='1')) or ((a='0') and (b='1') and (cin='0')) or ((a='1') and (b='0') and (cin='0'))) then
             cout<='0';
        else
             cout<='1';
        end if;
end process;
end Behavioral;
