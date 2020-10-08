def triangle?(tri)
  if tri[0] <= 0 || tri[0] + tri[1] < tri[2]
    false
  else
    true
  end
end

def triangle(side_one, side_two, side_three)
  tri = [side_one, side_two, side_three].sort

  case
  when !triangle?(tri)
    :invalid
  when tri[0] == tri[1] && tri[1] == tri[2]
    :equilateral
  when tri[0] == tri[1] || tri[1] == tri[2]
    :isosceles
  else
    :scalene
  end
end


puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid