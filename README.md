# 🔄 Unit Converter - Ruby Fundamentals

Um conversor de unidades robusto e escalável desenvolvido em **Ruby**. Este projeto faz parte da jornada *365 Days of Code*, aplicando conceitos de lógica de programação, funções anônimas e manipulação de fluxos de dados via CLI.

## 🚀 Funcionalidades

O sistema permite a conversão precisa entre diversas grandezas:
* **Comprimento:** Quilômetros, Metros, Centímetros e Milímetros.
* **Massa:** Quilogramas, Gramas e Libras.
* **Temperatura:** Cálculos dinâmicos entre Celsius, Fahrenheit e Kelvin.

## 🛠️ Diferenciais Técnicos

Diferente de conversores baseados apenas em fatores fixos, este projeto utiliza uma arquitetura flexível para lidar com conversões não-lineares:

* **Lógica de Lambdas (Procs):** Implementação de fórmulas matemáticas complexas para o cálculo de temperaturas (Celsius/Fahrenheit/Kelvin), onde o simples uso de um fator multiplicativo não é suficiente.
* **Arquitetura Desacoplada:** Separação clara entre a base de dados de unidades (`unidades.rb`) e a interface de interação com o usuário (`main.rb`).
* **Validação de Entrada:** Tratamento de erros via Regex para garantir que apenas valores numéricos válidos (incluindo negativos para temperatura) sejam processados.

## 🏁 Como Executar

Certifique-se de ter o **Ruby** instalado em seu ambiente.

1. Clone o repositório:
   ```bash
   git clone [https://github.com/OsirisMariano/ruby-unit-converter.git](https://github.com/OsirisMariano/ruby-unit-converter.git)
