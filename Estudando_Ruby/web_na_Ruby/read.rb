puts '**Minha listade Compras**'

file = File.open('lista.txt')

file.each_line do |line|
  puts line
end

