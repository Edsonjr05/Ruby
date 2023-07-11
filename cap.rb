require 'Colorize.rb'
require 'CmdLineApp.rb'

# Classe Cap para encontrar a capital da UF informada
class Cap < CmdLineApp

  # Criamos um array de Hash que contém os dados das capitais
  CAPITAL = [{ uf: "AC", estado: "Acre", capital: "Rio Branco" },
             { uf: "AL", estado: "Alagoas", capital: "Maceió" },
             { uf: "AP", estado: "Amapá", capital: "Macapá" },
             { uf: "AM", estado: "Amazonas", capital: "Manaus" },
             { uf: "BA", estado: "Bahia", capital: "Salvador" },
             { uf: "CE", estado: "Ceará", capital: "Fortaleza" },
             { uf: "DF", estado: "Distrito Federal", capital: "Brasília" },
             { uf: "ES", estado: "Espírito Santo", capital: "Vitória" },
             { uf: "GO", estado: "Goiás", capital: "Goiânia" },
             { uf: "MA", estado: "Maranhão", capital: "São Luís" },
             { uf: "MT", estado: "Mato Grosso", capital:	"Cuiabá" },
             { uf: "MS", estado: "Mato Grosso do Sul", capital: "Campo Grande" },
             { uf: "MG", estado: "Minas Gerais", capital: "Belo Horizonte" },
             { uf: "PA", estado: "Pará", capital: "Belém" },
             { uf: "PB", estado: "Paraíba", capital: "João Pessoa" },
             { uf: "PR", estado: "Paraná", capital:	"Curitiba" },
             { uf: "PE", estado: "Pernambuco", capital: "Recife" },
             { uf: "PI", estado: "Piauí", capital: "Teresina" },
             { uf: "RJ", estado: "Rio de Janeiro", capital: "Rio de Janeiro" },
             { uf: "RN", estado: "Rio Grande do Norte", capital: "Natal" },
             { uf: "RS", estado: "Rio Grande do Sul", capital:	"Porto Alegre" },
             { uf: "RO", estado: "Rondônia", capital: "Porto Velho" },
             { uf: "RR", estado: "Roraima", capital: "Boa Vista" },
             { uf: "SC", estado: "Santa Catarina", capital: "Florianópolis" },
             { uf: "SP", estado: "São Paulo", capital: "São Paulo" },
             { uf: "SE", estado: "Sergipe", capital: "Aracaju" },
             { uf: "TO", estado: "Tocantins", capital: "Palmas" }].freeze

  # Efetua a gravação do log na pasta C:\TMP\
  def grava_log(estado, capital)
    arquivo_log = Arquivo.new('C:\TMP\Caplog.txt')
    arquivo_log.append(" #{Time.now} #{ENV['USERNAME']} #{ENV['COMPUTERNAME']} Comando: #{ARGV} Estado: #{estado} \
Capital: #{capital} \n")
  end

  # Faz a validação da uf aceitando o conteúdo de uf e param_show
  def valida_uf(uf, param_show)
    uf_inexistente = 0
    estado = ''
    capital = ''
    # Percorre o hash para efetuarmos os testes
    (0..CAPITAL.length - 1).each do |i|
      # Testa se os valor de UF tem no hash e se /show está ligado
      if CAPITAL[i][:uf] == uf && param_show == 1
        puts "A capital do estado #{CAPITAL[i][:estado]} é #{CAPITAL[i][:capital]}".cyan
        env('Capital', CAPITAL[i][:capital])
        estado = CAPITAL[i][:estado]
        capital = CAPITAL[i][:capital]
      # Caso não esteja usando o /show testa se existe a UF no ash
      elsif CAPITAL[i][:uf] == uf
        puts "A capital do estado é #{CAPITAL[i][:capital]}".green
        env('Capital', CAPITAL[i][:capital])
        estado = CAPITAL[i][:estado]
        capital = CAPITAL[i][:capital]
      end
      # Caso a UF está dentro do Hash soma 1 para sabermos que ela é válida
      if CAPITAL[i][:uf] == uf
        uf_inexistente = 1
      end
    end

    # Caso a UF não exista irá escrever em tal
    if uf_inexistente == 0
      puts "A UF #{uf} informada não existe no nosso banco de dados!".on_red
    end

    # Chama o método para gravação dos logs
    grava_log(estado, capital)
  end

  # Descreve os parametros do nosso script
  def setup
    self.description = "Script de exercicio para encontrar a capida de uma UF"
    add_param_opcional("/show", "Parâmetro nomeado", { "flag" => true })
  end

  # Executa o script
  # @param args [Hash] Argumentos parseados
  # @param unparsed_args [Array<String>] Argumentos não parseados
  def main(args, unparsed_args)
    param_show = 0
    # Testa se o show está ligado
    if args["/show"]
      param_show = 1
    end
    # Grava dentro da UF o unparsed_args maiúsculo
    uf = unparsed_args[0].upcase
    # Chama o método valida_uf passando a UF e o param_show
    valida_uf(uf, param_show)
  end

end

Cap.new.run(ARGV)
