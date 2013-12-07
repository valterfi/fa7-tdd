class RomanosParser

	def parser(numeroRomano)

		soma = 0

		numeroRomano.length.times do |i|
			letraRomana = numeroRomano[i]
			proxLetraRomana = numeroRomano[i+1]

			valor = getValor(letraRomana)

			unless proxLetraRomana.nil?
				proxValor = getValor(proxLetraRomana)
				if(soma == 0 && (valor < proxValor))
					raise "numero romano invalido"
				else(valor < proxValor)

				end				
			end

			soma += valor

		end
		
		return soma

	end

	def getValor(numeroRomano)
		if(numeroRomano == "I")
			return 1
		elsif(numeroRomano == "V")
			return 5
		elsif(numeroRomano == "X")
			return 10
		elsif(numeroRomano == "L")
			return 50
		elsif(numeroRomano == "C")
			return 100
		elsif(numeroRomano == "D")
			return 500
		else(numeroRomano == "M")
			return 1000
		end

	end

	def verificaProximaLetraDeI
		
	end

end

describe RomanosParser do 

	before(:each) do 
		@romanosParser = RomanosParser.new
	end
	
	it "deve retornar numero arabico de I" do
		expect(@romanosParser.parser("I")).to eql 1
	end

	it "deve retornar numero arabico de V" do
		expect(@romanosParser.parser("V")).to eql 5
	end

	it "deve retornar numero arabico de X" do
		expect(@romanosParser.parser("X")).to eql 10
	end

	it "deve retornar numero arabico de L" do
		expect(@romanosParser.parser("L")).to eql 50
	end

	it "deve retornar numero arabico de C" do
		expect(@romanosParser.parser("C")).to eql 100
	end

	it "deve retornar numero arabico de D" do
		expect(@romanosParser.parser("D")).to eql 500
	end

	it "deve retornar numero arabico de M" do
		expect(@romanosParser.parser("M")).to eql 1000
	end

	it "deve somar os valores de XX corretamente" do
		expect(@romanosParser.parser("XX")).to eql 20
	end

	it "deve somar os valores de CLX corretamente" do
		expect(@romanosParser.parser("CLX")).to eql 160
	end

	it "deve subtrair uma unidade se letra I e colocada diante da X, " do
		expect(@romanosParser.parser("IX")).to eql 9
	end

	it "deve subtrair uma unidade se letra I e colocada diante da V, " do
		expect(@romanosParser.parser("IV")).to eql 4
	end

end