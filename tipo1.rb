variavel = "Hello!"
puts "#{variavel} (#{variavel.class})"

variavel = 5
puts "#{variavel} (#{variavel.class})"

variavel = 5.3
puts "#{variavel} (#{variavel.class})"

if variavel.is_a?(String)
  puts "Variavel é uma string"
end
if variavel.is_a?(Integer)
  puts "Variavel é um número inteiro"
end
if variavel.is_a?(Float)
  puts "Variavel é um número de ponto flutuante"
end
