def reverse_words(string)
  words = string.split(" ")
  result = []
  words.each do |word|
    if word.length >= 5
      result.push(word.split("").reverse.join)
    else
      result.push(word)
    end
  end
  result.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
