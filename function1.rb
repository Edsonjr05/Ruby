def power(base,expoente)
  valor = base
  for i in 2..expoente
    valor *= base
  end
  return valor
end

puts "5^3: #{power(5, 3)}"
puts "2^8: #{power(2, 8)}"
puts "87^32: #{power(87, 32)}"
