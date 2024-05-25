library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity 2to4decoder is
    Port ( I : in  STD_LOGIC_VECTOR(1 downto 0);
           Y : in  STD_LOGIC_VECTOR(3 downto 0));
end 2to4decoder;
architecture Behavioral of 2to4decoder is
begin
process(I)
begin
       case I is
       when "00" => Y<="0001";
       when "01" => Y<="0010";
       when "10" => Y<="0100";
       when "11" => Y<="1000";
       when others => Y<="0000";
       end case;
end process;
end Behavioral;
