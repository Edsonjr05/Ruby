require_relative "Produto.rb"
produtos = []

produtos1 = Produtos.new("Iphone 13")
produtos.push(produtos1)

produtos2 = Produtos.new("TV LG 55 Polegadas")
produtos2.grupo = "Televisores"
produtos.push(produtos2)

produtos3 = Produtos.new("Computador Dell XPS")
produtos.push(produtos3)

produtos4 = Produtos.new("Fone Logitech G733")
produtos.push(produtos4)

produtos.each do |p|
  p.exibe
end
