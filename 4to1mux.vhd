library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 4to1mux is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end 4to1mux;
architecture Behavioral of 4to1mux is
begin
process(I,S)
begin
        if(S='00') then
              Y<= I(0);
        elsif(S='01') then
              Y<= I(1);
        elsif(S='10') then
              Y<= I(2);
          else
              Y<=I(3);
        end if;
    end process;
end Behavioral;
