def buy_fruit(list)
  result = []
  list.each do |fruit|
    fruit[1].to_i.times do
      result << fruit[0]
    end
  end
  result
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]