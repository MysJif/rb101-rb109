def average(nums)
  nums.sum.to_f / nums.size.to_f
end

puts average([1, 6])# integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])