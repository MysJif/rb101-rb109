def age(name="Teddy")
  puts "Enter name >"
  name = gets.chomp
  puts "#{name} is #{rand(20..200)} years old!"
end

age()