class Animal

  def initialize(nome)
    @nome = nome
  end

  def o_que_sou
    puts "Sou um Animal"
  end

  attr_accessor :nome

end

class Gato < Animal

  def initialize(nome)
    super(nome)
  end

  def fala()
    puts "#{@nome}: Miau!"
  end

  def o_que_sou
    puts "Sou um gato!"
  end

end

class Cachorro < Animal

  def initialize(nome)
    super(nome)
  end

  def fala
    puts "#{@nome}: Au Au!"
  end

end

gato = Gato.new("Reinaldo")
gato.fala
gato.o_que_sou

dog = Cachorro.new("Totó")
dog.fala
dog.o_que_sou
