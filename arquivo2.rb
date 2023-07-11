require 'Arquivo.rb'
require 'CmdLineApp.rb'

# ## Descrição do script
class Arquivo2 < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script para testes da clase arquivo..."
    add_param_opcional("par", "Parâmetro nomeado")
    add_param_opcional("flag", "Parâmetro flag", { "flag" => true })
  end

  # Executa o script
  # @Paramt args [Hash] Argumentos parseados
  # @param unparsed_args [Array<String>] Argumento não parseados
  def main(_args, _unparsed_args)
    arq_logon = Arquivo.new("F:\\TMP\\LOG\\#{ENV['COMPUTERNAME']}_Logon.log")
    if !arq_logon.existe?
      puts "Erro: O arquivo #{arq_logon} não existe!"
      # O código que eu passar para a saída, irá carregar para a variável de ambiente ERRORLEVEL
      exit(1)
    end
    if arq_logon.vazio?
      puts "Erro: O arquivo #{arq_logon} está vazio"
      exit(2)
    end
    puts "Ok! Com sucesso, consegui ver o arquivo #{arq_logon.full_path_win}"
    puts "Conteúdo do arquivo: "
    arq_logon.carrega.each_line do |line|
      partes = line.split
      data = partes[0]
      hora = partes[1]
      puts "Você fez logon no dia #{data} às #{hora}"
    end
  end

end

Arquivo2.new.run(ARGV)
