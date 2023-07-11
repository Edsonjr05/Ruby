# Cliente.rb ------------------------
class Cliente
  # Variável estática para o próximo código
  @@codigo = 1

  # Construtor
  def initialize(descricao)
    @codigo = @@codigo
    @@codigo += 1
    @descricao = descricao
  end

  # Exibe o cliente
  def exibe
    puts "#{@codigo.to_s.rjust(5)} - #{@descricao}"
  end

  # Gera o "get"
  attr_reader :codigo

  # Gera o "get" e o "set"
  attr_accessor :descricao

end
