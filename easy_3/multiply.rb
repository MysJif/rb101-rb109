def multiply(first, second)
  first * second
end

def square(number, power)
  result = number
  (power - 1).times do
    result = multiply(number, result)
  end
  result
end

puts square(5, 5)
puts square(-8, 2)