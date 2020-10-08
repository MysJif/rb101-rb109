def bubble_sort!(array)
  counter = 0
  changed = false

  loop do
    if array[counter] > array[counter + 1]
      array[counter], array[counter + 1] = array[counter + 1], array[counter]
      changed = true
    end
    counter += 1
    if (counter + 1) == array.size
      break unless changed
      counter = 0
      changed = false
    end
  end

  array
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)