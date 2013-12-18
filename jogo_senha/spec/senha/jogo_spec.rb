# encoding: utf-8
require 'spec_helper'

module Senha
	describe Jogo do

		let(:output) { double('output').as_null_object }
		let(:jogo) { Jogo.new(output) }

		describe "#iniciar" do
			it "envia uma mensagem de boas-vindas" do
				output.should_receive(:puts).with("Bem-vindo ao Senha")
				jogo.iniciar('1234')
			end

			it "solicita pelo 1.o jogador" do 
				output.should_receive(:puts).with("Informe o jogador: ")
				jogo.iniciar('1234')
			end
		end

		describe "#avaliar" do			
			context "sem acertos" do
				it "envia uma avaliacao com ''" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('')
					jogo.avaliar('5555')
				end
			end

			context "com 01 digito correto" do
				it "envia uma avaliacao com um valor certo na posicao certa" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('+')
					jogo.avaliar('1555')
				end
				it "envia uma avaliacao com um valor certo na posicao errada" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('-')
					jogo.avaliar('2555')
				end
			end

			context "com 02 digito corretos" do
				it "envia uma avaliacao com '--'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('--')
					jogo.avaliar('2545')
				end

				it "envia uma avaliacao com '+-'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('+-')
					jogo.avaliar('2535')
				end

				it "envia uma avaliacao com '--'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('++')
					jogo.avaliar('5254')
				end
			end

			context "com 03 digito corretos" do
				it "envia uma avaliacao com '---'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('---')
					jogo.avaliar('5123')
				end

				it "envia uma avaliacao com '+--'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('+--')
					jogo.avaliar('5124')
				end

				it "envia uma avaliacao com '++-'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('++-')
					jogo.avaliar('5134')
				end

				it "envia uma avaliacao com '+++'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('+++')
					jogo.avaliar('5234')
				end			
			end

			context "com todos corretos" do
				it "envia uma avaliacao com '----'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('----')
					jogo.avaliar('4321')
				end

				it "envia uma avaliacao com '+---'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('+---')
					jogo.avaliar('1423')
				end

				it "envia uma avaliacao com '++--'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('++--')
					jogo.avaliar('1243')
				end

				it "envia uma avaliacao com '----'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('++++')
					jogo.avaliar('1234')
				end				
			end
		end		
	end
end