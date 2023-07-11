class Produtos
  # Variável estática para o próximo código
  @@codigo = 1

  # Construtor
  def initialize(descricao)
    @codigo = @@codigo
    @@codigo += 1
    @descricao = descricao
    @grupo = ""
  end

  # Exibe o cliente
  def exibe
    puts "#{@codigo.to_s.rjust(5)} - #{@descricao} / #{@grupo}"
  end

  # Gera o "get"
  attr_reader :codigo

  # Gera o "get" e o "set"
  attr_accessor :descricao

  # Gera o "get" e o "set"
  attr_accessor :grupo

end
