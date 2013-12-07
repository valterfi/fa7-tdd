class RomanosParser

	def parser(valor)
		if(valor == "I")
			return 1
		elsif(valor == "V")
			return 5
		elsif(valor == "X")
			return 10
		elsif(valor == "L")
			return 50
		elsif(valor == "C")
			return 100
		elsif(valor == "D")
			return 500
		else(valor == "M")
			return 1000
		end
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

end