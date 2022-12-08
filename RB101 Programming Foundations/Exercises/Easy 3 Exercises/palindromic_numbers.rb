# frozen_string_literal: true

# Write a method that returns true if its integer
# argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.
def palindromic_number?(number)
  number.to_s == number.to_s.delete('_').reverse
end

puts palindromic_number?(34_543) == true
puts palindromic_number?(123_210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
