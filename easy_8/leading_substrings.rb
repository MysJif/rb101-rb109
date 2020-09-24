def leading_substrings(string)
  substrings = []
  index = 0

  loop do
    substrings << string[0..index]
    index += 1
    break if index == string.size
  end

  substrings
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
