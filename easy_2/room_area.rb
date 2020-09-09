SQFEET_TO_INCHES = 144
SQFEET_TO_SQCM = 929.03

def convert_inches(area)
  area * SQFEET_TO_INCHES
end

def convert_cm(area)
  area * SQFEET_TO_SQCM
end

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f

puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f

f_area = (length * width).round(2)
i_area = convert_inches(f_area).round(2)
c_area = convert_cm(f_area).round(2)

puts "The area of the room is #{f_area} square feet (#{i_area} square inches, #{c_area} square centimeters)."
