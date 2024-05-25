library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 2to1mux is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end 2to1mux;
architecture Behavioral of 2to1mux is
begin
process(I,S)
begin
        if(S='1') then
              Y<= I(1);
        else
              Y<=I(0);
        end if;
    end process;
end Behavioral;
