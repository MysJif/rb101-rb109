def multiply_all_pairs(array_one, array_two)
  array_one.product(array_two).map { |pair| pair[0] * pair[1] }.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]