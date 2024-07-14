def find_top_three_elements(arr)
  # Inicializa as variáveis para armazenar os três maiores elementos
  first = second = third = -Float::INFINITY

  arr.each do |num|
    if num > first
      third = second
      second = first
      first = num
    elsif num > second
      third = second
      second = num
    elsif num > third
      third = num
    end
  end

  # Retorna os três maiores elementos
  [first, second, third]
end

# Exemplo de uso:
arr1 = [10, 4, 3, 50, 23, 90]
top_three1 = find_top_three_elements(arr1)
puts "Os três maiores elementos são: #{top_three1.join(', ')}"

arr2 = [6, 8, 1, 9, 2, 1, 10, 10]
top_three2 = find_top_three_elements(arr2)
puts "Os três maiores elementos são: #{top_three2.join(', ')}"
