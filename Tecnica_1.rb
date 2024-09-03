INDICE = 13

def incrimentoK(k, soma)
  soma += k
  if k < INDICE
    k += 1
    soma = incrimentoK(k, soma)
  end
  soma
end

soma = 0
k = 0
soma = incrimentoK(k, soma)
puts("O valor de soma é #{soma}")


