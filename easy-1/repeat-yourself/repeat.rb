def repeat(word='Hello', count=3)
  loop do
    break if count <= 0
    puts word
    count -= 1
  end
end

repeat('Hello', 3)
repeat('AAAAA', 7)
repeat(5)
repeat('Yes')
repeat(-1)
repeat('Yes', -5)