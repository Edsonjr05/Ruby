print "Qual seu nome? "
nome = STDIN.gets.chomp

print "Qual sua idade? "
idade = STDIN.gets.chomp.to_i

puts "Nome:"
puts nome
puts nome.class

puts "Idade"
puts idade * 2
puts idade.class
