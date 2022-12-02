=begin
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.
=end
def stringy(num, start='1')
  str = ''
  if start == '1'
    str.ljust(num, '10')
  elsif start == '0'
    str.ljust(num, '01')
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, start='0') == '010101'
puts stringy(9, start='0') == '010101010'
puts stringy(4, start='0') == '0101'
puts stringy(7, start='0') == '0101010'