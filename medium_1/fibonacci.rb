def fibonacci(digit)
  digit < 2 ? digit : fibonacci(digit-1) + fibonacci(digit-2)
end

def fibonacci_procedural(digit)
  last_digit = 0
  current_digit = 1

  (digit-1).times do
    last_digit, current_digit = current_digit, last_digit + current_digit
  end
  current_digit
end

def fibonacci_last(digit)
  number = fibonacci_procedural(digit)
  number.to_s.chars.last
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4
