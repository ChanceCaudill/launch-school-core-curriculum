# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the substring 
# begins. This means that all substrings that start at position 0 should come 
# first, then all substrings that start at position 1, and so on. Since 
# multiple substrings will occur at each position, the substrings at a 
# given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the 
# previous exercise:
def substrings(string)
  new_array = []
  start_value = 0
  

  loop do
    counter = 1

    loop do
      new_array << string[start_value, counter]
      counter += 1
      break if counter > string.length
    end

    start_value += 1
    break if start_value == string.length
  end

  new_array.uniq!
end


# Examples:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

