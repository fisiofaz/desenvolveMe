# Bloco Simples
6.times {puts {"Execute esse bloco"}}

# Bloco que recebe parametros
sum = 0
numbers = [2, 4, 6]
numbers.each { |num| sum += num }
puts {"Soma dos numeros: #{sum}"}

# Bloco de multiplas linhas
hash = {2 => 3, 4 => 5}

hash.each do |key, value|
  puts  "key = #{key}"
  puts  "value = #{value}"
  puts "key * value = #{key * value}"
  puts "---"
end

# Criamos um método que revebe um bloco como parâmetros
def teste
  # chmando o bloco
  yield #palavra reservada, comando para executar um bloco como parametro
end
teste {puts "Execute o bloco"}

# E se o bloco for  opcional
# Ruby tem um método chmado block_given? para
#verificar se um bloco foi passado como argumento
def teste
  if block_given?
    # chmando o bloco
    yield
  else
    puts "Nenhum bloco fornecido"
  end
end
teste
teste {puts "Com parâmetros do tipo bloco"}

# Bloco com paramentro utiliza o simbolo &
def teste(name, &block)
  @name = name
  block.call
end
teste("João") {puts "Olá, #{@name}!"}

# Bloco com varias linhas de parametros
def teste(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = {2 => 2, 3 => 3, 4 => 4}

teste(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end
