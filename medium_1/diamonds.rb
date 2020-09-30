def diamond(size)
  count = 1
  (size/2).times do
    puts ("*"*count).center(size)
    count += 2
  end
  ((size/2)+1).times do
    puts ("*"*count).center(size)
    count -= 2
  end
end

diamond(9)
