def word_sizes(string)
  word_array = string.gsub(/[^a-z|A-Z| ]/, '').split(' ')

  length_array = word_array.map(&:length)

  test_array = []
  result_hash = {}
  count = 0
  length_array.each do |element|
    unless test_array.include?(element)
      count = length_array.count(element)
      test_array << element
      result_hash.store(element, count)
    end
  end
  result_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}