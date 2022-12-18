# Write a method that takes an Array, and returns a 
# new Array with the elements of the original list in 
# reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, 
# nor may you use the method you wrote in the previous exercise.
def reverse(array)
  new_array = []
  reverse_counter = -1
  loop do 
    value = array[reverse_counter]
    new_array << value unless (value == nil)
    reverse_counter -= 1
    break if value == nil
  end
  new_array
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true