library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 8to3encoder is
    Port ( I : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(1 downto 0));
end 8to3encoder;
architecture Behavioral of 8to3encoder is
begin
process(I)
begin
       case I is
       when "00000001" => Y<="000";
       when "00000010" => Y<="001";
       when "00000100" => Y<="010";
       when "00001000" => Y<="011";
       when "00010000" => Y<="100";
       when "00100000" => Y<="101";
       when "01000000" => Y<="110";
       when "10000000" => Y<="111";
       when others => Y<="000";
       end case;
end process;
end Behavioral;
