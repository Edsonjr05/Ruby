array = []
puts '--Leitura do Json--'

puts 'Informe o caminho do arquivo'
arquivo = gets.chomp.to_s

file = File.open(arquivo)

file.each do |line|
     tela = line.match(/(?<=")\S+_\S+(?=":)/)
     if tela == nil #|| tela === /SRDI06_MOD/
       else
         if !array.include?(tela)
           array.append(tela)
         end
       end

    #   if tela.include?(/SRDI06_MOD/) then
    #     array.append(tela)
    #     puts tela
    #   else
    #     puts 'Nulo'

    # end
end

puts array.join(" ")




