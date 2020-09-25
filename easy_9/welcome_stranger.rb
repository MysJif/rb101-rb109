def greetings(name_array, title_hash)
  puts "=> Hello, #{name_array.join(' ')}! Nice to have a #{title_hash[:title]} #{title_hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
