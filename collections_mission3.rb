# Missão 3
# Dado o seguinte hash:
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante.

result = []
maior = 0
numbers = {'a':10, 'b':30, 'c':20, 'd':25, 'e': 15 }


numbers.each do |key,value|
    if value > maior   
    maior = value
    result = [key,value]
    end
end

puts "A chave com maior valor é #{result[0]} e elemento resultante #{result[1]}"
