def crunch(string)
  character_array = string.split('')
  saved_char = ''
  result = character_array.map do |character|
    unless character == saved_char
      saved_char = character
      character
    end
  end
  result.join('')
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
