=begin
Write a method that takes a string with one or more space 
separated words and returns a hash that shows the number of words 
of different sizes.

Words consist of any string of characters that do not include a space.
=end

def word_sizes(string)
  string_length_instances = Hash.new(0)

  string.split(' ').each do |i|
    string_length_instances[i.length] += 1
  end

  string_length_instances
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
