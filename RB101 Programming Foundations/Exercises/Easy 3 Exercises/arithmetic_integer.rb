# frozen_string_literal: true

# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input.

def arithmetic_operations(num1, num2)
  puts "#{num1} + #{num2} = #{num1 + num2}"
  puts "#{num1} - #{num2} = #{num1 - num2}"
  puts "#{num1} * #{num2} = #{num1 * num2}"
  puts "#{num1} / #{num2} = #{num1 / num2}"
  puts "#{num1} % #{num2} = #{num1 % num2}"
  puts "#{num1} ** #{num2} = #{num1**num2}"
end

puts 'Enter the first number:'
first_number = gets.chomp.to_i

puts 'Enter the second number:'
second_number = gets.chomp.to_i

arithmetic_operations(first_number, second_number)
