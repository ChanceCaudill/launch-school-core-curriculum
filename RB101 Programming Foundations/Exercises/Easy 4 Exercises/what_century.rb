# frozen_string_literal: true

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century
# number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01.
# So, the years 1901-2000 comprise the 20th century.
def century(year)
  century_count = 1
  quotient = year.to_f / 100
  remainder = year % 100

  if year <= 0
    return "Error: Enter a valid year."
  elsif year <= 100
    century_count
  elsif year > 100 && remainder.zero?
    century_count = century_count * quotient.to_i
  elsif year > 100 && (remainder != 0)
    century_count = century_count * (quotient.to_i + 1)
  end
  
  end_in(century_count)
end

def end_in(number)
  remainder_10 = number % 10
  remainder_100 = number % 100

  if remainder_10 == 1 && remainder_100 != 11
    "#{number}st"
  elsif remainder_10 == 2 && remainder_100 != 12
    "#{number}nd"
  elsif remainder_10 == 3 && remainder_100 != 13
    "#{number}rd"
  else
    "#{number}th"
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'