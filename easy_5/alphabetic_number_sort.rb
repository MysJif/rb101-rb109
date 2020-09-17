NUMBER_WORDS = %W(zero one two three four five 
                  six seven eight nine ten eleven 
                  twelve thirteen fourteen fifteen 
                  sixteen seventeen eighteen nineteen twenty)

def alphabetic_number_sort(integer_array)
  integer_array.sort { |number, number2| NUMBER_WORDS[number] <=> NUMBER_WORDS[number2]}
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]