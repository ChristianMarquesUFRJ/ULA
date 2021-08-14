-- UNIVERSIDADE FEDERAL DO RIO DE JANEIRO - UFRJ
-- Autor: Christian Marques de Oliveira Silva
--	Disciplina: Laboratório de Sistemas Digitais
--
--	Objetivo: Desenvolvimento de um somador e subtrator em complemento de 2 para 4 bits
--
--	Entradas: x[4], y[4], cin
-- Saidas: s[4], cout
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
	C_OUT							:	inout	std_logic;								-- Flag de Carry Out
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
		z		:	out	std_logic_vector(3 downto 0));
	end component;

	signal operatorA, operatorB, res, res_map	:	std_logic_vector(3 downto 0);
	signal c_in	:	std_logic;

begin


	proc: process(A,B)
		variable signalA	: std_logic := A(3);
		variable signalB 	: std_logic := B(3);
		variable A_diff_B : std_logic := signalA xor signalB;
	begin
		
		-- Inicialização padrão das entradas	
		operatorA <= A;
		operatorB <= B;
		------------------------------------

		 -- Soma em complemento de 2
		if (IS_ADD = '1') then
			c_in <= '0';
		
		-- Subtração em complemento de 2
		else
			operatorB <= not B;
			c_in <= '1';
		end if;
		
		
	end process proc;
	
	Full_Adder: FA_4_bits port map(operatorA, operatorB, c_in, C_OUT, res_map);
	
	check_result: process(operatorA,operatorB)
		variable signalA	: std_logic := operatorA(3);
		variable signalB 	: std_logic := operatorB(3);
		variable A_diff_B : std_logic := signalA xor signalB;
	begin
	
		res <= res_map;
			
		-- Se os operadores possuem o mesmo sinal e a resposta tem um sinal diferente, houve overflow
		if ((A_diff_B = '0') and (res(3) /= signalA)) then
			OVERFLOW <= '1';
			ZERO 		<= '0';
			NEGATIVE <= '0';
		
		else -- Não houve overflow
			OVERFLOW <= '0';
			
			-- Flag de resultado negativo
			if (res(3) = '1') then NEGATIVE <= '1'; else NEGATIVE <= '0'; end if;
			
			-- Flag de resultado zero
			if (res = "0000") then ZERO <= '1'; else ZERO <= '0'; end if;
		end if;
		
	
	end process check_result;
	
	RESULT <= res;

end hardware;
------------------------------------










