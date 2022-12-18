# Write a method that takes an Array as an argument, 
# and reverses its elements in place; that is, mutate 
# the Array passed into this method. The return value 
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.
def reverse!(array)
  iteration = 0
  num_times = array.size
  reverse_array = []

  loop do
    if array.empty?
      break
    end
    value = array.pop
    reverse_array << value
    iteration += 1
    break if iteration >= num_times
  end

  array.replace(reverse_array)
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

puts list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

puts list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true