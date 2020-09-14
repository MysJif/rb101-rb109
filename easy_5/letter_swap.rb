def swap(string)
  string_array = string.split(' ')
  result = string_array.map do |word|
    word_array = word.split('')
    first = word_array.shift
    last = word_array.pop
    new_word = word_array.unshift(last).push(first).join
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'