def letter_case_count(string)
  cases = { lowercase: string.scan(/[a-z]{1}/).size,
            uppercase: string.scan(/[A-Z]{1}/).size,
            neither: string.scan(/[^a-z|A-Z]{1}/).size
  }
  cases
end

def letter_percentages(string)
  case_count = letter_case_count(string)
  total = case_count.values.inject(:+).to_f
  case_percentages = { lowercase: ((case_count[:lowercase] / total)*100).round(1),
                       uppercase: ((case_count[:uppercase] / total)*100).round(1),
                       neither: ((case_count[:neither] / total)*100).round(1)
  }
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }