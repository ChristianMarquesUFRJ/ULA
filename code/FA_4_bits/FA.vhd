-- UNIVERSIDADE FEDERAL DO RIO DE JANEIRO - UFRJ
-- Autor: Christian Marques de Oliveira Silva
--	Disciplina: Laboratório de Sistemas Digitais
--
--	Objetivo: Full adder simples (bloco generico)
--
-- Entradas: 	A, B, C_in
-- Saidas: 		S, C_out
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
entity FA is 
	port(
		A, B, C_in	:	in		std_logic;
		S, C_out		: 	out	std_logic);
end FA;
------------------------------------



------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of FA is
begin

	S 		<= A xor B xor C_in;
	C_out	<= (A and C_in) or (B and C_in) or (A and B);

end hardware;
------------------------------------