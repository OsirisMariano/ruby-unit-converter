# --- Documentação do Código ---
# Versão: 2.0: Conversor com Estrutura de Decisção.
# Conceitos: Estrutura condicional (if/elsfi/else), operadores de comparação (==).

puts "=== Conversor Ruby V2.0 ==="
print "Digite o valor em metros: "
metros = gets.chomp.to_f

#Exibindo o Menu de Opções
puts "\nEscolha a unidade para conversão:"
puts "1. Centímetros (cm)"
puts "2. Milímetros (mm)"
puts "3. Quilômetros (km)"
puts "4. Polegadas (in)" # Opção extra para demonstrar o else
print "Digite o número da opção desejada: "
opcao = gets.chomp.to_i # Convertendo a entrada para inteiro

# Estrutura de Decisão para determinar a conversão
if opcao == 1
  resultado = metros * 100
  unidade = "centimetros"
elsif opcao == 2
  resultado = metros * 1000
  unidade = "milimetros"
elsif opcao == 3
  resultado = metros / 1000
  unidade = "quilometros"
elsif opcao == 4
  resultado = metros * 39.37
   unidade = "polegadas"
else
  resultado = nil
  puts "\n[ERRO] Opção inválida! Escolha 1, 2, 3 ou 4."
end

# Exibindo o resultado se a conversão foi realizada
if resultado
  puts "\nResultado: #{metros}m equivale a #{resultado} #{unidade}"
end