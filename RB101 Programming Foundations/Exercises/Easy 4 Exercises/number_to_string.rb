# Convert a number to a string without built-in methods like Integer.to_s or String().
def integer_to_string(number)
  new_arr = number.coerce(number)
  new_arr.uniq!
  string = new_arr.join('')
  string
end


puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
