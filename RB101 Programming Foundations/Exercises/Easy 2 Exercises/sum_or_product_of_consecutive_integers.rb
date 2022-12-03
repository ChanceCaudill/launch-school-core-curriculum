=begin
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to 
determine the sum or product of all numbers between 1 and the entered integer.
=end
puts ">> Enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
s_or_p = gets.chomp.downcase

if s_or_p == 's'
  sum = (1..number).to_a.sum
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif s_or_p == 'p'
  product = (1..number).inject(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  "Error: Please enter 's' or 'p'."
end