def integer_to_string(integer)
  integer_array = integer.digits.reverse
  string_array = integer_array.map do |digit|
    case digit
    when 0
      '0'
    when 1
      '1'
    when 2
      '2'
    when 3
      '3'
    when 4
      '4'
    when 5
      '5'
    when 6
      '6'
    when 7
      '7'
    when 8
      '8'
    when 9
      '9'
    end
  end

  result = ''
  string_array.each {|char| result << char}
  result
end

def signed_integer_to_string(integer)
  if integer.negative?
    sign = '-'
  elsif integer.positive?
    sign = '+'
  else
    sign = ''
  end

  sign + integer_to_string(integer.abs)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'