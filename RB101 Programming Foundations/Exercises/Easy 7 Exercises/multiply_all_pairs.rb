# Write a method that takes two Array arguments in 
# which each Array contains a list of numbers, and 
# returns a new Array that contains the product of every 
# pair of numbers that can be formed between the elements 
# of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.
def multiply_all_pairs(arr1, arr2)
  new_arr = []

  arr1.each do |elem1|
    arr2.each do |elem2|
      new_arr << elem1 * elem2
    end
  end

  new_arr.sort
end

# Example
puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]