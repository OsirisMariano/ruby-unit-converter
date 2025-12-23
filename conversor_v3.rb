## --- Projeto 365: Task Dia 03 --- 
## Responsável: Osiris Mariano
# Descrição: Implementação de controle de fluxo com While


loop_ativo = true
puts "=== Sistema de Conversão Profissional ==="

while loop_ativo
  # --- Início da Lógica de Conversão ---
  print "\nDigite o valor em metros: "
  metros = gets.chomp.to_f

  puts "1. Centímetros | 2. Milímetros | 3. Quilômetros | 4. Polegadas"
  print "Escolha a opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1 then puts "#{metros}m = #{metros * 100}cm"
  when 2 then puts "#{metros}m = #{metros * 1000}mm"
  when 3 then puts "#{metros}m = #{metros / 1000.0}km"
  when 4 then puts "#{metros}m = #{(metros * 39.37).round(2)}in"
  end

  # --- Fim da Lógica de Conversão ---


  # Verificação de continuidade
  print "\nDeseja realizar outra operação? (s/n): "
  resposta = gets.chomp.downcase

  if resposta != 's'
    loop_ativo = false
    puts "Encerrando o sistema... Até logo!"
  end
end 
