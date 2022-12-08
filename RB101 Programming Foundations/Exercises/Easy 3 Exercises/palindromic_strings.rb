# frozen_string_literal: true

# Write a method that returns true if the string passed as
# an argument is a palindrome, false otherwise. A palindrome
# reads the same forward and backward. For this exercise,
# case matters as does punctuation and spaces.
def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

def real_palindrome?(string)
  string = string.downcase.gsub("'", '').gsub(',', '').gsub(' ', '')
  palindrome?(string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
