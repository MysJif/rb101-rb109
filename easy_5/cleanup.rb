ALPHABET = ('a'..'z').to_a

def cleanup(string)
  string.gsub(/\W+/, ' ').gsub(/ +/, ' ')
end

def cleanup2(string)
  string_array = string.split('')
  result_array = string_array.map do |char|
    if ALPHABET.include?(char)
      char
    else
      ' '
    end
  end
  result_array.join('').squeeze(' ')
end


puts cleanup2("---what's my +*& line?") == ' what s my line '