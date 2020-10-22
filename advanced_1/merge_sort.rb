def merge(array_1, array_2)
  index = 0
  result = []

  array_1.each do |value|
    while index < array_2.size && array_2[index] <= value
      result << array_2[index]
      index += 1
    end
    result << value
  end
  result.concat(array_2[index..-1])
end

def merge_sort(array)
  return array if array.size == 1
  array_1 = merge_sort(array[0..(array.size/2 - 1)])
  array_2 = merge_sort(array[(array.size/2)..-1])
  merge(array_1, array_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]