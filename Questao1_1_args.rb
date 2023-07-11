if !ARGV.empty?
  numero = ARGV[0].to_i
else
  print "Informe um número inteiro: "
  numero = STDIN.gets.chomp.to_i
end
puts "o sucessor de #{numero} é #{numero + 1}!"
