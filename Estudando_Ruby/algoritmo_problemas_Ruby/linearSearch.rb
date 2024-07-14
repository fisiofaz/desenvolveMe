def busca_linear_flamence(lista, valor)
  lista.each_with_index do |item, index|
    puts "Batida de palma" # ação de verificação
    if item == valor
      puts "Batida final! Elemento encontrado!" # clímax da dança
      return index
    else index
      puts "Sapateado" # ação de continuar procura
    end
  end
  puts "Encerramenrto da dança. Elemento não encontrado!" #fim da dança
  return -1
end

# Teste do algoritmo
lista = [10, 20, 30, 40, 50]
valor_procurado = 30
resultado = busca_linear_flamenco(lista, valor_procurado)
puts "Resultado: Índice #{resultado}"
