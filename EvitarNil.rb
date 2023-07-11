require 'CmdLineApp.rb'

# ## Descrição do script
class EvitarNil < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script para ..."
    add_param_opcional("par", "Parâmetro nomeado")
    add_param_opcional("flag", "...", { "flag" => true })
  end

  # Executa o script
  def main(_args, _unparsed_args)
    puts descricao(:uy).upcase
  end

  # Retorna a descrição do país
  # @param pais [Symbol] Simbolo do país
  # @return [String]
  def descricao(pais)
    hash_paises = { br: "Brasil", pt: "Portugal" }
    return hash_paises[pais] || ""
  end

end

EvitarNil.new.run(ARGV)
