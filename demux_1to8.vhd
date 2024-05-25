library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity demux_1to8 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end demux_1to8;
architecture Behavioral of demux_1to8 is
begin
process(I,S)
begin
    case S is
      when "000" =>
          Y<="00000001";
      when "001" =>
          Y<="00000010";
      when "010" =>
          Y<="00000100";
      when "011" =>
          Y<="00001000";
      when "100" =>
          Y<="00010000";
      when "101" =>
          Y<="00100000";
      when "110" =>
          Y<="01000000";
      when "111" =>
          Y<="10000000";
      end case;
end process;
end Behavioral;
