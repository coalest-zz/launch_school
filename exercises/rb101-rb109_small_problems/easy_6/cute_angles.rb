DEGREE = "\xC2\xB0"
MINS_IN_DEGREE = 60
SECS_IN_MIN = 60

def dms(num)
  num = num % 360
  degrees = num.to_i
  mins = (num - degrees).round(5) * MINS_IN_DEGREE  
  mins_int = mins.to_i
  secs = (mins - mins_int).round(5) * SECS_IN_MIN

  p %(#{degrees}#{DEGREE}#{format("%02d'%02d", mins,secs)}\")
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")