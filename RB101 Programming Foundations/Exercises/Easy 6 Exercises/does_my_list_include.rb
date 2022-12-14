# Write a method named include? that takes an Array 
# and a search value as arguments. This method should 
# return true if the search value is in the array, false 
# if it is not. You may not use the Array#include? method in your solution.
def include?(array, item)
  counter = 0

  loop do
    if array.empty?
      return false
    elsif array[counter] == item
      return true
    end

    counter += 1
    break if counter >= array.size
  end
  false
end

# Examples
puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false