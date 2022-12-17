# Given a string that consists of some words (all lowercased)
# and an assortment of non-alphabetic characters, write a method
# that returns that string with all of the non-alphabetic characters
# replaced by spaces. If one or more non-alphabetic characters
# occur in a row, you should only have one space in the result
# (the result should never have consecutive spaces).
def cleanup(lowercase_string)
  alphabetical_only = lowercase_string.gsub!(/[^0-9a-z ]/i, ' ')
  remove_consecutive_spaces(alphabetical_only)
end

def remove_consecutive_spaces(string)
  new_string = String.new
  counter = 0

  while counter < string.length
    if (string[counter] == string[counter + 1]) && string[counter] == ' '
      counter += 1
    else
      new_string << string[counter]
      counter += 1
    end
  end

  new_string
end

puts cleanup("---what's my +*& line?") == ' what s my line '