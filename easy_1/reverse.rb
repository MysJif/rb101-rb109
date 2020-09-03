def reverse_sentence(string)
  string_arr = string.split(" ")
  string_rev = []
  string_arr.each { |word| string_rev.unshift(word)}
  string_rev.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'