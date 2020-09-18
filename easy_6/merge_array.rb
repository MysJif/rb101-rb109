def merge(first_array, second_array)
  first_array.concat(second_array).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]