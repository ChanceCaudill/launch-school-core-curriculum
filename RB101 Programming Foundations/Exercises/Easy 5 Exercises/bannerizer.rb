# Write a method that will take a short line of text, and print it within a box.
def print_in_box(string)
  num_dashes = "-" * (string.length + 2)
  num_spaces = " " * (string.length + 2)

  puts "+#{num_dashes}+"
  puts "|#{num_spaces}|"
  puts "| #{string} |"
  puts "|#{num_spaces}|"
  puts "+#{num_dashes}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')