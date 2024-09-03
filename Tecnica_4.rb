faturamento_distribuidora = {SP: 67836.43, RJ: 36678.66, MG: 29229.88, ES: 27165.48, Outros: 19849.53}


faturamento_total = faturamento_distribuidora.values.sum


contribuicoes = faturamento_distribuidora.map{ |estado, valor|
  percentual = (valor / faturamento_total * 100).round(2)
  [estado, percentual]}.to_h

puts <<-FATURAMENTO
  SP corresponde a #{contribuicoes[:SP]}%
  RJ corresponde a #{contribuicoes[:RJ]}%
  MG corresponde a #{contribuicoes[:MG]}%
  ES corresponde a #{contribuicoes[:ES]}%
  Outros corresponde a #{contribuicoes[:Outros]}%
FATURAMENTO
