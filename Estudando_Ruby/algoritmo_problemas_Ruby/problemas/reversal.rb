def reverse(arr, start, finish)
  while start < finish
    arr[start], arr[finish] = arr[finish], arr[start]
    start += 1
    finish -= 1
  end
end

def reverse_right(arr, k)
  n = arr.length
  k = k % n # Garantir que k seja menor que n

  # Reserter todo o array
  reverse(arr, 0, n - 1)

  # Reverter os primeiros k elementos
  reverse(arr, 0, k - 1)

  # Reverter os elementos restantes
  reverse(arr, k, n - 1)
end

# Exemplos de uso
arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k1 = 3
rotate_right(arr1, k1)
puts "Array rotacionado: #{arr1.join(', ')}"

arr2 = [121, 232, 33, 43, 5]
k2 = 2
rotate_right(arr2, k2)
puts "Array rotacionado: #{arr2.join(', ')}"
