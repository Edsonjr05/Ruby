array_ori = ["a", "b", "c", "d"]

# Concatena dois arrays
array_soma = array_ori.concat(["e", "f", "g"])
puts array_soma.inspect

# Remove os itens existentes no segundo array do primeiro
array_subtracao = array_ori.difference(["a", "c"])
puts array_subtracao.inspect
