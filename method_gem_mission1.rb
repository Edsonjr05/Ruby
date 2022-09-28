# Missão 1
# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

def result(base, expoente)
    resultado = base ** expoente
    puts "O produto #{base} elevado a potência #{expoente} é #{resultado}"
end

print "Informe o produto base que será utilizado: " 
 base = gets.chomp.to_i
print "Informe o exponte que será elevado: "
 expoente = gets.chomp.to_i

result(base,expoente)