def reverse!(array)
  reversed_array = []
  array.each { |element| reversed_array.unshift(element)}

  counter = 0
  loop do
    break if counter == array.size
    array[counter] = reversed_array[counter]
    counter += 1
  end

  array
end

def reverse(array)
  reversed_array = []
  array.each { |element| reversed_array.unshift(element)}
  reversed_array
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]     