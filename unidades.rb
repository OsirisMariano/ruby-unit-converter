module Unidades
  DATA = {
    comprimento: {
      "1" => { nome: "Quilômetro", fator: 0.001 },
      "2" => { nome: "Metro",      fator: 1.0 },
      "3" => { nome: "Centímetro", fator: 100.0 },
      "4" => { nome: "Milímetro",  fator: 1000.0 }
    },
    massa: {
      "5" => { nome: "Quilograma", fator: 1.0 },
      "6" => { nome: "Grama",      fator: 1000.0 },
      "7" => { nome: "Libra",      fator: 2.20462 }
    },
    temperatura: {
      "8" => { nome: "Celsius",    fator: 1.0 },
      "9" => { 
        nome: "Fahrenheit", 
        para_base: ->(v) { (v - 32) / 1.8 },
        da_base:   ->(v) { (v * 1.8) + 32 }
      },
      "10" => { 
        nome: "Kelvin",     
        para_base: ->(v) { v - 273.15 },
        da_base:   ->(v) { v + 273.15 }
      }
    }
  }

  def self.listar_todas
    DATA.each do |categoria, unidades|
      puts "\n\e[1m--- #{categoria.upcase} ---\e[0m"
      unidades.each { |id, info| puts "[#{id}] #{info[:nome]}" }
    end
  end

  def self.buscar_unidade(id)
    DATA.each do |_, unidades|
      return unidades[id] if unidades[id]
    end
    nil
  end

  def self.converter(valor, id_de, id_para)
    u_de = buscar_unidade(id_de)
    u_para = buscar_unidade(id_para)

    # 1. Converte a origem para a unidade BASE (Metro, Kg ou Celsius)
    valor_base = if u_de[:para_base]
                   u_de[:para_base].call(valor)
                 else
                   valor / u_de[:fator]
                 end

    # 2. Converte da unidade BASE para o destino final
    if u_para[:da_base]
      u_para[:da_base].call(valor_base)
    else
      valor_base * u_para[:fator]
    end
  end
end