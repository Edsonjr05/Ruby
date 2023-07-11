numbers = [1, 2, 3, 4, 5]
numbers_maior3 = numbers.select { |number| number > 3 }
puts numbers_maior3.inspect
puts numbers.inspect
