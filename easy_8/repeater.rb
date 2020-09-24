def repeater(string)
  string.chars.map { |char| char *= 2}.join('')
end

def double_consonants(string)
  string.chars.map do |char|
    if char.downcase.match?(/[a-d|f-h|j-n|p-t|v-z]/)
      char *= 2
    else
      char
    end
  end.join('')
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
