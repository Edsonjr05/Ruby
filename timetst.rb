require 'CmdLineApp.rb'
require 'CmdLineApp.rb'
require 'System.rb'
require 'CriaRNSRIMENSAG.rb'

# Script pessoal do Edson
class TimeTst < CmdLineApp

  # Configura o script
  def setup
    self.description = "Script de uso do time de testes"
    add_param_opcional("rimen", "Abre o painel de RIMENSAG", { "flag" => true })
    add_param_opcional("reuniao", "Abre a sala de reuniões da equipe de testes", { "flag" => true })
    add_param_opcional("ata", "Abre a ata de reuniões da equipe de testes", { "flag" => true })
    add_param_opcional("robo", "Abre robôs", { "flag" => true })
    add_param_opcional("sql", "Abre SQLDEVELOPER", { "flag" => true })
    add_param_opcional("bi", "Abre o PowerBI", { "flag" => true })
    add_param_opcional("wiki", "Abre a wiki do Time de testes", { "flag" => true })
    add_param_opcional("help", "Descreve lista de parâmetros", { "flag" => true })
  end

  # Executa o script
  def main(args, _unparsed_args)
    if args["rimen"]
      Exec.run('start chrome "http://intranet/mapaerro/#/rimensag/revisao?area=P"')
      return 0
    end
    if args["reuniao"]
      Exec.run('start chrome "https://meet.jit.si/SalaEquipeTeste"')
      return 0
    end
    if args["ata"]
        Exec.run('start chrome "https://docs.google.com/document/d/16bbVCTt2ZxjUsOMUW0sHF3NRv5KmD96iSnpIubhCdGM/edit"')
        return 0
      end
    if args["drive"]
        Exec.run('start chrome "https://drive.google.com/drive/folders/1cgkmfc9h-FREScZ53KVFb9yDvZ7R55dE"')
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
    if args["bi"]
      Exec.run('start chrome "https://app.powerbi.com/view?r=eyJrIjoiNjk4ZTliYWUtZDJkYi00OThkLTk0MjktZGEzZjdjNzhhOTJjIiwidCI6ImQ4NzFmZjI5LTQ1MjQtNDc0Ni04NmRhLTQ1MTdjOTg0MTI3NyJ9"')
      return 0
    end
    if args["wiki"]
      Exec.run('start chrome "http://intranet/wiki/index.php/Equipe_de_Testes"')
      return 0
    end

    if args["help"]
      puts   "rimensag          - Abre o painel de RIMENSAG"
      puts   "reuniao           - Abre a sala de reuniões da equipe de testes"
      puts   "robo              - Abre robôs"
      puts   "sql               - Abre SQLDEVELOPER"
      puts   "bi                - Abre o PowerBI"
      puts   "wiki              - Abre a wiki da Equipe de testes"
      return 0
    end

    # puts "args: #{args}"
    # puts "unparsed_args: #{unparsed_args}"
  end



end

Timetst.new.run(ARGV)
