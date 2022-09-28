# o A significa que iremos "appendar" os dados, ou seja, adicionar ao final do arquivo.
File.open('shopping-list.txt', 'a') do |line|
    line.puts('arroz')
    line.puts('feijão')
    line.print('azeite')
    line.print(' de ')
    line.print('oliva')
   end


# o W irá trocar todos os daos que existe no arquivo 
#    File.open('shopping-list.txt', 'w') do |line|
#      line.puts('batata')
#    end