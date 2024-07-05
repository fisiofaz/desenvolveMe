# usuario vai entrar com mês de nascimento
# analisar diversos casos
# permitir que o usuário entre com esse dado

puts 'Digite seu mês de nascimento: '
mes = gets.chomp.to_i

# definir os casos
case mes
when 1..3 #..intervalo
  puts 'Você nasceu no verão'
when 4..6
  puts 'Você nasceu no otono'
when 7..9
  puts 'Você nasceu no inverno'
when 10..12
  puts 'Você nasceu no primavera'
else
  puts 'O valor digitado é invalido'
end
