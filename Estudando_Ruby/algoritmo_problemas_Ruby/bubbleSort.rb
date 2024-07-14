def bubble_sort(arr)
  n = arr.length
  # Imagem que cada par de elementos é um casal dançando
  (n - 1).times do |i|
    (n - i - 1).times do |i|
      if arr[i] > arr[i + 1]
        # Troca os elementos se estiverem fora de ordem
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        puts "Troca: #{arr[j]} e #{arr[j + 1]} (Dança Csongé!)"
      else
        puts "Sem troca: #{arr[j]} e #{arr[j + 1]} (Dança tranquila)"
      end
    end
    # Estado do array após cada passada
    puts "Array após a #{i + 1}ª passada: #{arr.inspect}"
  end
  arr
end

# Teste do algoritmo
arr = [5, 3, 8, 4, 2]
puts "Array original: #{arr.inspect}"
sorted_arr = bubble_sort(arr)
puts "Array ordenado: #{sorted_arr.inspect}"
