require 'CmdLineApp.rb'

# ## Descrição do script
class Ternario < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script para ..."
    add_param_opcional("par", "Parâmetro nomeado")
    add_param_opcional("flag", "...", { "flag" => true })
  end

  # Executa o script
  def main(_args, _unparsed_args)
    puts descricao("M")
  end

  def descricao(genero)
    return genero == "M" ? "Masculino" : "Feminino"
  end

end

Ternario.new.run(ARGV)
