def transpose(matrix)
  length = matrix.size
  depth = matrix[0].size
  result = []
  length_count = 0
  depth_count = 0

  loop do
    row = []
    loop do
      row << matrix[length_count][depth_count]
      length_count += 1
      break if length_count >= length
    end
    result << row
    length_count = 0
    depth_count += 1
    break if depth_count >= depth
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]