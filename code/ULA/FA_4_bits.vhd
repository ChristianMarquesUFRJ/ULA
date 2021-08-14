-- UNIVERSIDADE FEDERAL DO RIO DE JANEIRO - UFRJ
-- Autor: Christian Marques de Oliveira Silva
--	Disciplina: Laboratório de Sistemas Digitais
--
--	Objetivo: Full adder de 4 bits utilizando a unidade do Full Adder de um bit
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
entity FA_4_bits is
port (
	x,y	:	in		std_logic_vector(3 downto 0);
	cin	:	in		std_logic;
	cout	:	out	std_logic;
	cout_1:	out	std_logic;
	z		:	out	std_logic_vector(3 downto 0));
end FA_4_bits;
------------------------------------



------------------------------------
-- Arquitetura Principal
------------------------------------
architecture hardware of FA_4_bits is

	-- Definicao do componente
	component FA is 
	port(
		A, B, C_in	:	in		std_logic;
		S, C_out		: 	out	std_logic);
	end component;
	--

	signal carry	:	std_logic_vector (3 downto 0);

begin

	a0:	FA	port map(x(0), y(0), cin,		 z(0), carry(0));
	a1:	FA	port map(x(1), y(1), carry(0), z(1), carry(1));
	a2:	FA	port map(x(2), y(2), carry(1), z(2), carry(2));
	a3:	FA	port map(x(3), y(3), carry(2), z(3), carry(3));
	
	cout_1 	<= carry(2);
	cout		<= carry(3);

end hardware;
------------------------------------