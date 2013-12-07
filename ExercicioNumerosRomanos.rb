class RomanosParser

	def parser(valor)
		if(valor == "I")
			return 1
		else(valor == "V")
			return 5
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

end