VOWELS = %w(a e i o u)

def remove_vowels(word_array)
  word_array.map do |word|
    string_array = word.split('')
    characters = string_array.reject do |character|
      VOWELS.include?(character.downcase)
    end
    characters.join('')
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']