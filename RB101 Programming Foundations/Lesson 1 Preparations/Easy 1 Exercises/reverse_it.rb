# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.
def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

=begin
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.
=end
def reverse_words(string)
  arr = string.split(' ')
  arr.map! do |i|
    i.length >= 5 ? i.reverse : i
  end
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS