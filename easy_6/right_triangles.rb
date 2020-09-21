def triangle(size)
  counter = size
  size.times do
    print (" " * (size - counter))
    puts ("*" * counter)
    counter -= 1
  end
end

triangle(9)