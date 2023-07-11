# Exemplo de script escrito em uma classe ruby
class MeuScript

  def main
    trata_command_line
    executa_funcao
  end

  def trata_command_line
    puts "tratando a command line #{ARGV.inspect}"
    @opcao_listar_todos = true
  end

  def executa_funcao
    puts "executando funcao"
    if @opcao_listar_todos
      puts "sim, lista todos"
    end
  end

  def help
  end
end

MeuScript.new.main
