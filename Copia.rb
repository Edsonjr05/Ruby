require 'Colorize.rb'
require 'Arquivo.rb'
require 'CmdLineApp.rb'

# Script para fazer a copia de um determinado arquivo para a pasta C:\TMP
class Copia < CmdLineApp

  # Criamos uma constante para delimitar o local para onde iremos copiar o nosso arquivo
  DESTINO = 'C:\TMP'.freeze

  def setup
    self.description = "Script de exercicio para arquivo para a pasta C:\\TMP"
    add_param_opcional("origem", "Parâmetro nomeado")
  end

  # Caso o usuário não informar o caminho do arquivo a ser copiado na linha de execução
  # irá questionar o mesmo
  def main(_args, unparsed_args)
    if unparsed_args.empty?
      print "Digite o caminho do arquivo para efetuar a copia:"
      origem = STDIN.gets.chomp.to_s
    else
      origem = unparsed_args.join(" ").to_s
    end

    # Colocamos o caminho em um objeto para facilitar a manipulação
    caminho_arquivo = Arquivo.new(origem)

    # Testa se o caminho do arquivo não existe
    if !caminho_arquivo.existe?
      puts "O caminho do arquivo não existe!".red
    # Caso o arquivo exista, tenta fazer a copia
    elsif caminho_arquivo.copia(DESTINO)
      puts "Arquivo copiado com sucesso".green
    else
      puts "Arquivo não copiado!".red
    end
  end

end

Copia.new.run(ARGV)
