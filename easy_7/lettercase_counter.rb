def letter_case_count(string)
  cases = { lowercase: string.scan(/[a-z]{1}/).size,
            uppercase: string.scan(/[A-Z]{1}/).size,
            neither: string.scan(/[^a-z|A-Z]{1}/).size
  }
  cases
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }