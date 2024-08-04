# criar uma lista de objetos com a mersma função

class Objeto
  def escrever
    puts "Escrevendo..."
  end
end

class Lapis < Objeto
  def escrever
    puts "Escrevendo à lapis..."
  end
end

class Caneta < Objeto
  def escrever
    puts "Escrevendo à caneta..."
  end
end

class Teclado < Objeto

end

lapis = Lapis.new
caneta = Caneta.new
teclado = Teclado.new

puts 'Lápis:'
  lapis.escrever
puts 'Caneta:'
  caneta.escrever
puts 'Teclado:'
  teclado.escrever
