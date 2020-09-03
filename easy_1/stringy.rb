def stringy(number, start=1)
  res = ""
  number.times do
    if start == 1
      res << "1"
      start -= 1
    else
      res << "0"
      start += 1
    end
  end
  res
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'