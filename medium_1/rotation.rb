def rotate_array(array)
  result = []
  array.each { |element| result << element }
  result << result.shift
end

def rotate_string(string)
  rotate_array(string.split('')).join('')
end

def rotate_integer(number)
  rotate_array(number.to_s.split('')).join('').to_i
end

def rotate_rightmost_digits(number, count)
  (number.to_s[0..-(count+1)] + rotate_string(number.to_s[-count..-1])).to_i
end

def max_rotation(number)
  count = number.to_s.size
  loop do
    number = rotate_rightmost_digits(number, count)
    count -= 1
    break if count == 0
  end
  number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845