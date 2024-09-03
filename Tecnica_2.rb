def seqFibonacci(numero)
  anterior = 0
  proximo = 1

  while proximo < numero
    auxiliar = proximo
    proximo = anterior + proximo
    anterior = auxiliar
  end


  return true if numero == proximo || numero == 0

  false
end

puts('Informe um número da sequência de Fibonacci:')
numero = gets.to_i

if seqFibonacci(numero)
  puts("O número #{numero} pertence à sequência.")
else
  puts("O número #{numero} não pertence à sequência.")
end
