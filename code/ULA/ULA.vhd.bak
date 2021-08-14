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
entity ULA is 
port(
	X,Y						:	out	std_logic_vector(3 downto 0);		-- Operandos de 4 bits
	SEL						:	in		std_logic_vector(2 downto 0);
	PAUSE 					: 	in		std_logic;								-- Para temporariamente o incremento dos operandos
	CLK						:	in		std_logic;								-- Clock para o funcionamento do sistema
	ZER,NEG,OVER			:	out	std_logic;
	COUT						:	inout	std_logic;
	RESULT					:	out	std_logic_vector(3 downto 0));	-- Resultado de 4 bits dos 2 operandos 
end ULA;
------------------------------------



------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of ULA is

	---------------------------------
	-- Definição de componentes
	---------------------------------
	component Add_Sub_C2 is
	port (
		A,B							:	in		std_logic_vector(3 downto 0);		-- Operandos de 4 bits
		IS_ADD						:	in		std_logic;								-- Definição de soma ou subtração
		ZERO,NEGATIVE,OVERFLOW	:	out	std_logic;								-- Flags de indicação de zero, valor negativo e overflow, respectivamente
		C_OUT							:	inout	std_logic;								-- Flag de Carry Out
		RESULT						:	out	std_logic_vector(3 downto 0));	-- Resultado de 4 bits dos 2 operandos 
	end component;
	
	component counter_2_numbers is
	port (
		clk		:	in		std_logic;								-- Clock de entrada do sistema
		pause		:	in		std_logic;								-- Evita que o contador aumente (estagnando os 2 operandos)
		A, B		: 	out	std_logic_vector(3 downto 0));	-- Operandos de Saída
	end component;
	
	component display is
	port (
		VALUE_IN		:	in		std_logic_vector(3 downto 0);
		DISPLAY_OUT	:	out	std_logic_vector(6 downto 0));
	end component;
	---------------------------------

	signal A, B 											:	std_logic_vector(3 downto 0);
	signal resAdd, resSub, res_bin 					:	std_logic_vector(3 downto 0);
	signal zer_add, neg_add, over_add, cout_add	:	std_logic;
	signal zer_sub, neg_sub, over_sub, cout_sub	:	std_logic;

begin

	counter: counter_2_numbers port map(CLK, PAUSE, A, B);
	
	X <= A;
	Y <= B;

	Add_C2: Add_Sub_C2 port map(A, B, '1', zer_add, neg_add, over_add, cout_add, resAdd);
	Sub_C2: Add_Sub_C2 port map(A, B, '0', zer_sub, neg_sub, over_sub, cout_sub, resSub);
	
	process(A, B, SEL)
	begin
	
		-- ADD
		if (SEL = "000") then 
			RESULT 	<= resAdd;
			ZER 		<= zer_add;
			NEG 		<= neg_add;
			OVER 		<= over_add;
			COUT 		<= cout_add;
			
		-- SUB
		elsif (SEL = "001") then
			RESULT <= resSub;
			ZER 		<= zer_sub;
			NEG 		<= neg_sub;
			OVER 		<= over_sub;
			COUT 		<= cout_sub;
		
		-- Operações binárias
		else
			
			NEG 		<= '0';
			OVER 		<= '0';
			COUT 		<= '0';
			
			-- NOT A
			if (SEL = "010") then
				res_bin <= (not (A));
				
			-- NOT B
			elsif (SEL = "011") then
				res_bin <= not B;
				
			-- A AND B
			elsif (SEL = "100") then
				res_bin <= A and B;
				
			-- A OR B
			elsif (SEL = "101") then
				res_bin <= A or B;
				
			-- A XOR B
			elsif (SEL = "110") then
				res_bin <= A xor B;
				
			-- A XNOR B
			else
				res_bin <= A xnor B;
				
			end if;
			
			-- Flag de zero (é possível em operações binárias)
			if (res_bin = "0000") then
				ZER <= '1';
			else
				ZER <= '0';
			end if;
			
			-- Resultado da operação binária
			RESULT <= res_bin;
			
		end if;
		
	end process;

end hardware;
------------------------------------










