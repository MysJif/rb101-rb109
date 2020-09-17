def print_in_box(string)

  if string.length > 76
    string = string[0..(string.length - 76)]
  end

  line = "--"
  space = "  "
  dash_line = "+#{line.center(string.length+2).gsub(/ {1}/, '-')}+"
  space_line = "|#{space.center(string.length+2)}|"
  text_line = "| #{string} |"

  puts dash_line
  puts space_line
  puts text_line
  puts space_line
  puts dash_line
end

print_in_box('123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789')