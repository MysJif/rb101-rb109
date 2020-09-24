def sum_of_sums(array)
  index = 0
  total = 0

  loop do
    total += array[0..index].reduce(:+)
    index += 1
    break if index == array.size
  end

  total
end

#tests
puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35