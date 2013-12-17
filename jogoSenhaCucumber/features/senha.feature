# language: pt
# encoding: utf-8

Funcionalidade: Avaliar Contra Senha

	Cenário:  Jogo sem acertos

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "5555"
		Entao a avaliacao deve retornar ""

	Cenário: Jogo com 1 digito correto retornando +

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "1555"
		Entao a avaliacao deve retornar "+"

	Cenário: Jogo com 1 digito correto retornando -

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "2555"
		Entao a avaliacao deve retornar "-"

	Cenário: Jogo com 2 digitos corretos retornando ++

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "5254"
		Entao a avaliacao deve retornar "++"

	Cenário: Jogo com 2 digitos corretos retornando +-

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "5154"
		Entao a avaliacao deve retornar "+-"

	Cenário: Jogo com 2 digitos corretos retornando --

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "2545"
		Entao a avaliacao deve retornar "--"

	Cenário: Jogo com 3 digitos corretos retornando +++

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "5234"
		Entao a avaliacao deve retornar "+++"

	Cenário: Jogo com 3 digitos corretos retornando ++-

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "5134"
		Entao a avaliacao deve retornar "++-"

	Cenário: Jogo com 3 digitos corretos retornando +--

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "5124"
		Entao a avaliacao deve retornar "+--"

	Cenário: Jogo com 3 digitos corretos retornando ---

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "5123"
		Entao a avaliacao deve retornar "---"

	Cenário: Jogo com todos corretos retornando ++++

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "1234"
		Entao a avaliacao deve retornar "++++"

	Cenário: Jogo com todos corretos retornando ++--

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "1243"
		Entao a avaliacao deve retornar "++--"

	Cenário: Jogo com todos corretos retornando +---

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "1423"
		Entao a avaliacao deve retornar "+---"

	Cenário: Jogo com todos corretos retornando ----

		Dado uma senha com o valor de "1234"
		Quando eu escolho contra_senha como "4321"
		Entao a avaliacao deve retornar "----"