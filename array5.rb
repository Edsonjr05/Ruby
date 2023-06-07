frutas = ["Maçã", "Pera", "Melancia", "Jabuticaba"]

puts "      length: #{frutas.length}"
puts "       empty: #{frutas.empty?}"
puts "   frutas[1]: #{frutas[1]}"
puts "frutas[2..3]: #{frutas[2..3]}"

balaio_frutas = frutas[2..3]
puts "Balaio é #{balaio_frutas.join(', ')}"
