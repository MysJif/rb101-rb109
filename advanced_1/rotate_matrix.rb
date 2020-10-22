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

def rotate(matrix, degree)
  count = degree / 90
  count.times do
    matrix = transpose(matrix)
    matrix = matrix.map do |row|
      row.reverse
    end
  end
  matrix
end

matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

p rotate(matrix, 90) == [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
p rotate(matrix, 180) == [[9, 8, 7], [6, 5, 4], [3, 2, 1]]
p rotate(matrix, 270) == [[3, 6, 9], [2, 5, 8], [1, 4, 7]]
p rotate(matrix, 360) == matrix