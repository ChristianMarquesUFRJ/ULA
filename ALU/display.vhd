--	Objetivo: Exibir valor em um display de 7 segmentos
--
-- Entradas: 	VALUE_IN, 
-- Saidas: 		DISPLAY_OUT
-----------------------------------------------------------------------------------------------------

------------------------------------
-- Bibliotecas
------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
------------------------------------

------------------------------------
-- Entidade Principal
------------------------------------
entity display is 
	port(
		VALUE_IN		:	in		std_logic_vector(3 downto 0);
		DISPLAY_OUT	:	out	std_logic_vector(6 downto 0));
end display;
------------------------------------



------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of display is

	---------------------------------
	-- Definição de componentes
	---------------------------------
	component FA_4_bits is
	port (
		x,y	:	in		std_logic_vector(3 downto 0);
		cin	:	in		std_logic;
		cout	:	out	std_logic;
		z		:	out	std_logic_vector(3 downto 0));
	end component;
	---------------------------------
	
	---------------------------------
	-- Definição de variáveis
	---------------------------------
	signal VALUE_IN_sub	:	std_logic_vector(3 downto 0);
	signal VALUE_IN_proc	:	std_logic_vector(3 downto 0);
	signal less_one_in_FA	:	std_logic_vector(3 downto 0) := "0111";
	---------------------------------
	
begin

	FA: FA_4_bits port map(VALUE_IN, less_one_in_FA, '0', open, VALUE_IN_sub); 	-- Subtrai 1

	process(VALUE_IN)
		variable NEG	:	std_logic := VALUE_IN(3); -- Variável que identifica se o valor é negativo
		
	begin
		 -- Caso o valor seja o número '8', que é um caso especial ou seja um número positivo
		if (VALUE_IN = "1000" or NEG = '0') then
			VALUE_IN_proc <= VALUE_IN;
		
		 -- Caso o valor seja um número negativo
		else
			-- Realiza o inverso do complemento de 2 para obter a magnitude do valor
			VALUE_IN_proc <= not VALUE_IN_sub;															-- Inverte todos os bits
			VALUE_IN_proc(3) <= '0';	-- Faz uma máscara para só obter de 0 a 7
		
		end if;
		
		case VALUE_IN_proc is
			--							   0123456
			when "0000" => DISPLAY_OUT <= "1000000"; -- "0"     
			when "0001" => DISPLAY_OUT <= "1111001"; -- "1" 
			when "0010" => DISPLAY_OUT <= "0100100"; -- "2" 
			when "0011" => DISPLAY_OUT <= "0110000"; -- "3" 
			when "0100" => DISPLAY_OUT <= "0011001"; -- "4" 
			when "0101" => DISPLAY_OUT <= "0010010"; -- "5" 
			when "0110" => DISPLAY_OUT <= "0000010"; -- "6" 
			when "0111" => DISPLAY_OUT <= "1111000"; -- "7" 
			when "1000" => DISPLAY_OUT <= "0000000"; -- "8"
			when others => DISPLAY_OUT <= "1111111"; -- "apagado"
		end case;
	
	end process;
	
end hardware;
------------------------------------