# Write a method that takes two Array arguments in 
# which each Array contains a list of numbers, and 
# returns a new Array that contains the product of each 
# pair of numbers from the arguments that have the same 
# index. You may assume that the arguments contain the same number of elements.
def multiply_list(arr1, arr2)
  new_arr = []
  counter = 0

  loop do
    new_arr << (arr1[counter] * arr2[counter])

    counter += 1

    break if counter == arr1.size
  end

  new_arr
end

# Example
puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]