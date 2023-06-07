nome = "Pedro Alvares Cabral"
# No ruby um método para buscar um propriedade é chamado direto, sem 'get'
puts nome.length

# No Java ou outro liguagem, usaríamos para um método acessor o seguinte:
# System.out.println(nome.getLength());

# No ruby métodos com retorno booleanos são terminados com ? ao invés de começar com o prefixo is
if nome.empty?
  puts "O nome é vazio"
else
  puts "O nome é #{nome}"
end

# Outro exemplo
if nome.start_with?("Pedro")
  puts "Ok, o nome começa sim com 'Pedro'"
  puts 'Ok, o nome começa sim com "Pedro"'
end
puts nome.start_with?("Pedro")
resposta = puts nome.start_with?("Pedro")
puts resposta

if nome.include?("Cabral")
  puts "É da familia dos cabrales"
end

# No Java ou outra linguagem, usaríamos para um méthodo que retorna boolean o prefixo is
# if (nome.isEmpty()){
# ...
# }
