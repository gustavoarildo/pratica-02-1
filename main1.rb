puts "Texto: "
texto = gets.chomp

palavras = texto.split(" ")

frequencias = Hash.new(0)
palavras.each { |palavra| frequencias[palavra] += 1 }

frequencias = frequencias.sort_by {|a, b| b }
frequencias.reverse!

frequencias.each { | palavra, frequencia | puts "#{palavra} #{frequencia.to_s}" }