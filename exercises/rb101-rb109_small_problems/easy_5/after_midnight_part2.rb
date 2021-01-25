
# MIN_PER_HOUR = 60
# MIN_PER_DAY = 1440

# def after_midnight(time)
#   hours = time[0..1].to_i * MIN_PER_HOUR
#   mins = time[3..4].to_i
#   (hours + mins) % MIN_PER_DAY
# end

# def before_midnight(time)
#   (MIN_PER_DAY - after_midnight(time)) % MIN_PER_DAY
# end


#Further exploration:

HOURS_PER_DAY = 24
MIN_PER_HR= 60
SEC_IN_MIN = 60
MIN_PER_DAY = 1440

def after_midnight(time)
  hours, mins = time.split(":").map(&:to_i)
  (hours*60 + mins) % 1440
end

def before_midnight(time)
  hours, mins = time.split(":").map(&:to_i)
  hours = HOURS_PER_DAY - hours - 1
  mins = MIN_PER_HR - mins
  (hours*MIN_PER_HR + mins) % 1440
end


puts after_midnight('23:30') == 1410
puts before_midnight('23:30') == 30
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0