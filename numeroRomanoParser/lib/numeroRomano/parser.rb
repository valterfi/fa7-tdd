module NumeroRomano
	class Parser

		def parser(numeroRomano)

			soma = 0
			pularLetra = false

			if verificaNumeroInvalido?(numeroRomano)
				return "numero invalido"
			end

			numeroRomano.length.times do |i|
				if(pularLetra)
					pularLetra = false
					next
				end


				letraRomana = numeroRomano[i]	
				valor = getValor(letraRomana)

				if(letraRomana == "I")
					proxLetraRomana = numeroRomano[i+1]
					unless proxLetraRomana.nil?						
						if(proxLetraRomana == "V" || proxLetraRomana == "X")
							proxValor = getValor(proxLetraRomana)
							 soma += proxValor - valor
							 pularLetra = true
							 next
						end			

					end

				end

				if(letraRomana == "X")
					proxLetraRomana = numeroRomano[i+1]
					unless proxLetraRomana.nil?						
						if(proxLetraRomana == "L" || proxLetraRomana == "C")
							proxValor = getValor(proxLetraRomana)
							 soma += proxValor - valor
							 pularLetra = true
							 next
						end			

					end

				end

				if(letraRomana == "C")
					proxLetraRomana = numeroRomano[i+1]
					unless proxLetraRomana.nil?						
						if(proxLetraRomana == "D" || proxLetraRomana == "M")
							proxValor = getValor(proxLetraRomana)
							 soma += proxValor - valor
							 pularLetra = true
							 next
						end			

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

		def verificaNumeroInvalido?(numeroRomano)
			return numeroRomano.include?("IIII") || numeroRomano.include?("XXXX") || numeroRomano.include?("VV") || numeroRomano.include?("LL") || numeroRomano.include?("DD")
		end	

	end
end