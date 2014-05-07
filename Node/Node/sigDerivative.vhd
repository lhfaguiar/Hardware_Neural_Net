--Derivative of the sigmoid function, for use in back propagation
--Note: Current implementation shifted so that no values are 0, so learning occurs at all points on the curve
--383 Final Project
--By C2C William Parks
--6 May 2014
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sigDerivative is
    Port ( input : in  STD_LOGIC_VECTOR (7 downto 0);
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end sigDerivative;

architecture Behavioral of sigDerivative is

begin
	output <=   "00001" when input = "10000000" else
					"00001" when input = "10000001" else
					"00001" when input = "10000010" else
					"00001" when input = "10000011" else
					"00001" when input = "10000100" else
					"00001" when input = "10000101" else
					"00001" when input = "10000110" else
					"00001" when input = "10000111" else
					"00001" when input = "10001000" else
					"00001" when input = "10001001" else
					"00001" when input = "10001010" else
					"00001" when input = "10001011" else
					"00001" when input = "10001100" else
					"00001" when input = "10001101" else
					"00001" when input = "10001110" else
					"00001" when input = "10001111" else
					"00001" when input = "10010000" else
					"00001" when input = "10010001" else
					"00001" when input = "10010010" else
					"00001" when input = "10010011" else
					"00001" when input = "10010100" else
					"00001" when input = "10010101" else
					"00001" when input = "10010110" else
					"00001" when input = "10010111" else
					"00001" when input = "10011000" else
					"00001" when input = "10011001" else
					"00001" when input = "10011010" else
					"00001" when input = "10011011" else
					"00001" when input = "10011100" else
					"00001" when input = "10011101" else
					"00001" when input = "10011110" else
					"00001" when input = "10011111" else
					"00001" when input = "10100000" else
					"00001" when input = "10100001" else
					"00001" when input = "10100010" else
					"00001" when input = "10100011" else
					"00001" when input = "10100100" else
					"00001" when input = "10100101" else
					"00001" when input = "10100110" else
					"00001" when input = "10100111" else
					"00001" when input = "10101000" else
					"00001" when input = "10101001" else
					"00001" when input = "10101010" else
					"00001" when input = "10101011" else
					"00001" when input = "10101100" else
					"00001" when input = "10101101" else
					"00001" when input = "10101110" else
					"00001" when input = "10101111" else
					"00001" when input = "10110000" else
					"00001" when input = "10110001" else
					"00001" when input = "10110010" else
					"00001" when input = "10110011" else
					"00001" when input = "10110100" else
					"00001" when input = "10110101" else
					"00001" when input = "10110110" else
					"00001" when input = "10110111" else
					"00001" when input = "10111000" else
					"00001" when input = "10111001" else
					"00001" when input = "10111010" else
					"00001" when input = "10111011" else
					"00001" when input = "10111100" else
					"00001" when input = "10111101" else
					"00001" when input = "10111110" else
					"00001" when input = "10111111" else
					"00001" when input = "11000000" else
					"00001" when input = "11000001" else
					"00001" when input = "11000010" else
					"00001" when input = "11000011" else
					"00001" when input = "11000100" else
					"00001" when input = "11000101" else
					"00001" when input = "11000110" else
					"00001" when input = "11000111" else
					"00001" when input = "11001000" else
					"00001" when input = "11001001" else
					"00010" when input = "11001010" else
					"00010" when input = "11001011" else
					"00010" when input = "11001100" else
					"00010" when input = "11001101" else
					"00010" when input = "11001110" else
					"00010" when input = "11001111" else
					"00010" when input = "11010000" else
					"00010" when input = "11010001" else
					"00010" when input = "11010010" else
					"00010" when input = "11010011" else
					"00010" when input = "11010100" else
					"00010" when input = "11010101" else
					"00010" when input = "11010110" else
					"00010" when input = "11010111" else
					"00010" when input = "11011000" else
					"00010" when input = "11011001" else
					"00010" when input = "11011010" else
					"00010" when input = "11011011" else
					"00010" when input = "11011100" else
					"00010" when input = "11011101" else
					"00100" when input = "11011110" else
					"00100" when input = "11011111" else
					"00100" when input = "11100000" else
					"00100" when input = "11100001" else
					"00100" when input = "11100010" else
					"00100" when input = "11100011" else
					"00100" when input = "11100100" else
					"00100" when input = "11100101" else
					"00100" when input = "11100110" else
					"00100" when input = "11100111" else
					"00100" when input = "11101000" else
					"00100" when input = "11101001" else
					"00110" when input = "11101010" else
					"00110" when input = "11101011" else
					"00110" when input = "11101100" else
					"00110" when input = "11101101" else
					"00110" when input = "11101110" else
					"00110" when input = "11101111" else
					"00110" when input = "11110000" else
					"00110" when input = "11110001" else
					"00110" when input = "11110010" else
					"00110" when input = "11110011" else
					"00110" when input = "11110100" else
					"01000" when input = "11110101" else
					"01000" when input = "11110110" else
					"01000" when input = "11110111" else
					"01000" when input = "11111000" else
					"01000" when input = "11111001" else
					"01000" when input = "11111010" else
					"01000" when input = "11111011" else
					"01000" when input = "11111100" else
					"01000" when input = "11111101" else
					"01000" when input = "11111110" else
					"01000" when input = "11111111" else
					"01000" when input = "00000000" else
					"01000" when input = "00000001" else
					"01000" when input = "00000010" else
					"01000" when input = "00000011" else
					"01000" when input = "00000100" else
					"01000" when input = "00000101" else
					"01000" when input = "00000110" else
					"01000" when input = "00000111" else
					"01000" when input = "00001000" else
					"01000" when input = "00001001" else
					"01000" when input = "00001010" else
					"01000" when input = "00001011" else
					"00110" when input = "00001100" else
					"00110" when input = "00001101" else
					"00110" when input = "00001110" else
					"00110" when input = "00001111" else
					"00110" when input = "00010000" else
					"00110" when input = "00010001" else
					"00110" when input = "00010010" else
					"00110" when input = "00010011" else
					"00110" when input = "00010100" else
					"00110" when input = "00010101" else
					"00110" when input = "00010110" else
					"00100" when input = "00010111" else
					"00100" when input = "00011000" else
					"00100" when input = "00011001" else
					"00100" when input = "00011010" else
					"00100" when input = "00011011" else
					"00100" when input = "00011100" else
					"00100" when input = "00011101" else
					"00100" when input = "00011110" else
					"00100" when input = "00011111" else
					"00100" when input = "00100000" else
					"00100" when input = "00100001" else
					"00100" when input = "00100010" else
					"00010" when input = "00100011" else
					"00010" when input = "00100100" else
					"00010" when input = "00100101" else
					"00010" when input = "00100110" else
					"00010" when input = "00100111" else
					"00010" when input = "00101000" else
					"00010" when input = "00101001" else
					"00010" when input = "00101010" else
					"00010" when input = "00101011" else
					"00010" when input = "00101100" else
					"00010" when input = "00101101" else
					"00010" when input = "00101110" else
					"00010" when input = "00101111" else
					"00010" when input = "00110000" else
					"00010" when input = "00110001" else
					"00010" when input = "00110010" else
					"00010" when input = "00110011" else
					"00010" when input = "00110100" else
					"00010" when input = "00110101" else
					"00010" when input = "00110110" else
					"00001" when input = "00110111" else
					"00001" when input = "00111000" else
					"00001" when input = "00111001" else
					"00001" when input = "00111010" else
					"00001" when input = "00111011" else
					"00001" when input = "00111100" else
					"00001" when input = "00111101" else
					"00001" when input = "00111110" else
					"00001" when input = "00111111" else
					"00001" when input = "01000000" else
					"00001" when input = "01000001" else
					"00001" when input = "01000010" else
					"00001" when input = "01000011" else
					"00001" when input = "01000100" else
					"00001" when input = "01000101" else
					"00001" when input = "01000110" else
					"00001" when input = "01000111" else
					"00001" when input = "01001000" else
					"00001" when input = "01001001" else
					"00001" when input = "01001010" else
					"00001" when input = "01001011" else
					"00001" when input = "01001100" else
					"00001" when input = "01001101" else
					"00001" when input = "01001110" else
					"00001" when input = "01001111" else
					"00001" when input = "01010000" else
					"00001" when input = "01010001" else
					"00001" when input = "01010010" else
					"00001" when input = "01010011" else
					"00001" when input = "01010100" else
					"00001" when input = "01010101" else
					"00001" when input = "01010110" else
					"00001" when input = "01010111" else
					"00001" when input = "01011000" else
					"00001" when input = "01011001" else
					"00001" when input = "01011010" else
					"00001" when input = "01011011" else
					"00001" when input = "01011100" else
					"00001" when input = "01011101" else
					"00001" when input = "01011110" else
					"00001" when input = "01011111" else
					"00001" when input = "01100000" else
					"00001" when input = "01100001" else
					"00001" when input = "01100010" else
					"00001" when input = "01100011" else
					"00001" when input = "01100100" else
					"00001" when input = "01100101" else
					"00001" when input = "01100110" else
					"00001" when input = "01100111" else
					"00001" when input = "01101000" else
					"00001" when input = "01101001" else
					"00001" when input = "01101010" else
					"00001" when input = "01101011" else
					"00001" when input = "01101100" else
					"00001" when input = "01101101" else
					"00001" when input = "01101110" else
					"00001" when input = "01101111" else
					"00001" when input = "01110000" else
					"00001" when input = "01110001" else
					"00001" when input = "01110010" else
					"00001" when input = "01110011" else
					"00001" when input = "01110100" else
					"00001" when input = "01110101" else
					"00001" when input = "01110110" else
					"00001" when input = "01110111" else
					"00001" when input = "01111000" else
					"00001" when input = "01111001" else
					"00001" when input = "01111010" else
					"00001" when input = "01111011" else
					"00001" when input = "01111100" else
					"00001" when input = "01111101" else
					"00001" when input = "01111110" else
					"00001" when input = "01111111" else
					(others => '0');

end Behavioral;
