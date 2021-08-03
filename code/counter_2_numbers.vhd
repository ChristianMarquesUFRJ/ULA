--	Objetivo: Contador crescente de -8 a 7 para 2 operandos de 4 bits
--
-- Entradas: 	clk, pause
-- Saidas: 		A[4], B[4]
-----------------------------------------------------------------------------------------------------

------------------------------------
-- Bibliotecas
------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------

------------------------------------
-- Entidade Principal
------------------------------------
entity counter_2_numbers is 
	port(
		clk		:	in		std_logic;								-- Clock de entrada do sistema
		pause		:	in		std_logic;								-- Evita que o contador aumente (estagnando os 2 operandos)
		A, B		: 	out	std_logic_vector(3 downto 0));	-- Operandos de Saída
end counter_2_numbers;
------------------------------------



------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of counter_2_numbers is

	-- Definicao do componente
	component counter is
	generic(times : integer := 1); -- Vezes em que o limite máximo será multiplicado para possibilitar um incremento
	port(
		clk		:	in		std_logic;								-- Clock de entrada do sistema
		pause		:	in		std_logic;								-- Evita que o contador aumente (estagnando os 2 operandos)
		q			: 	out	std_logic_vector(3 downto 0));	-- Operando de Saída
	end component;

begin

	A_counter: counter generic map(2) 		port map(clk, pause, A);
	B_counter: counter generic map(1)		port map(clk, pause, B);

end hardware;
------------------------------------