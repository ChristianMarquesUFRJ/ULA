-- UNIVERSIDADE FEDERAL DO RIO DE JANEIRO - UFRJ
-- Autor: Christian Marques de Oliveira Silva
--	Disciplina: Laboratório de Sistemas Digitais
--
--	Objetivo: Desenvolvimento de uma Unidade Lógica e Aritmética (ULA) de 4 bits e 8 operações
--
--	Requisitos:
--	* Operação da ULA selecionada por 3 chaves externas;
--	* Operações obrigatórias: soma e subtração em complemento a 2;
--	* Dados de entrada gerados por um módulo auxiliar, “bancada de testes”, explicado mais
--	abaixo;
--	* Exibição dos dados de entrada e resultado, em caracteres hexadecimais, nos displays de 7
--	segmentos disponíveis na placa FPGA DE2-115, no laboratório LABSLAND.
--	* Saídas: operandos e resultados, exibidos nos displays de 7 segmentos. 4 flags: Zero, Negativo,
--	Carry out e Overflow exibidos nos LEDs disponíveis na placa FPGA DE2-115.
--
--	Funcionamento
--		As entradas da ULA são geradas por um módulo “bancada de testes”, um contador, parte
--	integrante do projeto. As duas entradas são mostradas, juntamente com o resultado, nos
--	displays de 7 segmentos disponíveis. Os LEDs são utilizados para mostrar as quatro “flags”. Os
--	operandos vão mudando, em ordem crescente, a cada 2 segundos.
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
entity labsland is 
	port(
	V_SW						:	in		std_logic_vector(3 downto 0);
	G_LED						:	out	std_logic_vector(3 downto 0);
	G_CLOCK_50				:	in		std_logic;								-- Clock para o funcionamento do sistema
	G_HEX7	    			:	out	std_logic_vector(6 downto 0);		-- Sinal A
	G_HEX6	    			:	out	std_logic_vector(6 downto 0);		-- Operando A
	G_HEX5	    			:	out	std_logic_vector(6 downto 0);		-- Sinal B
	G_HEX3	    			:	out	std_logic_vector(6 downto 0);		-- Operação
	G_HEX4	    			:	out	std_logic_vector(6 downto 0);		-- Operando B
	G_HEX2	    			:	out	std_logic_vector(6 downto 0);		-- Igualdade
	G_HEX1	    			:	out	std_logic_vector(6 downto 0);		-- Sinal do Resultado
	G_HEX0	    			:	out	std_logic_vector(6 downto 0));	-- Resultado da operação
end labsland;


------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of labsland is

	-- Definicao do componente
	component ULA is 
	port(
		X,Y						:	out	std_logic_vector(3 downto 0);		-- Operandos de 4 bits
		SEL						:	in		std_logic_vector(2 downto 0);
		PAUSE 					: 	in		std_logic;								-- Para temporariamente o incremento dos operandos
		CLK						:	in		std_logic;								-- Clock para o funcionamento do sistema
		ZER,NEG,OVER			:	out	std_logic;
		COUT						:	out	std_logic;
		RESULT					:	out	std_logic_vector(3 downto 0));	-- Resultado de 4 bits dos 2 operandos 
	end component;
	
	component display is 
	port(
		VALUE_IN		:	in		std_logic_vector(3 downto 0);
		DISPLAY_OUT	:	out	std_logic_vector(6 downto 0));
	end component;
	--
	
	
	-- Conversões
	signal PAUSE,ZER,NEG,OVER,COUT 								: std_logic;
	signal SEL 															: std_logic_vector(2 downto 0);
	signal A,B,RESULT 												: std_logic_vector(3 downto 0);
	signal DISPLAY_A,DISPLAY_B,DISPLAY_RES,DISPLAY_OP 		: std_logic_vector(6 downto 0);
	signal DISPLAY_SA,DISPLAY_SB,DISPLAY_SRES,DISPLAY_IG	: std_logic_vector(6 downto 0);
	--
	
	signal display_neg 	: std_logic_vector(6 downto 0) := "0111111";
	signal display_pos 	: std_logic_vector(6 downto 0) := "1111111";
	signal display_eq 	: std_logic_vector(6 downto 0) := "0110111";
	
begin

	SEL 	<= V_SW(2 downto 0); -- Renomeia a seleção de operação
	PAUSE <= V_SW(3);
	
--	A 			<= "0010";
--	B			<= "0011";
--	RESULT 	<= "0101";
--	ZER	<= '1';
--	NEG	<= '1';
--	OVER	<= '1';
--	COUT	<= '1';

	ULA_calculate: ULA port map(A,B,SEL,PAUSE,G_CLOCK_50,ZER,NEG,OVER,COUT,RESULT);

	disp_A: display port map(A, DISPLAY_A); 
	disp_B: display port map(B, DISPLAY_B); 
	disp_Op: display port map('0' & SEL, DISPLAY_OP); 
	disp_RES: display port map(RESULT, DISPLAY_RES);
	
	process(A,B,RESULT)
	begin
		if (A(3) = '1') then -- Operando A é negativo
			DISPLAY_SA 		<= display_neg;
		else -- Operando A é positivo
			DISPLAY_SA 		<= display_pos;
		end if;
		
		if (B(3) = '1') then -- Operando B é negativo
			DISPLAY_SB 		<= display_neg;
		else -- Operando B é positivo
			DISPLAY_SB 		<= display_pos;
		end if;
		
		if (RESULT(3) = '1') then -- Resultado é negativo
			DISPLAY_SRES 		<= display_neg;
		else -- Resultado é positivo
			DISPLAY_SRES 		<= display_pos;
		end if;
	end process;
	
	DISPLAY_IG 		<= display_eq;
	G_HEX7 	<= DISPLAY_SA;
	G_HEX6 	<= DISPLAY_A;
	G_HEX5	<= DISPLAY_SB;
	G_HEX4 	<= DISPLAY_B;
	G_HEX3	<= DISPLAY_OP;
	G_HEX2	<= DISPLAY_IG;
	G_HEX1	<= DISPLAY_SRES;
	G_HEX0	<= DISPLAY_RES;
	G_LED		<= ZER & NEG & OVER & COUT;

end hardware;
------------------------------------