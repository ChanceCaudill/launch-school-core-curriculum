# Write a method that takes an Array of numbers and 
# then returns the sum of the sums of each leading 
# subsequence for that Array. You may assume that the 
# Array always contains at least one number.
def sum_of_sums(array)
  new_array = []
  sum = 0

  array.each do |num|
    new_array << num
    sum += new_array.sum
  end

  sum
end

# Examples:
puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35