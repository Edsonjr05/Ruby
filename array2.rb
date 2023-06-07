frutas = ["Maça", "Alface", "Melancia"]
puts frutas.join(", ")
puts frutas.join(";")
puts frutas.join(" ")
puts frutas.join

# Troca a ocorrência 1 (Alface) por Pera
frutas[1] = "Pera"
puts frutas.join(", ")
puts frutas.length

# Cria a ocorrência 5 com Jabuticaba e a 3 e 4 vazias
frutas[5] = "Jabuticaba"
puts frutas.join(", ")
puts frutas.length
