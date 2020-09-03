def digit_list(number)
  str_num = number.to_s
  arr_num = str_num.split("")
  result = []
  arr_num.each {|num| result << num.to_i}
  result
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
