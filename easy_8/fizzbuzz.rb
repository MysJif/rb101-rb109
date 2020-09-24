def fizzbuzz(first_num, second_num)
  counter = first_num
  
  loop do
    case
    when counter % 3 == 0 && counter % 5 == 0
      print 'FizzBuzz, '
    when counter % 3 == 0
      print 'Fizz, '
    when counter % 5 == 0
      print 'Buzz, '
    else
      print "#{counter}, "
    end
    counter += 1
    break if counter == second_num + 1
  end
  puts ''
end

fizzbuzz(1, 15)
