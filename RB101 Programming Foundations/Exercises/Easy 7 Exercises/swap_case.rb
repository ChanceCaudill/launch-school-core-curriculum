# Write a method that takes a string as an argument and
# returns a new string in which every uppercase letter 
# is replaced by its lowercase version, and every lowercase 
# letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.
def swapcase(string)
  swap_string = ""
  string.each_char do |char|
    if char.downcase == char 
      swap_string << char.upcase
    else
      swap_string <<char.downcase
    end
  end
  swap_string
end

# Examples
puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'