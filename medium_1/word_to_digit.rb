NUMS = /zero|one|two|three|four|five|six|seven|eight|nine/i

def is_phone_number?(string)
  string.to_i.to_s == string && string.length == 10
end

def split_spaces(string)
  split_string = []
  string.split(' ').each do |word|
    split_string << word
    split_string << ' '
  end
  split_string
end

def remove_num_spaces(split_string)
  count = 0
  char = ''

  split_string.map do |character|
    if count > 0 && count < split_string.size
      if split_string[(count - 1)].match?(NUMS) && split_string[(count + 1)].match?(NUMS)
        char = ''
      else
        char = character
      end
    else
      char = character
    end
    count += 1
    char
  end
end

def format_phone(string)
  left_index = string.index(/\d{10}/)
  right_index = left_index + 9
  number = string[left_index..right_index]
  number = "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  string.slice!(/\d{10}/)
  string.insert(left_index, number)
end

def word_to_digit(string)
  split_string = remove_num_spaces(split_spaces(string))

  string = split_string.join('')

  string.gsub!(/zero/i, '0')
  string.gsub!(/one/i, '1')
  string.gsub!(/two/i, '2')
  string.gsub!(/three/i, '3')
  string.gsub!(/four/i, '4')
  string.gsub!(/five/i, '5')
  string.gsub!(/six/i, '6')
  string.gsub!(/seven/i, '7')
  string.gsub!(/eight/i, '8')
  string.gsub!(/nine/i, '9')
  string = format_phone(string)
end

puts word_to_digit('Please call me at five five five one two three four five six seven. Thanks.')
