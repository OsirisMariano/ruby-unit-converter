# 1. Setup inicial

loop_ativo = true
historico = [] # Nossa "memória" começa vazia

puts "=== Conversor V4 (com histórico) ==="

while loop_ativo
  #2. Coleta de dados
  print "\nDigite o valor em metros: "
  metros = gets.chomp.to_f

  puts "1. Centímetros | 2. Milímetros | 3. Quiômetros | 4. Polegadas"
  print "Escolha a opção: "
  opcao = gets.chomp.to_i

  #3. Processamento e Definição de variáveis auxiliares
  unidade = ""
  valor_convertido = 0

  case opcao
  when 1
    unidade = "cm"
    valor_convertido = metros * 100
  when 2
    unidade = "mm"
    valor_convertido = metros * 1000
  when 3
    unidade = "km"
    valor_convertido = metros / 1000.0
  when 4
    unidade = "in"
    valor_convertido = (metros * 39.37).round(2)
  else
    puts " Opção inválida. Nada será salvo no histórico."
    next # Pula para o próximo ciclo de loop sem salvar
  end

  # 4. Exibição e Armazenamento (A parte nova!)
  resultado = "#{metros}m equivale a #{valor_convertido}#{unidade}"
  puts "Resultado: #{resultado}"

  # O comando '<< coloca o texto dentro da lista'
  historico << resultado

  # 5. Controle de saída
  print "\nDeseja fazer outra conversão? (s/n): "
  break if gets.chomp.downcase != 's' #Uma forma mais curta de sair do loop
end

  # 6. Fechamento: Exibição do relatório final
puts "\n" + "="*30
puts "RESUMO DAS ATIVIDADES"
if historico.empty?
  puts "Nenhuma conversão realizada"
else
  historico.each_with_index do |registro, i|
    puts "#{i +1}. #{registro}"
  end
end
puts "="*30
puts "Obrigado por usar o sistema!"
