def longest_sentence(file)
  text = File.read(file).gsub("\n", ' ')
  sentences = text.split(/\.|\?|!/)
  longest = ''
  length = 0

  sentences.each do |sentence|
    if sentence.split(' ').size > longest.split(' ').size
      longest = sentence
      length = sentence.split(' ').size
    end
  end

  puts "#{length} #{longest}"
end

longest_sentence('Frankenstein.txt')