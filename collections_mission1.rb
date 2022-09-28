#Missão 1
#Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência.

numeros = []
count = 1
number = 0

while count <=3
    print "Escreva o #{count} número: "
    number = gets.chomp.to_i
    number = number * number
    numeros.push(number)
    count += 1
end
  
puts "#{numeros}"






# Outra opçãoo
# array = []
 
# i = 1
 
# 1..3.times do 
#  print "Digite o #{i}º número: "
#  array.push gets.chomp.to_i
 
#  i += 1
# end
 
# array.each do |a|
#  result = a ** 2
#  puts "O resultado do número #{a} elevado a segunda potência é #{result}"
# end
