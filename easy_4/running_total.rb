def running_total(numbers)
  sum = 0
  sum_array = []
  numbers.each do |num|
    sum += num
    sum_array << sum
  end
  sum_array
end

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []
