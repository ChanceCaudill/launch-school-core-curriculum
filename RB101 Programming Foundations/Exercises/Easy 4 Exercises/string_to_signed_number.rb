# frozen_string_literal: trure

# Convert a string to a signed number

def string_to_signed_integer(string)
  digit_hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}
  total = 0
  num_array = string.split("").reverse

  if num_array[-1] == '-' || num_array[-1] == '+'
    num_array.pop
  end

  num_array.length.times do |i|
    num_value = digit_hash[num_array[i]]
    num_value_base_ten = num_value * (10**i)
    total += num_value_base_ten
  end

  if string.start_with?('-')
    return -total
  else
    return total
  end
 end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
