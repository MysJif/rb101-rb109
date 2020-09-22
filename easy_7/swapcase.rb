def swapcase(string)
  string.split('').map do |character|
    if character.match?(/[a-z]/)
      character.upcase
    elsif character.match?(/[A-Z]/)
      character.downcase
    else
      character
    end
  end.join('')
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'