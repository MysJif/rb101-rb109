def penultimate(sentence)
  sentence.split(' ')[-2]
end

def penultimate2(sentence)
  sentence.split(' ')[sentence.split(' ').size / 2]
end

puts penultimate2('last word is a not this one')
puts penultimate2('Launch School is a great!')