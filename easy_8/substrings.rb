def substrings(string)
  substrings = []
  start_index = 0
  end_index = 0

  loop do
    substrings << string[start_index..end_index]
    end_index += 1
    if end_index == string.size
      start_index += 1
      end_index = start_index
    end
    break if start_index == string.size
  end

  substrings
end

def palindromes(string)
  substrings = substrings(string)
  palindromes = substrings.select do |substring|
    substring == substring.reverse && substring.size > 1
  end
  palindromes
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
