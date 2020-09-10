print "Please write a word or multiple words: "
answer = gets.chomp
spaceless = answer.delete ' '
puts "There are #{spaceless.length} characters in \"#{answer}\"."