def word_cap(sentence)
  sentence.split(' ').map(&:capitalize).join(' ')
end

def word_cap2(sentence)
  sentence.downcase.split(' ').each { |word| word[0] = word[0].upcase }.join(' ')
end

puts word_cap2('four score and seven') == 'Four Score And Seven'
puts word_cap2('the javaScript language') == 'The Javascript Language'
puts word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'