nome = "Pedro AlvArEs CaBRal"
puts nome.upcase
puts nome.downcase
puts nome.capitalize
puts nome

# Forma de mudar o conteúdo sem automodificação
nome = nome.upcase
puts nome

# Forma de mudar o conteúdo com auto-modificação ( muda o conteúdo do objeto )
nome.upcase!
puts nome
