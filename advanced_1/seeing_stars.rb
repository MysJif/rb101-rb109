def star(n)
  space_count = n / 2 - 1
  pad_count = 0

  loop do
    space = ' '*space_count
    pad = ' '*pad_count

    puts "#{pad}*#{space}*#{space}*"

    space_count -= 1
    pad_count += 1
    break if space_count == 0
  end

  center = '***'.center(n)
  puts center
  puts '*'*n
  puts center

  loop do
    space_count += 1
    pad_count -= 1

    space = ' '*space_count
    pad = ' '*pad_count

    puts "#{pad}*#{space}*#{space}*"

    break if pad_count == 0
  end
end

star(21)