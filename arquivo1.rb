require 'Arquivo.rb'
require 'CmdLineApp.rb'

# ## Descrição do script
class Arquivo1 < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script para testes da clase arquivo..."
    add_param_opcional("par", "Parâmetro nomeado")
    add_param_opcional("flag", "Parâmetro flag", { "flag" => true })
  end

  # Executa o script
  # @Paramt args [Hash] Argumentos parseados
  # @param unparsed_args [Array<String>] Argumento não parseados
  def main(_args, unparsed_args)
    tmp = Arquivo.tmp
    puts tmp.class
    puts tmp
    if Arquivo.existe?('c:\tmp\usu.txt')
      puts "O arquivo existe!"
    else
      puts "O arquivo não existe!"
    end
    arq = Arquivo.new('C:\Users\Edson\Ruby\arquivo1.rb')
    puts arq.name
    puts arq.extension
    if arq.existe?
      puts "O arquivo #{arq.name_and_extension} existe!"
      puts "Data e hora do arquivo: #{arq.date_time}"
      puts "Diretório do arquivo: #{arq.directory}"
      puts "Tamanho do arquivo: #{arq.size}"
      puts "Dono do arquivo: #{arq.owner}"
    end

    arquivo_log = Arquivo.new("c:\\tmp\\MeuLog.txt")
    arquivo_log.append("#{Dir.pwd}, #{System.user_name} #{Moment.now}")
    arquivo_log.append_line
  end

end

Arquivo1.new.run(ARGV)
