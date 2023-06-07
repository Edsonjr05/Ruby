def tipo(variavel)
  if variavel.is_a?(String)
    puts "Variavel é uma string"
  end
  if variavel.is_a?(Integer)
    puts "Variavel é um número inteiro"
  end
  if variavel.is_a?(Float)
    puts "Variavel é um número de ponto flutuante"
  end
end

variavel = "Hello!"
puts "#{variavel} (#{variavel.class})"
tipo(variavel)

variavel = 5
puts "#{variavel} (#{variavel.class})"
tipo(variavel)

variavel = 5.3
puts "#{variavel} (#{variavel.class})"
tipo(variavel)
