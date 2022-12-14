require 'CmdLineApp.rb'
require 'System.rb'
require 'CriaRNSRIMENSAG.rb'

# Script pessoal do Edson
class Eds < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script de uso pessoal do Edson"
    add_param_opcional("ri", "Cria RNS RIMENSAG", { "flag" => true })
    add_param_opcional("rimen", "Abre o painel de RIMENSAG", { "flag" => true })
    add_param_opcional("revisao", "Abre o SQL da revisão automática", { "flag" => true })
    add_param_opcional("reuniao", "Abre a sala de reuniões da equipe de testes", { "flag" => true })
    add_param_opcional("robo", "Abre robôs", { "flag" => true })
    add_param_opcional("sql", "Abre SQLDEVELOPER", { "flag" => true })
    add_param_opcional("pasta", "Abre pasta do GPD", { "flag" => true })
    add_param_opcional("bi", "Abre o PowerBI", { "flag" => true })
    add_param_opcional("testlink", "Abre o testlink", { "flag" => true })
    add_param_opcional("wiki", "Abre a wiki do Time de testes", { "flag" => true })
    add_param_opcional("ponto", "Abre o ponto", { "flag" => true })
    add_param_opcional("forum", "Abre o fórum", { "flag" => true })
    add_param_opcional("help", "Descreve lista de parâmetros", { "flag" => true })
  end

  # Executa o script
  def main(args, _unparsed_args)
    if args["ri"]
      system("call CriaRNSRIMENSAG.bat")
      return 0
    end
    if args["rimen"]
      Exec.run('start chrome "http://intranet/mapaerro/#/rimensag/revisao?area=P"')
      return 0
    end
    if args["revisao"]
      Exec.run('F:\RIL\md10\Codigos.sql')
      return 0
    end
    if args["reuniao"]
      Exec.run('start chrome "https://meet.jit.si/SalaEquipeTeste"')
      return 0
    end
    if args["robo"]
      system("call ROBO.bat GER GIN")
      return 0
    end
    if args["sql"]
      system("call SQLDEVELOPER.bat")
      return 0
    end
    if args["pasta"]
      Exec.run('ex O:\GPD\Edson')
      return 0
    end
    if args["bi"]
      Exec.run('start chrome "https://app.powerbi.com/view?r=eyJrIjoiNjk4ZTliYWUtZDJkYi00OThkLTk0MjktZGEzZjdjNzhhOTJjIiwidCI6ImQ4NzFmZjI5LTQ1MjQtNDc0Ni04NmRhLTQ1MTdjOTg0MTI3NyJ9"')
      return 0
    end
    if args["testlink"]
      Exec.run('start chrome "http://intranet/testlink/index.php?caller=login&viewer="')
      return 0
    end
    if args["wiki"]
      Exec.run('start chrome "http://intranet/wiki/index.php/Equipe_de_Testes"')
      return 0
    end
    if args["ponto"]
      Exec.run('start chrome "http://192.168.255.131:8080/pontosoft/login/auth"')
      return 0
    end
    if args["forum"]
      Exec.run('start chrome "http://intranet/forum/"')
      return 0
    end
    if args["help"]
      help
      return 0
    end

    # puts "args: #{args}"
    # puts "unparsed_args: #{unparsed_args}"
  end

  def help
      puts  "está imprimindo esse"
      puts   "rimensag          - Abre o painel de RIMENSAG"
      puts   "ri                - Abertura de RNS de RIMENSAG"
      puts   "revisao           - Abre o SQL da revisão automática"
      puts   "reuniao           - Abre a sala de reuniões da equipe de testes"
      puts   "robo              - Abre robôs"
      puts   "sql               - Abre SQLDEVELOPER"
      puts   "past              - Abre pasta do GPD"
      puts   "bi                - Abre o PowerBI"
      puts   "testlink          - Abre o testlink"
      puts   "wiki              - Abre a wiki da Equipe de testes"
      puts   "ponto             - Abre o ponto"
      puts   "forum             - Abre o fórum"
  end



end

Eds.new.run(ARGV)
