profissoes = ["maquinista", "alquimista", "frentista", "dentista", "ginecologista", "dentista"]
# total_dentistas = profissoes.select { |profissao| profissao == "dentista" }.length
total_dentistas = profissoes.count { |profissao| profissao == "dentista" }
puts "existem #{total_dentistas} dentistas na lista de profissões"
