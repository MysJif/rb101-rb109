def xor?(first, second)
  if first && second
    false
  elsif first || second
    true
  else
    false
  end
end

puts xor?(true, false)
puts xor?(true, true)
puts xor?(false, false)