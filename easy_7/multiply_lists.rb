def multiply_list(array_one, array_two)
  array_one.map.with_index do |number, index|
    number * array_two[index]
  end
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
