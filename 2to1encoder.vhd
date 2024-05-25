library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 2to1encoder is
    Port ( I : in  STD_LOGIC_VECTOR(1 downto 0);
           Y : in  STD_LOGIC);
end 2to1encoder;
architecture Behavioral of 2to1encoder is
begin
process(I)
begin
       if(I(1)='1')  then
              Y<="1";
        else
              Y<="0";
        end if;
end process;
end Behavioral;
