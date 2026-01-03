module Unidades
  # Nossa tabela de verdade: Tudo em relação ao METRO
  COMPRIMENTO = {
    "1" => { nome: "Quilômetro",  fator: 0.001},
    "2" => { nome: "Metro",       fator: 1.0},
    "3" => { nome: "Centímetros", fator: 100.0},
    "4" => { nome: "Milímetros",  fator: 1000.0}
  }

  def self.converter(valor, de_id, para_id)
    # 1. Converter a origem para a base (Metro)
    valor_em_metros = valor / COMPRIMENTO[de_id][:fator]

    # 2. Converte da base para o destino final
    resultado = valor_em_metros * COMPRIMENTO[para_id][:fator]

    return resultado
  end
end