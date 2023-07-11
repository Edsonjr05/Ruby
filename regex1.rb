puts "Resultado"
var = "992"
if /\d+/.match?(var)
  puts "Sim, a REGEX fecha com o texto"
end

regexp = /\d+/
puts regexp.match?("123")

# Não usar essa forma
# if r === "123"
# Usar sempre dessa forma
# if r.match?("123")

puts "Mais Exemplos 1:"
puts /[A-Z]/ =~ "Hallo Gunter"
puts "Mais Exemplos 2:"
puts /u/ =~ "Hallo Gunter"
puts "Mais Exemplos 3:"
puts (/\d/ =~ "Hallo Gunter").class

puts "Mais Exemplos com MatchData 1:"
puts /[A-Z]/.match("Hallo Gunter").inspect
puts "Mais Exemplos com MatchData 2:"
puts /u/.match("Hallo Gunter").inspect
puts "Mais Exemplos com MatchData 3:"
puts /\d/.match("Hallo Gunter").inspect

texto = "Parabéns Edson por seu aniversário em 05/11!"
regexp = /Parab.ns (.*?) por seu anivers.rio em (.*?)\!/
match = regexp.match(texto)
if match
  puts "Encontrou!"
end
puts match[0] # Resultado inteiro
puts match[1] # Grupo 1
puts match[2] # Grupo 2

puts "--------------------------"
puts match.captures.class
puts match.captures.inspect

match.captures.each do |grupo|
  puts "Grupo: #{grupo}"
end
