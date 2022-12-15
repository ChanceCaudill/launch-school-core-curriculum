# frozen_string_literal: true

# As seen in the previous exercise, the time of day can be 
# represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, 
# and return the number of minutes before and after midnight, 
# respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

MIDNIGHT = 1440

def after_midnight(string)
  minutes = str_to_minutes(string)
  minutes_after = (minutes + MIDNIGHT) - MIDNIGHT

  if minutes == 1440
    return 0
  else
    return minutes_after
  end
end

def before_midnight(string)
  minutes = str_to_minutes(string)
  minutes_before = MIDNIGHT - minutes

  if minutes_before == 1440
    return 0
  else
    return minutes_before
  end
end

def str_to_minutes(string)
  hours = string[0, 2].to_i
  minutes = string[3, 2].to_i
  total_minutes = minutes + (hours * 60)
  
  total_minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
