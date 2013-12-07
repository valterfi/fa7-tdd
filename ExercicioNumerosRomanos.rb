class RomanosParser

	def parser(valor)
		if(valor == "I")
			return 1
		elsif(valor == "V")
			return 5
		else(valor == "X")
			return 10
		end
	end

end

describe RomanosParser do 
	
	it "deve retornar numero arabico de I" do

		romanosParser = RomanosParser.new
		expect(romanosParser.parser("I")).to eql 1
	end

	it "deve retornar numero arabico de V" do

		romanosParser = RomanosParser.new
		expect(romanosParser.parser("V")).to eql 5
	end

	it "deve retornar numero arabico de X" do

		romanosParser = RomanosParser.new
		expect(romanosParser.parser("X")).to eql 10
	end

end