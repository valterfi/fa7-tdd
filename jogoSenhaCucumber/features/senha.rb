class Jogo

		def initialize()  
	     
    	end

    	def iniciar(senha)
    		@senha = senha
    	end

    	def avaliar(contra_senha)

    		avaliacao = ""

    		(0..3).each do |index|

	    		if digito_exato?(contra_senha, index)
	    			avaliacao << "+"
	    		end
	    	end

	    	(0..3).each do |index|

	    		if digito_correto?(contra_senha, index)
	    			avaliacao << "-"
	    		end
	    	end

    		return avaliacao
    	end

    	def digito_exato?(contra_senha, index)
    		@senha[index] == contra_senha[index]
    	end

    	def digito_correto?(contra_senha, index)
    		@senha.include?(contra_senha[index]) && !digito_exato?(contra_senha, index)

    	end

	end


Dado(/^uma senha com o valor de "(.*?)"$/) do |senha|
  @jogo = Jogo.new
  @jogo.iniciar(senha)
end

Quando(/^eu escolho contra_senha como "(.*?)"$/) do |contra_senha|
  @avaliacao = @jogo.avaliar(contra_senha)
end

Entao(/^a avaliacao deve retornar "(.*?)"$/) do |avaliacao|
  @avaliacao.should == avaliacao
end