def string_to_integer(string)
  string_array = string.split('')
  int_array = []

  string_array.each do |character|
    case character
    when '0'
      int_array << 0
    when '1'
      int_array << 1
    when '2'
      int_array << 2
    when '3'
      int_array << 3
    when '4'
      int_array << 4
    when '5'
      int_array << 5
    when '6'
      int_array << 6
    when '7'
      int_array << 7
    when '8'
      int_array << 8
    when '9'
      int_array << 9
    else
      next
    end
  end
  int_array.inject { |total, num| total * 10 + num }
end

def string_to_signed_integer(string)
  string_array = string.split('')
  sign = 1
  first_char = string_array.shift
  if first_char == '-'
    sign = -1
  elsif first_char == '+'
    sign = 1
  else
    string_array.unshift(first_char)
  end

  string_to_integer(string) * sign
end

def hexadecimal_to_integer(hex)
  hex_array = hex.split('')
  hex_int_array = []

  hex_array.each do |char|
    case char.downcase
    when '0'
      hex_int_array << 0
    when '1'
      hex_int_array << 1
    when '2'
      hex_int_array << 2
    when '3'
      hex_int_array << 3
    when '4'
      hex_int_array << 4
    when '5'
      hex_int_array << 5
    when '6'
      hex_int_array << 6
    when '7'
      hex_int_array << 7
    when '8'
      hex_int_array << 8
    when '9'
      hex_int_array << 9
    when 'a'
      hex_int_array << 10
    when 'b'
      hex_int_array << 11
    when 'c'
      hex_int_array << 12
    when 'd'
      hex_int_array << 13
    when 'e'
      hex_int_array << 14
    when 'f'
      hex_int_array << 15
    else
      next
    end
  end
  hex_int_array.reverse!
  power = 0
  sum = 0
  hex_int_array.each do |dec|
    sum += dec * (16**power)
    power += 1
  end
  sum
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100