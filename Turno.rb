require 'Colorize.rb'
require 'CmdLineApp.rb'

# Script para apontar de qual turno é o horário informado
class Turno < CmdLineApp

  # Executa o método escreve_turno para validar o turno informado pelo usuário
  # @param turno [String] validação do turno
  # @param [String]
  def escreve_turno(turno)
    print turno.cyan
    return env('Turno', turno)
  end

  # Configura o script
  def setup
    self.description = "Script de exercicio para encontrar o turno de uma hora inforamda pelo usuário"
  end

  def main(_args, unparsed_args)
    # Conversão do script Turno para ruby
    if unparsed_args.empty?
      print "Digite a hora e minutos que iremos validar (Ex: 15:00): "
      argumento_entrada = STDIN.gets.chomp.to_s
    else
      argumento_entrada = unparsed_args[0].to_s
    end
    hora = argumento_entrada[0..1]
    minuto = argumento_entrada[3..4]
    hora_minuto = hora + minuto

    # Verifica se a hora é valida
    if hora.to_i > 23
      puts "Hora inválida".red
    # Verifica se caso a hora for válida se o minuto é também
    elsif minuto.to_i > 60
      puts "Minuto inválido".red
    else
      # Teste para se enquandrar na manhã
      if hora_minuto.to_i >= 631 && hora_minuto.to_i <= 1200
        turno = "Manhã"
        Turno.new.escreve_turno(turno)
      end
      # Teste para se enquandrar na tardeeeeeee
      if hora_minuto.to_i > 1201 && hora_minuto.to_i <= 1800
        turno = "Tarde"
        Turno.new.escreve_turno(turno)
      end
      # Teste para se enquandrar na noite
      if hora_minuto.to_i > 1801 || hora_minuto.to_i <= 630
        turno = "Noite"
        Turno.new.escreve_turno(turno)
      end
    end
  end
end

Turno.new.run(ARGV)
