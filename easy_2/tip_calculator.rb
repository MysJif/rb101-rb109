def calculate_tip(bill, tip)
  bill * (tip/100)
end

print 'What is the bill? '
bill = gets.chomp.to_f

print 'What is the tip percentage? '
tip_rate = gets.chomp.to_f

tip = calculate_tip(bill, tip_rate).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", total)}"