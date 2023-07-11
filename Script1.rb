require 'CmdLineApp.rb'

# ## Descrição do script
class Script1 < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script para ..."
    add_param_opcional("par", "Parâmetro nomeado")
    add_param_opcional("opcaox", "esta opção faz tal coisa.", { "flag" => true })
    add_param_versao('versao', 'Versão do SIGER', 'BET')
  end

  # Executa o script
  def main(args, unparsed_args)
    puts "args: #{args}"
    puts "unparsed_args: #{unparsed_args}"
    puts args['versao']
    if args['opcaox']
      puts "sim, você passou a opção x por parâmetro"
      opcaox
    end
  end

  def opcaox
    puts "esta é a funcionalidade x do meu script!"
    nome = aceita_dado("Digite o seu nome: ")
    puts "o seu nome é #{nome}"
    if confirma_timeout?("Confirma a informação?", 3, default: true)
      puts "você confirmou algo..."
    end
    opcoes = [{ nome: 'GPD', descricao: 'Gestao de Pesquisa e Desenvolvimento' },
            { nome: 'GRM', descricao: 'Gestao de Relacionamento com Mercado' }]
    setor = seleciona_opcao("qual o seu setor?", opcoes)
    puts "o seu setor é #{setor[:descricao]}"
  end

end

Script1.new.run(ARGV)
