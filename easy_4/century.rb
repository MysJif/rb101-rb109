def century(year)
  if year % 100 > 0
    century = year.to_s[0..-3].to_i + 1
  else
    century = year.to_s[0..-3].to_i
  end

  if (11..19).cover?(century % 100) || century % 10 == 0 || (4..9).cover?(century % 10)
    suffix = 'th'
  elsif century % 10 == 1
    suffix = 'st'
  elsif century % 10 == 2
    suffix = 'nd'
  else
    suffix = 'rd'
  end

  century.to_s + suffix
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'