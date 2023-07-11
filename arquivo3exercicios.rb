require 'Arquivo.rb'
require 'CmdLineApp.rb'

# - ler o catálogo linha a linha
# - fazer split dos campos
# - comparar o netbios com a sua máquina
# - exibir os seus dados: nome, setor, telefone e email particular

# ## Descrição do script
class Arquivo3Exercicios < CmdLineApp

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
    arq_catalogo = Arquivo.new('F:\RECH\CATALOGO\CATALOGO.DEF')
    if !arq_catalogo.existe?
      puts "Erro: O arquivo #{arq_catalogo} não existe!"
      # O código que eu passar para a saída, irá carregar para a variável de ambiente ERRORLEVEL
      exit(1)
    end
    arq_catalogo.carrega.each_line do |line|
      parte = line.split
      nome_computador = parte[1]
      nome_usuario = parte[2]
      setor = parte[6]
      telefone = parte[7]
      email = parte[10]

      if nome_computador == ENV['COMPUTERNAME']
        puts "Nome do computador: #{nome_computador}"
        puts "Nome do usuário: #{nome_usuario}"
        puts "Setor de atuação: #{setor}"
        puts "Telefone: #{telefone}"
        puts "E-mail pessoal: #{email}"
      end
    end
  end
end

Arquivo3Exercicios.new.run(ARGV)
