module Unidades
  DATA = {
    COMPRIMENTO: {
    "1" => { nome: "Quilômetro",  fator: 0.001},
    "2" => { nome: "Metro",       fator: 1.0},
    "3" => { nome: "Centímetros", fator: 100.0},
    "4" => { nome: "Milímetros",  fator: 1000.0}
  },

    MASSA: {
      "5" => {nome: "Quilograma", fator: 1.0},
      "6" => {nome: "Grama",      fator: 1000.0},
      "7" => {nome: "Libra",     fator: 2.20462}
    }

  }
  
  def self.listar_todas
    DATA.each do |categoria, unidades|
      puts "\n--- #{categoria.upcase}---"
      unidades.each { |id, info| puts "[#{id}] #{info[:nome]}"}
    end
  end

  def self.buscar_unidade(id)
    DATA.each do |_, unidades|
      return unidades[id] if unidades[id]
    end
    nil
  end

  def self.converter(valor, id_de, id_para)
    unidade_de    = buscar_unidade(id_de)
    unidade_para  = buscar_unidade(id_para)

    valor_base = valor / unidade_de[:fator]
    valor_base * unidade_para[:fator]
  end
end