# encoding: utf-8
require 'spec_helper'

module NumeroRomano
	describe Parser do
 
	 let(:romanosParser) { Parser.new }
	
	it "deve retornar numero arabico de I" do
		expect(romanosParser.parser("I")).to eql 1
	end

	it "deve retornar numero arabico de V" do
		expect(romanosParser.parser("V")).to eql 5
	end

	it "deve retornar numero arabico de X" do
		expect(romanosParser.parser("X")).to eql 10
	end

	it "deve retornar numero arabico de L" do
		expect(romanosParser.parser("L")).to eql 50
	end

	it "deve retornar numero arabico de C" do
		expect(romanosParser.parser("C")).to eql 100
	end

	it "deve retornar numero arabico de D" do
		expect(romanosParser.parser("D")).to eql 500
	end

	it "deve retornar numero arabico de M" do
		expect(romanosParser.parser("M")).to eql 1000
	end

	it "deve somar os valores de XX corretamente" do
		expect(romanosParser.parser("XX")).to eql 20
	end

	it "deve somar os valores de CLX corretamente" do
		expect(romanosParser.parser("CLX")).to eql 160
	end

	it "deve subtrair uma unidade se letra I e colocada diante da V" do
		expect(romanosParser.parser("IV")).to eql 4
	end

	it "deve subtrair uma unidade se letra I e colocada diante da X" do
		expect(romanosParser.parser("CXXIX")).to eql 129
	end

	it "deve subtrair uma unidade se letra X e colocada diante da L" do
		expect(romanosParser.parser("XL")).to eql 40
	end

	it "deve subtrair uma unidade se letra X e colocada diante da L" do
		expect(romanosParser.parser("XC")).to eql 90
	end

	it "deve subtrair uma unidade se letra C e colocada diante da D" do
		expect(romanosParser.parser("CD")).to eql 400
	end

	it "deve subtrair uma unidade se letra C e colocada diante da M" do
		expect(romanosParser.parser("CM")).to eql 900
	end

	it "nao deve permitir converter um numero com a letra I repetida quatro vezes" do
		expect(romanosParser.parser("IIII")).to eql "numero invalido"
	end

	it "nao deve permitir converter um numero com a letra X repetida quatro vezes" do
		expect(romanosParser.parser("XXXX")).to eql "numero invalido"
	end

	it "nao deve permitir converter um numero com a letra V duplicada" do
		expect(romanosParser.parser("VV")).to eql "numero invalido"
	end

	it "nao deve permitir converter um numero com a letra L duplicada" do
		expect(romanosParser.parser("LL")).to eql "numero invalido"
	end

	it "nao deve permitir converter um numero com a letra D duplicada" do
		expect(romanosParser.parser("DD")).to eql "numero invalido"
	end

	it "deve converter CXXIX corretamente" do
		expect(romanosParser.parser("CXXIX")).to eql 129
	end	
		
	end
end