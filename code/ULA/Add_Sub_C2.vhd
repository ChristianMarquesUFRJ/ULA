-- UNIVERSIDADE FEDERAL DO RIO DE JANEIRO - UFRJ
-- Autor: Christian Marques de Oliveira Silva
--	Disciplina: Laboratório de Sistemas Digitais
--
--	Objetivo: Desenvolvimento de um somador e subtrator em complemento de 2 para 4 bits
--
--	Entradas: 	A[4], B[4], IS_ADD
-- Saidas: 		RESULT[4], ZERO, NEGATIVE, OVERFLOW, C_OUT
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
entity Add_Sub_C2 is 
port(
	A,B							:	in		std_logic_vector(3 downto 0);		-- Operandos de 4 bits
	IS_ADD						:	in		std_logic;								-- Definição de soma ou subtração
	ZERO,NEGATIVE,OVERFLOW	:	out	std_logic;								-- Flags de indicação de zero, valor negativo e overflow, respectivamente
	C_OUT							:	out	std_logic;								-- Flag de Carry Out
	RESULT						:	out	std_logic_vector(3 downto 0));	-- Resultado de 4 bits dos 2 operandos 
end Add_Sub_C2;
------------------------------------



------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of Add_Sub_C2 is

	component FA_4_bits is
	port (
		x,y	:	in		std_logic_vector(3 downto 0);
		cin	:	in		std_logic;
		cout	:	out	std_logic;
		cout_1:	out	std_logic;
		z		:	out	std_logic_vector(3 downto 0));
	end component;

	signal operatorB, res	: std_logic_vector(3 downto 0);
	signal signalRES			: std_logic := res(3);
	signal c_in					: std_logic;
	signal c_out_0, c_out_1	: std_logic; -- Carry out do último bit e Carry out do bit anterior
	signal over 				: std_logic; -- Overflow

begin
	
	-- Prepara o segundo operando para a operação (inverte caso seja uma subtração)
	with IS_ADD select operatorB <= 
		B 		when '1', -- Soma
		not B when '0'; -- Subtração
		
	-- Prepara o carry in para a operação (1 caso seja uma subtração)
	c_in <= not IS_ADD;
	
	Full_Adder: FA_4_bits port map(A, operatorB, c_in, c_out_0, c_out_1, res);
	
	-- Caso seja uma adição, a saída é o COUT; 
	-- Caso seja uma subtração, a saída é COUT barrado (not COUT)
	C_OUT <= ((not IS_ADD) and c_out_0) or (IS_ADD and (not c_out_0));
	
	-- Caso o carry do bit atual e do anterior sejam diferentes, houve overflow
	over <= c_out_0 xor c_out_1;
	
	-- Se não houve overflow e o bit mais significativo do resultado for 1, o número é negativo
	-- 1000 (-8) a 1111 (-1)
	NEGATIVE <= signalRES and (not over);
	
	-- Se não houve overflow e todos os bits de resultado são 0, a saída realmente é zero
	ZERO <= (not over) and (not res(3)) and (not res(2)) and (not res(1)) and (not res(0));
	
	-- Passagem dos sinais para as saídas
	OVERFLOW <= over;
	RESULT <= res;

end hardware;
------------------------------------










