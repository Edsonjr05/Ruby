# Classe que representa um cliente
class Cliente

  # Variável estática para o próximo código
  @@codigo = 1

  # Construtor
  def initialize(descricao)
    @codigo = @@codigo
    @@codigo += 1
    @descricao = descricao
    @cidade = ""
  end

  # Exibe o cliente
  def exibe
    puts "#{@codigo.to_s.rjust(5)} - #{@descricao} - / #{@cidade}"
  end

  # Gera o "get"
  attr_reader :codigo
  # Gera o "get" e o "set"
  attr_accessor :descricao
  # Gera o "get" e o "set"
  attr_accessor :cidade

  # Propriedade somente para gravar
  attr_writer :propriedade

end

clientes = []
cliente1 = Cliente.new("FRONTEC")
cliente1.cidade = "São Leopoldo"
clientes.push(cliente1)

clientes.push(Cliente.new("COMLINES"))

cliente3 = Cliente.new("MOULD")
cliente3.cidade = "Sapiranga"
clientes.push(cliente3)

clientes.push(Cliente.new("ALLCHEM"))

clientes.each do |cliente|
  cliente.exibe
end

puts

novo_cliente = Cliente.new("EXEMPLO")
novo_cliente.exibe
puts novo_cliente.codigo
puts novo_cliente.descricao
novo_cliente.descricao = "OLA"
novo_cliente.exibe
