class Sobremesa
    attr_accessor :nome, :calorias

    def initialize(nome, calorias)
        @nome = nome
        @calorias = calorias
    end

    def saudavel?
        @calorias < 200
    end

    def deliciosa?
        true
    end
end

require_relative "sobremesa"

class GeleiaEmCompota < Sobremesa
    attr_accessor :sabor

    def initialize(sabor)
        super("Geleia em Compota de #{sabor}", 5)
        @sabor = sabor
    end

    def deliciosa?
        @sabor != "alcacuz"
    end

    def to_s
        "Nome: [#{@nome}] Sabor: [#{@sabor}] Calorias: [#{calorias}]"
    end
end

require_relative "geleia_em_compota"

geleia = GeleiaEmCompota.new("alcacuz")
puts geleia
puts "Saudavel" if geleia.saudavel?
puts "Deliciosa" if geleia.deliciosa?