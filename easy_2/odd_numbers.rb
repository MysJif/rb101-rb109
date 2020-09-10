# (1..99).each do |num|
#   if num % 2 != 0
#     puts num
#   end
# end

(1..99).each {|num| puts num if num.odd?}