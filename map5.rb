aniversarios = [
  ["janeiro", "João"],
  ["janeiro", "Maria"],
  ["janeiro", "Pedro"],
  ["fevereiro", "Marcos"],
  ["fevereiro", "Antônio"]
]

# Filtra os aniversários que são de "janeiro"
aniv_jan = aniversarios.select { |aniversario| aniversario[0] == "janeiro" }
# Obtém o nome do aniversariante e concatena "Parabéns"
mensagens = aniv_jan.map { |aniversariante| "Parabéns #{aniversariante[1]}!" }

puts mensagens
