def missing_characters_for_pangram(input_string)
  # Define o alfabeto
  alphabet = ('a'..'z').to_a

  # Convertendo a string para letras minúsculas e removendo caracteres que não são letras
  input_string = input_string.downcase.gsub(/[^a-z]/, '')

  # Encontrando os caracteres presentes na string
  present_characters = input_string.chars.uniq

  # Encontrando os caracteres ausentes
  missing_characters = alphabet - present_characters

  # Ordenando os caracteres ausentes e convertendo para uma string
  missing_characters.sort.join
end

# Testando a função
input1 = "bem-vindo ao geeksforgeeks"
puts "Caracteres ausentes: #{missing_characters_for_pangram(input1)}"

input2 = "A rápida raposa marrom salta"
puts "Caracteres ausentes: #{missing_characters_for_pangram(input2)}"
