require_relative 'unidades'

def limpar_tela
  system('clear') || system('cls') 
end

loop do 
  limpar_tela
  puts "\e[36m" + "="*45 + "\e[0m"
  puts "\e[1;36m CONVERSOR ULTIMATE - VERSÃO 6.0\e[0m"
  puts "\e[36m" + "="*45 + "\e[0m"

  # Listamos as opções do módulo automaticamente
  Unidades::COMPRIMENTO.each {| id, info | puts "#{id} #{info[:nome]}" }
  print "\nSelecione a unidade de ORIGEM: "
  de = gets.chomp

  break if de == "0"

  print "Selecione a unidade de DESTINO: "
  para = gets.chomp

  print "Valor a converter: "
  valor = gets.chomp.to_f

  # Validação e Processamento
  if Unidades::COMPRIMENTO[de] && Unidades::COMPRIMENTO[para]
    resultado = Unidades.converter(valor, de, para)

    # UX: Resultado com cores e destaque
    puts "\n" + "="*45
    puts "\e[32m #{valor} #{Unidades::COMPRIMENTO[de][:nome]}(s) é igual a:\e[0m"
    puts "\e[1;32m => #{format('%.2f', resultado)} #{Unidades::COMPRIMENTO[para][:nome]}(s)\e[0m"
    puts "="*45
  else
    puts "\e[31m Opção inválida!\e[0m"
  end

  print "\nPressione ENTER para continuar..."
  gets
end