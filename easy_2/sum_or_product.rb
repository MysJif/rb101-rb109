def more_than_zero?(number)
  number.to_i > 0
end

def valid_choice?(choice)
  choice.downcase.start_with?('s') || choice.downcase.start_with?('p')
end

def calculate_sum(number)
  (1..number).inject { |sum, num| sum + num}
end

def calculate_product(number)
  (1..number).inject { |product, num| product * num}
end

number = nil
choice = nil

loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.to_i

  break if more_than_zero?(number)
  puts ">> Please enter a valid integer."
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp

  break if valid_choice?(choice)
  puts ">> Please enter a valid choice"
end

if choice.start_with?('s')
  puts "The sum of the integers between 1 and #{number} is #{calculate_sum(number)}."
else
  puts "The product of the integers between 1 and #{number} is #{calculate_product(number)}."
end
