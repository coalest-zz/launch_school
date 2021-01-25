def time_of_day(min_after_mid)
  hours, minutes = min_after_mid.divmod(60)
  hours %= 24
  hours = sprintf("%02d", hours)
  minutes = sprintf("%02d", minutes)
  "#{hours}:#{minutes}"
end

# Refactoring my solution based on LS's solution
HOURS_PER_DAY = 24
MIN_PER_HOUR = 60

def time_of_day(min_after_mid)
  hours, minutes = min_after_mid.divmod(MIN_PER_HOUR)
  hours %= HOURS_PER_DAY
  format("%02d:%02d", hours, minutes)
end

# Expected output (all trues)
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

#PEDAC
# input is an integer
# positive numbers go up starting at 00:00
# negative numbers go down from 24:00
# when postitive numbers are greater than 1440 they start back at 00:00
# when negative numbers are below -1440 they start back at 24:00
# output is a string
# example conversions:
# 60 => 01:00
# 150 => 02:30

#Solution:
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

#Further exploration:
# delta_minutes is the number of minuts before or after midnight
# between saturday or sunday
# aka time_of_day(30) == Sunday 00:30 

SEC_IN_MIN = 60
def time_of_day(delta_minutes)
  # 3*24*60*60 puts us at a random day in time right between sat and sun at mid
  start_time = Time.at(3*24*60*60)
  after_time = start_time + delta_minutes*SEC_IN_MIN
  after_time.strftime("%A %H:%M")
end

puts time_of_day(-4231) == "Thursday 01:29"