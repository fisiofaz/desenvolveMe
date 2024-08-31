# Criar um código que imprima uma frase falando que seu Whatsapp é ....,
# e utilizando exppressões regulares (match) é do tipo (99) 9 9999-9999

def verificar_whatsapp(numero)
  padrao = /\(\d{2}\) \d{5}-\d{4}/
  if numero.match(padrao)
    puts "Seu WhatsApp é #{numero}."
  else
    puts "O número fornecido não é um WhatsApp válido."
  end
end

# Exemplo de uso:
verificar_whatsapp("(99) 99999-9999") # Deve imprimir: Seu WhatsApp é (99) 99999-9999.
verificar_whatsapp("12345") # Deve imprimir: O número fornecido não é um WhatsApp válido.
