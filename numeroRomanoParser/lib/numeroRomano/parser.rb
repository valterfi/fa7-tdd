module NumeroRomano
	class Parser

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
end