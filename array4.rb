pilha = ["SRIM00", "SRIM03", "FAT005", "FAT206", "SRHPDI"]
puts pilha.join(", ")

pilha.delete("FAT206")
puts pilha.join(", ")

# Remove o Ãºltimo registro do array
puts "Próximo: #{pilha.pop} sobrou (#{pilha})"
puts "Próximo: #{pilha.pop} sobrou (#{pilha})"
puts "Próximo: #{pilha.pop} sobrou (#{pilha})"
puts "Próximo: #{pilha.pop} sobrou (#{pilha})"

puts
pilha = ["SRIM00", "SRIM03", "FAT005", "FAT206", "SRHPDI"]
puts pilha.join(", ")

pilha.delete("FAT206")
puts pilha.join(", ")

# Remove o primeiro registro do array
puts "Próximo: #{pilha.delete_at(0)} sobrou (#{pilha})"
puts "Próximo: #{pilha.delete_at(0)} sobrou (#{pilha})"
puts "Próximo: #{pilha.delete_at(0)} sobrou (#{pilha})"
puts "Próximo: #{pilha.delete_at(0)} sobrou (#{pilha})"

puts
if pilha.length == 0
  puts "O array está vazio (não utilizar dessa forma)"
end

if pilha.empty?
  puts "O array está vazio"
end
