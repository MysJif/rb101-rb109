MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60
MIDNIGHT = 0

def time_of_day(minutes)
  negative = minutes.negative?
  minutes = minutes.abs
  if minutes > MINUTES_PER_DAY
    minutes -= (MINUTES_PER_DAY * (minutes / MINUTES_PER_DAY))
  end

  if negative
    minutes = MINUTES_PER_DAY - minutes
  end
  
  hours = (minutes / MINUTES_PER_HOUR).to_s.rjust(2, '0')
  minutes = (minutes % MINUTES_PER_HOUR).to_s.rjust(2, '0')

  "#{hours}:#{minutes}"
end

def after_midnight(time)
  time = time.split(':')
  minutes = ((time[0].to_i*MINUTES_PER_HOUR) + time[1].to_i)
  minutes == MINUTES_PER_DAY ? MIDNIGHT : minutes
end

def before_midnight(time)
  minutes = after_midnight(time)
  minutes = MINUTES_PER_DAY - minutes
  minutes == MINUTES_PER_DAY ? MIDNIGHT : minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
