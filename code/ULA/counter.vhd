-- Objetivo: Contador simples de -8 a 7 (complemento de 2)
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
entity counter is
	generic(times : integer := 1); -- Vezes em que o limite máximo será multiplicado para possibilitar um incremento
	port(
		clk		:	in		std_logic;								-- Clock de entrada do sistema
		pause		:	in		std_logic;								-- Evita que o contador aumente (estagnando os 2 operandos)
		q			: 	out	std_logic_vector(3 downto 0));	-- Operando de Saída
end counter;
------------------------------------


------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of counter is

begin

	counter_process : process(clk)
		variable counter_output	: std_logic_vector (3 downto 0) := "1000";							-- Contador da saída (-8 a 7)
		variable prescaler: std_logic_vector (30 downto 0) := (others=>'0');	-- Contador p/ redução da atualização de saída (~1 seg)
		variable maximum	: integer := 100000000;	-- Contador p/ redução da atualização de saída (~1 seg)
	begin
			
		if (rising_edge(clk) and (pause /= '1')) then -- Toda vez que houver um pulso de clock e não estiver no modo pausa
		
			prescaler := prescaler + 1;
			
			if (prescaler = (maximum * times)) then
				prescaler := (others=>'0');
				
				if (counter_output = "1111") then counter_output := "0000"; 	-- Zera o contador quando chegar no limite
				else counter_output := counter_output + 1;							-- Incrementa o contador a cada pulso de clock
				end if;
			end if;
				
		end if;
	
		-- Atualiza a saída com o valor do contador
		q <= counter_output;
		
	end process;
	

end hardware;
------------------------------------