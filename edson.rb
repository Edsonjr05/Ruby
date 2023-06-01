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
    add_param_opcional("robo", "Abre o gerenciador dos robôs", { "flag" => true })
    add_param_opcional("sql", "Abre SQLDEVELOPER", { "flag" => true })
    add_param_opcional("pasta", "Abre pasta do GPD", { "flag" => true })
    add_param_opcional("bi", "Abre o PowerBI", { "flag" => true })
    add_param_opcional("testlink", "Abre o testlink", { "flag" => true })
    add_param_opcional("wiki", "Abre a wiki do Time de testes", { "flag" => true })
    add_param_opcional("ponto", "Abre o ponto", { "flag" => true })
    add_param_opcional("forum", "Abre o fórum", { "flag" => true })
    add_param_opcional("json", "Executa comando para coletar janelas de um arquivo .json", { "flag" => true })
    add_param_opcional("kill", "Encerra os processos do SIGER", { "flag" => true })
    add_param_opcional("rob", "Direciona para o caminho das bases do robô no C:", { "flag" => true })
    add_param_opcional("start", "Inicia a execução dos robos do time de testes", { "flag" => true })
    add_param_opcional("help", "Descreve lista de parâmetros", { "flag" => true })
   end

  # Executa o script
  def main(args, _unparsed_args)
    if args["ri"]
      ri
    end
    if args["rimen"]
      rimen
    end
    if args["revisao"]
      revisao
    end
    if args["reuniao"]
      reuniao
    end
    if args["robo"]
      robo
    end
    if args["sql"]
      sql
    end
    if args["pasta"]
      pasta
    end
    if args["bi"]
      bi
    end
    if args["testlink"]
      testlink
    end
    if args["wiki"]
      wiki
    end
    if args["ponto"]
      ponto
    end
    if args["forum"]
      forum
    end
    if args["json"]
      json
    end
    if args["kill"]
      kill
    end
    if args["rob"]
      rob
    end
    if args["start"]
      start
    end
    if args["help"]
      help
    end
    puts "Executando comando selecionado..."
    # puts "args: #{args}"
    # puts "unparsed_args: #{unparsed_args}"
  end

  def ri
    system('call CriaRNSRIMENSAG.bat')
  end

  def rimen
    Exec.run('start chrome "http://intranet/mapaerro/#/rimensag/revisao?area=P"')
  end

  def revisao
    Exec.run('F:\RIL\md10\Codigos.sql')
  end

  def reuniao
    Exec.run('start chrome "https://meet.jit.si/SalaEquipeTeste"')
  end

  def robo
    # puts 'Digite a sigla de robô'
    # sigla = gets.chomp.to_s
    # if args["ROBOGIN"]
    system('call ROBO.bat GER API')

    # end
    # if args2["WMS"]
    # system("call ROBO.bat GER WMS")
    # end
  end

  def sql
    system('call SQLDEVELOPER.bat')
  end

  def pasta
    Exec.run('ex O:\GPD\Edson')
  end

  def bi
    Exec.run('start chrome "https://app.powerbi.com/view?r=eyJrIjoiYmY5YWE2OWUtMTU3ZC00YzM4LTk4OTItNjM3YzEwMjkxM2UzIiwidCI6ImQ4NzFmZjI5LTQ1MjQtNDc0Ni04NmRhLTQ1MTdjOTg0MTI3NyJ9"')
  end

  def testlink
    Exec.run('start chrome "http://intranet/testlink/index.php?caller=login&viewer="')
  end

  def wiki
    Exec.run('start chrome "http://intranet/wiki/index.php/Equipe_de_Testes"')
  end

  def ponto
    Exec.run('start chrome "http://192.168.255.131:8080/pontosoft/login/auth"')
  end

  def forum
    Exec.run('start chrome "http://intranet/forum/"')
  end

  def kill
    system('call taskkill /f /t /im javaw.exe /fi "WINDOWTITLE eq SIGER*"')
  end

  def rob
    system('call O:\\GPD\\Edson\\GitHub\\Bats\\caminhorob.bat')
  end

  def start
    #system('call O:\\GPD\\Edson\\GitHub\\Bats\\robostart.bat')
    system('dir')
  end

  def json
    system('call ruby O:\\GPD\\Edson\\GitHub\\Ruby\\json.rb')
  end

  def help
    puts "rimensag          - Abre o painel de RIMENSAG"
    puts "ri                - Abertura de RNS de RIMENSAG"
    puts "revisao           - Abre o SQL da revisão automática"
    puts "reuniao           - Abre a sala de reuniões da equipe de testes"
    puts "robo              - Abre robôs"
    puts "sql               - Abre SQLDEVELOPER"
    puts "past              - Abre pasta do GPD"
    puts "bi                - Abre o PowerBI"
    puts "testlink          - Abre o testlink"
    puts "wiki              - Abre a wiki da Equipe de testes"
    puts "ponto             - Abre o ponto"
    puts "forum             - Abre o fórum"
    puts "json              - Capta o nome das janelas de um arquivo .json"
    puts "kill              - Encerra os processos do SIGER"
    puts "rob               - Direciona para o caminho das bases do robô no C:"
  end

end

Eds.new.run(ARGV)
