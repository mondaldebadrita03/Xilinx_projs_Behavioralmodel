library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 1to2decoder is
    Port ( I : in  STD_LOGIC;
           Y : in  STD_LOGIC_VECTOR(1 downto 0));
end 1to2decoder;
architecture Behavioral of 1to2decoder is
begin
process(I)
begin
       if(I='0')  then
              Y<="01";
        else
              Y<="10";
        end if;
end process;
end Behavioral;
