def get_grade(grade_one, grade_two, grade_three)
  avg = (grade_one + grade_two + grade_three) / 3

  case avg
  when 100.. then 'A+'
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(100, 105, 100) == 'A+'