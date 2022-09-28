# Missão 2
# Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

elementos = Hash.new


3.times do
    print "Informe a chave: "
    key = gets.chomp
    print "Informe o seu valor: "
    value = gets.chomp
    # elementos.store(key,value)
    elementos[key] = value
end

# puts "#{elementos}"

elementos.each do |key, value|
    puts "Uma das chaves é #{key} e o seu valor é #{value}"
end

