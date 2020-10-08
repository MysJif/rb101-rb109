def balanced?(string)
  # Removes every character that is not a parenthetical
  string = string.gsub(/[^\(|\)]/, '')

  # Removes parenthetical pairs until none remain
  loop do
    string = string.gsub("()", '')
    break unless string.include?("()")
  end

  # Tests if the resulting string is empty
  if string == ''
    true
  else
    false
  end
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false