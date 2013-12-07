class RomanosParser

	def parser(valor)
		1	
	end

end

describe RomanosParser do 
	
	it "deve retornar numero arabico de I" do

		romanosParser = RomanosParser.new
		expect(romanosParser.parser("I")).to eql 1
	end

end





