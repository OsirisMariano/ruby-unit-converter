require_relative 'unidades'

def limpar_tela
  system('clear') || system('cls') 
end

def ler_numero
  loop do
    entrada = gets.chomp
    
    if entrada =~ /^-?\d+\.?\d*$/
      return entrada.to_f
    else
      print "\e[31mPor favor, digite um número válido: \e[0m"
    end
  end
end

loop do
  limpar_tela
  puts "\e[36m" + "="*45 + "\e[0m"
  puts"\e[1;36m CONVERSOR ULTIMATE - VERSÃO 7.0\e[0m"
  puts "\e[36m" + "="*45 + "\e[0m"

  Unidades.listar_todas
  puts "\n[0] Sair"

  print "\nSelecione a unidade de ORIGEM: "
  id_de = gets.chomp
  break if id_de == "0"

  print "Selecione a unidade de DESTINO: "
  id_para = gets.chomp

  unidade_origem  = Unidades.buscar_unidade(id_de)
  unidade_destino = Unidades.buscar_unidade(id_para)

  if unidade_origem && unidade_destino
    print "Valor em #{unidade_origem[:nome]}(s): "
    valor = ler_numero

    resultado = Unidades.converter(valor, id_de, id_para)
    puts "\n[32m" + "-"*45
    puts "=> #{format('%.2f', resultado)} #{unidade_destino[:nome]}(s)"
    puts "-"*45 + "\e[0m"
  else
    puts "\e[31m\n[Erro] Uma ou ambas as opções são inválidas! \e[0m"
  end

  print "\nPressione ENTER para continuar..."
  gets
end
