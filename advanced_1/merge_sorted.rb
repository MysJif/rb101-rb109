def merge(array_1, array_2)
  size_1 = array_1.size
  size_2 = array_2.size
  active_count = 0
  result_count = 0
  result = []
  active = []

  if size_1 == 0
    return array_2
  elsif size_2 == 0
    return array_1
  end

  if size_1 > size_2
    result = array_1
    active = array_2
  else
    result = array_2
    active = array_1
  end

  loop do
    if active[active_count] > result[result_count]
      result_count += 1
    else
      result.insert(result_count, active[active_count])
      active_count += 1
      result_count = 0
    end
    break if active_count == active.size || result_count == result.size
  end
  if result.size < size_1 + size_2
    result << active.last
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]