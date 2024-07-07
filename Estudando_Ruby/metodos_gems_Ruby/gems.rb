# Gens são bibliotecas pre-definidos
# Podemos importar funções, classes, variáveis, etc

# para instalar uma gem?
# digite no terminal: gem install (nome da gem)

# chamar a biblioteca
require 'os'

# Irtemos codar um progrma qwe retyorna algumas configuraçõedo nosso computador
# definir o metodo
def meu_SO
  if OS.windows?
    "Sistema Operacional: Windows"
  elsif OS.linux?
    "Sistema Operacional: Linux"
  elsif OS.mac?
    "Sistema Operacional: MacOS"
  else
    "Não identifiqwei o Sistema Operacional"
  end
end
puts "Meu PC é #{OS.bits} bits, possui #{OS.cpu_count} cores e o sistema operacional é #{meu_SO}"
