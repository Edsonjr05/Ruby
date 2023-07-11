require 'CmdLineApp.rb'

# ## Descrição do script
class Script1 < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script para ..."
    add_param_opcional("par", "Parâmetro nomeado")
    add_param_opcional("flag", "...", {"flag" => true})
  end

  # Executa o script
  def main(args, unparsed_args)
    puts "args: #{args}"
    puts "unparsed_args: #{unparsed_args}"
  end

end

Script1.new.run(ARGV)
