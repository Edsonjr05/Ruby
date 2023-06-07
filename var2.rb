nome = "Edson"
idade = 32

puts "Nome: " + nome
#Vai dar erro, está tentando escrever um inteiro como se fosse uma string
puts "Idade: " + idade
#Vai dar certo, estamos convertendo ela para o formato string
puts "Idade: " + idade.to_s
