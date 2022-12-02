# Write a method that counts the number of occurrences of each element in a given array. 
# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}
  array.each do |i|
    occurrences[i] = array.count(i)
  end
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)