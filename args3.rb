puts "#{ARGV.length} parâmetros!"
# Forma didática, para entender, que o rubocop não deixa usar
for i in 0..ARGV.length - 1
  puts "#{i}: #{ARGV[i]}"
end

puts
# Forma preferida hoje, usando sintaxe mais moderna
ARGV.each_with_index do |elemento, j|
  puts "#{j}: #{elemento}"
end

puts
# Forma preferida hoje, usando sintaxe mais moderna quando precisa do indice
ARGV.each do |elemento|
  puts elemento
end
