library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity ROM is
    Port ( address : in STD_LOGIC_VECTOR (5 downto 0);
           data_out : out STD_LOGIC_VECTOR (31 downto 0));
end ROM;

architecture Behavioral of ROM is

type memory is array (0 to 31) of std_logic_vector (31 downto 0);
signal ROM: memory := ( B"000000_01010_01010_01010_00000_100110",
                        B"000000_00000_00000_00000_00000_100110",
                        B"000000_11110_11110_11110_00000_100110",
                        B"000000_00011_00011_00011_00000_100110",
                        B"001000_00011_00011_1111111111111111",
                        B"100011_01010_00001_0000000000000000",
                        B"001000_01010_01010_0000000000000100",
                        B"001000_00000_00000_0000000000001000",
                        B"001000_01010_01011_0000000000100000",
                        B"000100_01010_01011_0000000000000101",
                        B"100011_01010_00010_0000000000000000",
                        B"000000_00010_00011_00010_00000_100100",
                        B"000000_00010_00011_00010_00000_100100",
                        B"001000_01010_01010_0000000000000100",
                        B"000010_00000000000000000000001001",
                        B"101011_00100_00000_0000000000000000",
                        others => x"FFFFFFFF");

begin
    data_out <= ROM(conv_integer (address));
end Behavioral;