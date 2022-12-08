# frozen_string_literal: true

# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the 6th
# number appears amongst the first 5 numbers.

def num_end_in(num)
  four_and_five = %w[4 5]
  if num.to_s == '1'
    num.to_s + 'st'
  elsif num.to_s == '2'
    num.to_s + 'nd'
  elsif num.to_s == '3'
    num.to_s + 'rd'
  elsif four_and_five.include?(num.to_s)
    num.to_s + 'th'
  end
end

def ask_for_number(iterator)
  round = num_end_in(iterator).to_s
  puts "Enter the #{round} number:"
end

def display_result(array, sixth_number)
  if array.include?(sixth_number)
    p "The number #{sixth_number} appears in #{array}."
  else
    p "The number #{sixth_number} does not appear in #{array}."
  end
end

numbers = []
iterator = 1
loop do
  ask_for_number(iterator)
  number = gets.chomp.to_i

  numbers.push(number)

  iterator += 1
  break if numbers.length == 5
end

puts 'Enter the last number:'
last_number = gets.chomp.to_i

display_result(numbers, last_number)
