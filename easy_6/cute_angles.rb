CONVERT = 60
DEGREE = "\xC2\xB0"

def reduce_degree(degree_input)
  if degree_input > 360
    degree_input = degree_input - (360 * (degree_input / 360))
  elsif degree_input < 0
    degree_input += (360 * (degree_input.abs / 360 + 1))
  end
  degree_input
end

def convert_degree(degree_input)
  degree_input = reduce_degree(degree_input)
  degree_array = degree_input.to_f.to_s.split('.')
  minute = ".#{degree_array.pop}".to_f
  minute *= CONVERT
  minute_array = minute.to_s.split('.')
  degree_array << minute_array.shift
  second = ".#{minute_array.pop}".to_f
  second *= CONVERT
  degree_array << second.round
  degree_array
end

def dms(degree_input)
  degree_array = convert_degree(degree_input)

  degree = degree_array[0]
  minute = sprintf("%02d", degree_array[1].to_i)
  second = sprintf("%02d", degree_array[2].to_i)

  "#{degree}#{DEGREE}#{minute}'#{second}\""
end

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")