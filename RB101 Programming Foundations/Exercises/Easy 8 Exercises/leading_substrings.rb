# Leading Substrings
# Write a method that returns a list of all 
# substrings of a string that start at the beginning 
# of the original string. The return value should be 
# arranged in order from shortest to longest substring.
def leading_substrings(string)
  new_array = []
  counter = 1

  loop do
    new_array << string[0, counter]
    counter += 1
    break if counter > string.length
  end

  new_array
end

# Examples:
puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']