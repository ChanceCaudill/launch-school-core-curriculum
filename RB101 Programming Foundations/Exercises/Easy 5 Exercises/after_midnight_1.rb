# frozen_string_literal: true

# The time of day can be represented as the number of minutes 
# before or after midnight. If the number of minutes is positive, 
# the time is after midnight. If the number of minutes is negative, 
# the time is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). Your method 
# should work with any integer input.

# You may not use ruby's Date and Time classes.
MIDNIGHT = 1440

def time_of_day(minutes)
  minutes_within_24_hours = multiple_day_reduction(minutes)
  difference = MIDNIGHT - minutes_within_24_hours.abs
  sum = MIDNIGHT + minutes_within_24_hours
  
  if minutes_within_24_hours.positive?
    return clock_format(sum - MIDNIGHT)
  else
    return clock_format(difference)
  end
end

def clock_format(minutes)
  hours = minutes / 60
  minutes = minutes % 60
  
  if hours == 24 && minutes == 0
    return "00:00"
  elsif hours < 10 && minutes < 10
    return "0#{hours}:0#{minutes}"
  elsif hours < 10 && minutes >= 10
    return "0#{hours}:#{minutes}"
  elsif hours >= 10 && minutes < 10
    return "#{hours}:0#{minutes}"
  elsif hours >= 10 && minutes >= 10
    return "#{hours}:#{minutes}"
  end
end

def multiple_day_reduction(minutes)
  absolute_value = minutes.abs
  loop do 
    absolute_value > MIDNIGHT ? (absolute_value -= MIDNIGHT) : (absolute_value)
    break if absolute_value <= MIDNIGHT
  end
  
  if minutes.positive?
    return absolute_value
  else
    return -absolute_value
  end

end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
