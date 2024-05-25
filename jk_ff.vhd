library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity jk_ff is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end jk_ff;
architecture Behavioral of jk_ff is
begin
process(CLK)
variable temp: STD_LOGIC :='0';
begin
        if rising_edge(CLK) then
               if J='0' and K='0' then
                  temp:=temp;
               elsif J='0' and K='1' then
                  temp:='0';
               elsif J='1' and K='0' then
                  temp:='1';
               else
                  temp:=not temp;
                end if;
          end if;
                Q<=temp;
                Qbar<=not temp;
          end if;
end process;
end Behavioral;
