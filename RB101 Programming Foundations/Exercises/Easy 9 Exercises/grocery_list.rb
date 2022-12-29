# Write a method which takes a grocery list (array) 
# of fruits with quantities and converts it into an array 
# of the correct number of each fruit.
def buy_fruit(array)
  result = []
  fruit = ''
  quantity = 

  array.each do |arr|
    fruit = arr[0]
    quantity = arr[1]

    quantity.times { |_| result << fruit }
  end
  result
end

# Example:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]