def featured?(num)
  if num % 7 == 0
    num_arr = num.to_s.chars
    if num_arr.uniq == num_arr
      if num.odd?
        true
      else
        false
      end
    else
      false
    end
  else
    false
  end
end

def featured(num)
  loop do
    num += 1
    if featured?(num)
      return num
    end
    break if num >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements