# Write a method that takes an Array as an argument, 
# and returns two Arrays (as a pair of nested Arrays) 
# that contain the first half and second half of the 
# original Array, respectively. If the original array 
# contains an odd number of elements, the middle element 
# should be placed in the first half Array.
def halvsies(array)
  full_arr = []
  nested_arr1 = []
  nested_arr2 = []

  case
  when array.length == 0
    full_arr << nested_arr1 << nested_arr2
  when array.length == 1
    nested_arr1 = array
    full_arr << nested_arr1 << nested_arr2
  when array.length.odd?
    nested_arr1 = array[0..(array.length / 2)]
    nested_arr2 = array[((array.length / 2) + 1)..(array.length - 1)]
    full_arr << nested_arr1 << nested_arr2
  when array.length.even?
    nested_arr1 = array[0..((array.length / 2) - 1)]
    nested_arr2 = array[(array.length / 2)..(array.length - 1)]
    full_arr << nested_arr1 << nested_arr2
  end
end

# Examples
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]