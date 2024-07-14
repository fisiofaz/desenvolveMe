def count_character_types(input_string)
  uppercase_count = input_string.count('A-Z')
  lowercase_count = input_string.count('a-z')
  number_count = input_string.count('0-9')
  special_count = input_string.count('^A-Za-z0-9')

  {
    uppercase: uppercase_count,
    lowercase: lowercase_count,
    number: number_count,
    special: special_count
  }
end

# Exemplo de uso:
input1 = "#GeeKs01fOr@gEEks07"
counts1 = count_character_types(input1)
puts "Letras maiúsculas: #{counts1[:uppercase]}"
puts "Letras minúsculas: #{counts1[:lowercase]}"
puts "Números: #{counts1[:numbers]}"
puts "Caracteres especiais: #{counts1[:special]}"

input2 = "*GeEkS4GeEkS*"
counts2 = count_character_types(input2)
puts "Letras maiúsculas: #{counts2[:uppercase]}"
puts "Letras minúsculas: #{counts2[:lowercase]}"
puts "Números: #{counts2[:numbers]}"
puts "Caracteres especiais: #{counts2[:special]}"
