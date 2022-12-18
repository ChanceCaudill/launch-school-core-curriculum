# Write a method that takes a floating point number 
# that represents an angle between 0 and 360 degrees 
# and returns a String that represents that angle in 
# degrees, minutes and seconds. You should use a degree 
# symbol (°) to represent degrees, a single quote (') 
# to represent minutes, and a double quote (") to 
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
DEGREE = "\xC2\xB0"
SINGLE_QUOTE = "'"
DOUBLE_QUOTE = '"'

def dms(degrees)
  minutes = degrees_to_minutes(degrees)
  seconds = degrees_to_seconds(degrees)

  return %(#{degrees.to_i}#{DEGREE}#{minutes}#{SINGLE_QUOTE}#{seconds}#{DOUBLE_QUOTE})
end

def decimal_value(degrees)
  degrees_int = degrees.to_i 
  (degrees - degrees_int).round(6)
end

def degrees_to_minutes(degrees)
  minutes_float = decimal_value(degrees) * 60
  minutes_int = minutes_float.to_i

  if minutes_int == 0
    '00'
  elsif minutes_int < 10
    "0#{minutes_int}"
  else
    "#{minutes_int}"
  end
end

def degrees_to_seconds(degrees)
  seconds_float = (decimal_value(degrees) * 60) * 60
  seconds_int = seconds_float.to_i % 60

  if seconds_int == 0
    '00'
  elsif seconds_int < 10
    "0#{seconds_int}"
  else
    "#{seconds_int}"
  end
end

# Main problem examples
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")