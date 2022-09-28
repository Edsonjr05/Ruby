class Animal
    def pular
        puts "Tóing! tóing! bóing! póing!"
    end

    def dormir
        puts "ZZZzzZZ"
    end

class Cachorro < Animal
    def latir
        puts "Au au Au"
    end
end

class Gato < Animal
    def meow
        puts "meow"
    end
end


cachorro = Cachorro.new
puts cachorro.dormir

gato = Gato.new
puts gato.meow

end
