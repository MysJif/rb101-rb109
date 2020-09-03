def count_occurences(list)
  veri = []
  list.each do |element|
    ele = element.downcase
    copy_list = list.select {|copy| copy.downcase == ele}
    if !veri.include?(ele)
      veri << ele
      puts "#{element} => #{copy_list.size}"
    end
  end
end

vehicles = [
  'car', 'CAR', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motoRcycle', 'car', 'truck'
]

count_occurences(vehicles)