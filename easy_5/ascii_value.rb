def ascii_value(string)
  character_array = string.split('')
  sum = 0
  character_array.each {|character| sum += character.ord}
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0