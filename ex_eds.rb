require_relative "Cliente.rb"

clientes = []
clientes.push(Cliente.new("FRONTEC"))
clientes.push(Cliente.new("COMLINES"))
clientes.push(Cliente.new("MOULD"))
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
