def sucessor(numero)
  return numero + 1
end

def assert_equal(numero, resultado)
  if sucessor(numero) == resultado
    puts "Teste ok, número=#{numero}, resultado esperado=#{resultado}"
  else
    puts "Teste NÃO OK! número=#{numero}, resultado esperado=#{resultado}, resultado obtido=#{sucessor(numero)}"
  end
end

assert_equal(100, 101)
assert_equal(0, 1)
assert_equal(-8, -7)
assert_equal(10000000, 10000001)
