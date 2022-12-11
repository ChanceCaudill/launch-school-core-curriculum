# Convert a signed number to a string without built-in methods like Integer.to_s or String().
def signed_integer_to_string(number)
  new_arr = number.coerce(number)
  new_arr.uniq!
  string = new_arr.join('')
  if number.positive?
    '+' + string
  else
    string
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
