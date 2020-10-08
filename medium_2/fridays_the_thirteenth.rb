require 'date'

DAY = 13

def friday_13th(year)
  month = 1
  fridays = 0
  loop do
    if Date.new(year, month, DAY).friday?
      fridays += 1
    end
    month += 1
    break if month >= 13
  end
  fridays
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
puts friday_13th(2020)