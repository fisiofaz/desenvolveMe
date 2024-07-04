# Analise um dia da semama
# Se esse dia da semana for domigo
# Imprima que o nosso almoço será especial

dia_da_semana = 'feriado'

if dia_da_semana == 'Domingo'
  almoco = 'especial'
elsif dia_da_semana == 'feriado'
  almoco = 'mais tarde'
else
  almoco = 'normal'
end

puts "Nosso almoço será #{almoco}."
