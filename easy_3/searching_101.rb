number_array = []

puts "==> Enter the 1st number:"
number_array << gets.to_i

puts "==> Enter the 2nd number:"
number_array << gets.to_i

puts "==> Enter the 3rd number:"
number_array << gets.to_i

puts "==> Enter the 4th number:"
number_array << gets.to_i

puts "==> Enter the 5th number:"
number_array << gets.to_i

puts "==> Enter the last number:"
last_number = gets.to_i

if number_array.include? last_number
  puts "The number #{last_number} appears in #{number_array}."
else
  puts "The number #{last_number} does not appear in #{number_array}."
end