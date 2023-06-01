loop do
    
    puts 'Calculadora em ruby'
    puts '1-Soma'
    puts '2-Subtração'
    puts '3-Multiplicação'
    puts '4-Divisão'
    puts '0-Sair'
    puts 'Digite a operação que deseja efetuar:'
    operacao = gets.chomp.to_i

    # if operacao > 4 
    #     puts "Operação inválida"
    # elsif operacao == 0
    #     break
    # else
    # puts 'Digite o primeiro número:'
    # number1 = gets.chomp.to_i
    # puts 'Digite o segundo número'
    # number2 = gets.chomp.to_i
    # end

    case operacao 
    when 1        
        open ('chrome "http://www.google.com.br"')
    when 2
        puts "O resultado da operação escolhida é #{number1 - number2}"
    when 3
        puts "O resultado da operação escolhida é #{number1 * number2}"
    when 4
        puts "O resultado da operação escolhida é #{number1 / number2}"
    end
    system "clear"
end