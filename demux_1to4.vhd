library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity demux_1to4 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end demux_1to4;
architecture Behavioral of demux_1to4 is
begin
process(I,S)
begin
    case S is
      when "00" =>
          Y<="0001";
      when "01" =>
          Y<="0010";
      when "10" =>
          Y<="0100";
      when "11" =>
          Y<="1000";
      when others =>
          Y<='0';
      end case;
end process;
end Behavioral;
