library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 1to2demux is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end 1to2demux;
architecture Behavioral of 1to2demux is
begin
process(I,S)
begin
      if(S='0') then
          Y(0)<=I;
          Y(1)<='0';
      else
          Y(0)<='0';
          Y(1)<=I;
      end if;
end process;
end Behavioral;
