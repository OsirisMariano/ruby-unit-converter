# Método para exibir o menu retornar a opção do usurário

def exibir_menu
  puts "\n1. Centpimetros | 2. Milímetros | 3. Quilômetros | 4. Polegadas"
  print "Escolha a opção: "
  gets.chomp.to_i
end

# Método que faz apenas a conta e retorna o resultado formatado
def calcular_conversor(metros, opcao)
  case opcao
  when 1 then "#{metros * 100}cm"
  when 2 then "#{metros * 1000}mm"
  when 3 then "#{metros / 1000.0}km"
  when 4 then "#{(metros * 39.37).round(2)}in"
    else nil
  end
end

# Método para exibir o histórico de conversões
def exibir_historico(historico)
  puts "\n--- Histórico de Conversões ---"
  historico.each { |item| puts item }
  puts "-------------------------------"
end

# --- Loop Princiapal ---
historico = []

loop do
  print "\nDigite o valor em metros (ou 'sair' para encerrar): "
  entrada = gets.chomp
  break if entrada.downcase == 'sair'

  metros = entrada.to_f
  opcao = exibir_menu

  resultado = calcular_conversor(metros, opcao)

  if resultado
    item_historico = "#{metros}m equivale a #{resultado}"
    puts "#{item_historico}"
    historico << item_historico
  else
    puts "Opção inválida. Tente novamente."
  end
end

# Exibir o histórico ao encerrar o programa
exibir_historico(historico)
puts "Programa encerrado. Obrigado por usar o conversor!"