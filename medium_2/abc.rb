def init_blocks
  block = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
           ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
           ['V', 'I'], ['L', 'Y'], ['Z', 'M']
          ]
end

def block_word?(word)
  letters = word.split('')
  blocks = init_blocks

  letters.each do |letter|
    deleted = false
    blocks.each do |block|
      if block.include?(letter.upcase)
        blocks.delete(block)
        deleted = true
        break
      end
    end
    unless deleted
      return false
    end
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true