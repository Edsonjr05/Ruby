feriados = {
  "30/03/2018" => "Sexta feira santa",
  "05/04/2018" => "Emancipação de NH",
  "01/05/2018" => "Dia do trabalho"
}

feriados.each do |chave, valor|
  puts "Dia #{chave} é feriado: #{valor}"
end
