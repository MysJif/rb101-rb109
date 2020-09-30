def init_lights(number_of_lights)
  lights = []
  count = 1
  number_of_lights.times do
    lights << [count, false]
    count += 1
  end
  lights
end

def toggle_lights!(lights)
  count = 1
  loop do
    lights.map! do |light|
      if light[0] % count == 0
        [light[0], !light[1]]
      else
        [light[0], light[1]]
      end
    end
    count += 1
    break if count == (lights.size + 1)
  end
  lights
end

def select_lights(lights)
  lights.select do |light|
    light[1]
  end
end

def lights(number_of_lights)
  lights = init_lights(number_of_lights)
  toggle_lights!(lights)
  lights = select_lights(lights)
  lights.flatten.delete_if { |element| element == true }
end

p lights(1000)