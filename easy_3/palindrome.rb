def palindrome?(string)
  string == string.reverse
end

def array_palindrome?(array)
  string = array.join
  string == string.reverse
end

def real_palindrome?(string)
  fixed_string = string.downcase.gsub(/[^A-Za-z0-9\s]/i, ' ').delete ' '
  palindrome?(fixed_string)
end

def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true