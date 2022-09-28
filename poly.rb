class Instrumento
    def escrever
        puts  'Escrevendo new'
    end
end

class Teclado < Instrumento
    def escrever
        #Força a carga do método do pai.
        super
    end

end

class Lapis < Instrumento
    def escrever
        puts 'Escrevendo à Lápis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo à caneta'
    end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

teclado.escrever
lapis.escrever
caneta.escrever

