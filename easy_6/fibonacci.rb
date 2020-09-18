def find_fibonacci_index_by_length(digit_number)
  counter = 1
  last_num = 0
  current_num = 1
  loop do
    last_num, current_num = current_num, last_num + current_num
    counter += 1
    break if current_num.digits.size >= digit_number
  end
  counter
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847