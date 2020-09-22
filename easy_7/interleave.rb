def interleave(array_one, array_two)
  index = 0
  result = []
  loop do
    result << array_one[index] << array_two[index]
    index += 1
    break if index == array_one.size
  end
  result
end

def interleave_zip(array_one, array_two)
  array_one.zip(array_two).flatten
end

puts interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']