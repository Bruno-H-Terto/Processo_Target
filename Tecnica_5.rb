def inverte(texto)
  texto_invertido = []
  texto.chars.each do |letra|
    texto_invertido.unshift(letra)
  end
  
  texto_invertido.join('')
end



puts 'Digite seu texto: '
texto = gets.chomp()
texto_invertido = texto
texto_invertido = inverte(texto)
puts <<-TEXTO_INVERTIDO
O seu texto originial:
  "#{texto}"
Foi invertido para:
 "#{texto_invertido}"  
TEXTO_INVERTIDO
