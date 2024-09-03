require 'json'

json_data = '{
  "faturamento_diario_30_dias": [1000, 1500, 0, 1200, 700, 0, 0,
                        2000, 1200, 1100, 1300, 1400, 0, 0,
                        1600, 1500, 1400, 400, 1200, 0, 0,
                        2300, 0, 1200, 3400, 720, 0, 0,
                        780, 450, 1900, 840, 600, 0, 0,
                        4100, 2100, 300, 700, 900, 0, 0,
                        780, 200]
}'


dados = JSON.parse(json_data)
faturamento_mes = dados['faturamento_diario_30_dias']


faturamento_acima_de_zero = faturamento_mes.reject { |valor_dia| valor_dia == 0 }


menor_faturamento = faturamento_acima_de_zero.min
maior_faturamento = faturamento_acima_de_zero.max


media_faturamento = faturamento_acima_de_zero.sum.to_f / faturamento_acima_de_zero.size


dias_acima_da_media = faturamento_acima_de_zero.count { |faturamento_dia| faturamento_dia > media_faturamento }


puts "Menor valor de faturamento: #{menor_faturamento}"
puts "Maior valor de faturamento: #{maior_faturamento}"
puts "Número de dias com faturamento acima da média: #{dias_acima_da_media}"
