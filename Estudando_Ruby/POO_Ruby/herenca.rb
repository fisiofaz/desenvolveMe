# Exemplos Animais

class Animal
  def dormir
    puts "zzzzzzzz"
  end

  def pular
    "tóin, tóin"
  end
end

class gato < Animal
  def miar
    'miau'
  end
end

gato = Gato.new

