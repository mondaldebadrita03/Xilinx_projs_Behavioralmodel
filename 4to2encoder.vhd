library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 4to2encoder is
    Port ( I : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(1 downto 0));
end 4to2encoder;
architecture Behavioral of 4to2encoder is
begin
process(I)
begin
       if(I(0)='1')  then
              Y<="00";
        elsif(I(1)='1') then
              Y<="01";
        elsif(I(2)='1') then
              Y<="10";
        elsif(I(3)='1') then
              Y<="11";
        else
              Y<="00";
        end if;
end process;
end Behavioral;
