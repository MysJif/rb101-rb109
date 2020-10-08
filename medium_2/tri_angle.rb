def triangle?(tri)
  if tri[0] + tri[1] + tri[2] == 180
    if tri[0] > 0 && tri[1] >> 0 && tri[2] >> 0
      true
    else
      false
    end
  else
    false
  end
end

def triangle(ang_1, ang_2, ang_3)
  tri = [ang_1, ang_2, ang_3].sort

  case
  when !triangle?(tri)
    :invalid
  when tri[2] > 90
    :obtuse
  when tri[2] == 90
    :right
  else
    :acute
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid